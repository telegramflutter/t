part of '../t.dart';

/// Read binary data and advance the position.
class BinaryReader {
  /// Constructs a new binary reader.
  BinaryReader(this.buffer);

  /// Buffer.
  final Uint8List buffer;
  int _position = 0;

  /// Gets the position.
  int get position => _position;

  /// Read Int16.
  int readInt16([bool bigEndian = false]) {
    final b = Uint8List.fromList(buffer.skip(_position).take(2).toList());

    final endian = bigEndian ? Endian.big : Endian.little;
    final x = b.buffer.asByteData().getUint16(0, endian);

    _position += 2;
    return x;
  }

  /// Read Int32.
  int readInt32([bool bigEndian = false]) {
    final b = Uint8List.fromList(buffer.skip(_position).take(4).toList());

    final endian = bigEndian ? Endian.big : Endian.little;
    final x = b.buffer.asByteData().getUint32(0, endian);

    _position += 4;
    return x;
  }

  /// Read Int64.
  int readInt64([bool bigEndian = false]) {
    final b = Uint8List.fromList(buffer.skip(_position).take(8).toList());

    final endian = bigEndian ? Endian.big : Endian.little;
    final x = b.buffer.asByteData().getUint64(0, endian);

    _position += 8;
    return x;
  }

  /// Read Int128.
  Int128 readInt128() {
    final b = Uint8List.fromList(buffer.skip(_position).take(16).toList());

    _position += 16;
    return Int128(b);
  }

  /// Read Int256.
  Int256 readInt256() {
    final b = Uint8List.fromList(buffer.skip(_position).take(32).toList());

    _position += 32;
    return Int256(b);
  }

  /// Read double.
  double readFloat64() {
    final b = Uint8List.fromList(buffer.skip(_position).take(8).toList());
    final x = b.buffer.asFloat64List(0, 1);

    _position += 8;
    return x.first;
  }

  /// Read boolean.
  bool readBool() {
    final b = readInt32();

    if (b == 0x997275B5) {
      return true;
    } else if (b == 0xBC799737) {
      return false;
    }

    throw Exception('Invalid boolean value.');
  }

  /// Read DateTime.
  DateTime readDateTime() {
    final seconds = readInt32();
    final tmp = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);

    return tmp;
  }

  /// Read List<TlObject>.
  List<T> readVectorObject<T extends TlObject>() {
    final ctor = readInt32();
    assert(ctor == _vectorCtor, 'Invalid type.');

    final count = readInt32();
    final items = <T>[];

    for (int i = 0; i < count; i++) {
      items.add(readObject() as T);
    }

    return items;
  }

  /// Read List<int32>.
  List<int> readVectorInt32() {
    final ctor = readInt32();
    assert(ctor == _vectorCtor, 'Invalid type.');

    final count = readInt32();
    final items = <int>[];

    for (int i = 0; i < count; i++) {
      items.add(readInt32());
    }

    return items;
  }

  /// Read List<int64>.
  List<int> readVectorInt64() {
    final ctor = readInt32();
    assert(ctor == _vectorCtor, 'Invalid type.');

    final count = readInt32();
    final items = <int>[];

    for (int i = 0; i < count; i++) {
      items.add(readInt64());
    }

    return items;
  }

  /// Read List<Uint8List>.
  List<Uint8List> readVectorBytes() {
    final ctor = readInt32();
    assert(ctor == _vectorCtor, 'Invalid type.');

    final count = readInt32();
    final items = <Uint8List>[];

    for (int i = 0; i < count; i++) {
      items.add(readBytes());
    }

    return items;
  }

  /// Read List<String>.
  List<String> readVectorString() {
    final ctor = readInt32();
    assert(ctor == _vectorCtor, 'Invalid type.');

    final count = readInt32();
    final items = <String>[];

    for (int i = 0; i < count; i++) {
      items.add(readString());
    }

    return items;
  }

  /// Read Uint8List.
  Uint8List readBytes() {
    var length = buffer[_position++];
    bool add3 = !(length < 254);

    if (length < 254) {
      // NOP
    } else {
      length = readInt16() + (buffer[_position++] << 16);
    }

    final tmp = buffer.skip(_position).take(length).toList();
    _position += length;

    if (add3) {
      length += 3;
    }

    while (++length % 4 != 0) {
      _position++;
    }

    return Uint8List.fromList(tmp);
  }

  /// Read raw Uint8List.
  Uint8List readRawBytes(int length) {
    final b = Uint8List.fromList(buffer.skip(_position).take(length).toList());

    _position += length;
    return b;
  }

  /// Read String.
  String readString() {
    const utf8Decoder = Utf8Decoder(allowMalformed: false);

    final codeUnits = readBytes();
    final tmp = utf8Decoder.convert(codeUnits);
    return tmp;
  }

  /// Read TlObject.
  TlObject readObject() {
    final obj = _readObject(this);
    return obj;
  }
}
