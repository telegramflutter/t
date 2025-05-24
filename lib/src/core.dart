part of '../t.dart';

/// Telegram object class.
abstract class TlObject {
  /// Constructor.
  const TlObject._();

  /// Serialize to MTProto binary.
  void serialize(List<int> buffer);

  /// Converts an object to JSON.
  Map<String, dynamic> toJson();

  @override
  String toString() {
    return JsonEncoder.withIndent(' ').convert(toJson());
  }
}

/// Base Constructor class.
abstract class TlConstructor extends TlObject {
  /// Constructor.
  const TlConstructor._() : super._();
}

/// Base Method class.
abstract class TlMethod extends TlObject {
  /// Constructor.
  const TlMethod._() : super._();
}

/// True value.
///
/// ID: `3fedd339`.
class True extends TlObject {
  True._() : super._();

  /// Factory.
  factory True() => _instance;

  /// Deserialize.
  factory True.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = True._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x3fedd339);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '\$': '0x3fedd339',
      'value': true,
    };
  }
}

/// Vector of values.
class Vector<T> extends TlObject {
  /// Constructor.
  const Vector._(this.items) : super._();

  /// Items in the vector.
  final List<T> items;

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(_vectorCtor);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '\$': '0x1cb5c415',
      'value': items,
    };
  }
}

/// Null value.
///
/// ID: `56730bcc`.
class Null extends TlObject {
  Null._() : super._();

  /// Factory.
  factory Null() => _instance;

  /// Deserialize.
  factory Null.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = Null._();

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x56730bcc);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '\$': '0x56730bcc',
      'value': null,
    };
  }
}

/// Unknown object.
class Unknown extends TlObject {
  Unknown._(this.id) : super._();

  /// Id of the unknown object.
  final int id;

  /// Deserialize.
  factory Unknown.deserialize(BinaryReader reader) {
    return _instance;
  }

  static final _instance = Unknown._(0);

  @override
  void serialize(List<int> buffer) {}

  @override
  Map<String, dynamic> toJson() {
    final idHex = id.toRadixString(16).padLeft(4, '0');
    return {
      '\$': '0x$idHex',
    };
  }
}

// /// 32 bit unsigned integer.
// class Uint32 {
//   /// Constructor.
//   Uint32(this.value);

//   /// Value.
//   final int value;

//   @override
//   String toString() {
//     return value.toString();
//   }
// }

/// Boolean value.
class Boolean extends TlObject {
  /// Constructor.
  Boolean(this.value) : super._();

  /// Value.
  final bool value;

  @override
  String toString() {
    return value.toString();
  }

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(value ? 0x997275b5 : 0xbc799737);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '\$': value ? '0x997275b5' : '0xbc799737',
      'value': value,
    };
  }
}

/// 128 bit Integer.
class Int128 {
  /// Constructor.
  Int128(this.data);

  /// Random.
  Int128.random() : this(_randomUint8List(16));

  /// Parse.
  Int128.parse(String hex) : this(_fromHexToUint8List(hex));

  /// Buffer.
  final Uint8List data;

  @override
  String toString() {
    return "0x${data.map((x) => x.toRadixString(16).padLeft(2, '0')).join('')}";
  }
}

/// 256 bit Integer.
class Int256 {
  /// Constructor.
  Int256(this.data);

  /// Random.
  Int256.random() : this(_randomUint8List(32));

  /// Parse.
  Int256.parse(String hex) : this(_fromHexToUint8List(hex));

  /// Buffer.
  final Uint8List data;

  @override
  String toString() {
    return "0x${data.map((x) => x.toRadixString(16).padLeft(2, '0')).join('')}";
  }
}

/// RSA Public Key.
class RSAPublicKey extends TlConstructor {
  /// Constructor.
  const RSAPublicKey({required this.n, required this.e}) : super._();

  /// Modulus
  final Uint8List n;

  /// Exponent.
  final Uint8List e;

  @override
  void serialize(List<int> buffer) {
    buffer.writeInt32(0x7A19CB76);
    buffer.writeBytes(n);
    buffer.writeBytes(e);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      '\$': '0x7a19cb76',
      'n': _hex(n),
      'e': _hex(e),
    };
  }
}

/// Extention methods.
extension on TlObject {
  Uint8List asUint8List() {
    final buffer = <int>[];
    serialize(buffer);

    return Uint8List.fromList(buffer);
  }
}
