part of '../t.dart';

/// Authorization Key.
class AuthorizationKey {
  /// Constructor.
  const AuthorizationKey(this.id, this.key, this.salt)
      : assert(id != 0, 'Id must not be zero.'),
        assert(key.length == 256, 'Key must be 256 bytes.');

  /// Deserialize from JSON.
  factory AuthorizationKey.fromJson(Map<String, dynamic> json) {
    final id = json['id'] as int;
    final salt = json['salt'] as int;
    final keyHex = json['key'] as String;

    final key = _fromHexToUint8List(keyHex);

    return AuthorizationKey(id, key, salt);
  }

  /// Empty constructor.
  const AuthorizationKey.empty()
      : id = 0,
        key = const [],
        salt = 0;

  ///  Auth Key Id (int64).
  final int id;

  /// 2048-bit Auth Key (256 bytes).
  final List<int> key;

  /// Int64 salt.
  final int salt;

  /// Serialize to JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': _hex(key),
      'salt': salt,
    };
  }

  @override
  String toString() {
    final json = toJson();
    return jsonEncode(json);
  }
}
