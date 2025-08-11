part of '../t.dart';

extension _BinaryWriter on List<int> {
  void writeInt32(int v) {
    final b = Uint8List(4);
    b.buffer.asUint32List(0, 1)[0] = v;

    addAll(b);
  }

  void writeInt64(int v) {
    final b = Uint8List(8);
    b.buffer.asUint64List(0, 1)[0] = v;

    addAll(b);
  }

  void writeInt128(Int128 v) {
    addAll(v.data);
  }

  void writeInt256(Int256 v) {
    addAll(v.data);
  }

  void writeString(String v) {
    final bytes = utf8.encode(v);

    writeBytes(bytes);
  }

  void writeDouble(double v) {
    final b = Uint8List(8);
    b.buffer.asFloat64List(0, 1)[0] = v;

    addAll(b);
  }

  void writeBytes(Uint8List? bytes) {
    if (bytes == null) {
      add(0);
      return;
    }

    int length = bytes.length;
    if (length < 254) {
      add(length);
    } else {
      writeInt32(length << 8 | 254);
      length += 3;
    }
    addAll(bytes);

    while (++length % 4 != 0) {
      add(0);
    }
  }

  void writeDateTime(DateTime v) {
    final seconds = v.millisecondsSinceEpoch ~/ 1000;
    writeInt32(seconds);
  }

  void writeBool(bool v) {
    writeInt32(v ? 0x997275B5 : 0xBC799737);
  }

  void writeVectorObject<T extends TlObject>(Iterable<T> v) {
    writeInt32(_vectorCtor);
    writeInt32(v.length);

    for (final item in v) {
      writeObject(item);
    }
  }

  void writeVectorInt32(Iterable<int> v) {
    writeInt32(_vectorCtor);
    writeInt32(v.length);

    for (final item in v) {
      writeInt32(item);
    }
  }

  void writeVectorInt64(Iterable<int> v) {
    writeInt32(_vectorCtor);
    writeInt32(v.length);

    for (final item in v) {
      writeInt64(item);
    }
  }

  void writeVectorString(Iterable<String> v) {
    writeInt32(_vectorCtor);
    writeInt32(v.length);

    for (final item in v) {
      writeString(item);
    }
  }

  void writeVectorBytes(Iterable<Uint8List> v) {
    writeInt32(_vectorCtor);
    writeInt32(v.length);

    for (final item in v) {
      writeBytes(item);
    }
  }

  void writeObject<T extends TlObject>(T v) {
    final buffer = <int>[];
    v.serialize(buffer);

    addAll(buffer);
  }
}
