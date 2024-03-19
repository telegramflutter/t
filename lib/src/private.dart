part of '../t.dart';

final _rnd = Random.secure();

Uint8List _randomUint8List(int length) {
  final result = Uint8List(length);

  for (int i = 0; i < length; i++) {
    result[i] = _rnd.nextInt(256);
  }

  return result;
}
