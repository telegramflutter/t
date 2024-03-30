part of '../t.dart';

final _rnd = Random.secure();

Uint8List _randomUint8List(int length) {
  final result = Uint8List(length);

  for (int i = 0; i < length; i++) {
    result[i] = _rnd.nextInt(256);
  }

  return result;
}

Uint8List _fromHexToUint8List(String value) {
  if (value.toLowerCase().startsWith('0x')) {
    value = value.substring(2);
  }

  if (value.length.isOdd) {
    value = '0$value';
  }

  final r = Uint8List(value.length ~/ 2);

  for (int i = 0; i < value.length ~/ 2; i += 1) {
    final sub = value.substring(i * 2, i * 2 + 2);
    r[i] = int.parse(sub, radix: 16);
  }

  return r;
}

String _hex(Iterable<int> v) {
  final h = v
      .map((vv) => vv.toRadixString(16).padLeft(2, '0'))
      .join('')
      .toUpperCase();

  return h;
}
