part of '../t.dart';

/// Telegram object class.
abstract class TlObject {
  /// Constructor.
  const TlObject._();

  /// Serialize to MTProto binary.
  void serialize(List<int> buffer);
}

/// Base Constructor class.
abstract class TlConstructor extends TlObject {
  /// Constructor.
  const TlConstructor._() : super._();
}

/// Base Method class.
abstract class TlMethod<ReturnType> extends TlObject {
  /// Constructor.
  const TlMethod._() : super._();
}

/// 128 bit Integer.
class Int128 {
  /// Constructor.
  Int128(this.data);

  /// Buffer.
  final Uint8List data;
}

/// 256 bit Integer.
class Int256 {
  /// Constructor.
  Int256(this.data);

  /// Buffer.
  final Uint8List data;
}
