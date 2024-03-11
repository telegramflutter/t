import 'dart:typed_data';

import 'package:t/t.dart' as t;
import 'package:test/test.dart';

void main() {
  test('Serialization', () {
    final buffer = <int>[];
    final q = t.InitConnection(
      apiId: 123456,
      deviceModel: "Windows",
      appVersion: "1.0.0",
      systemVersion: "10",
      systemLangCode: "fa",
      langCode: "fa",
      langPack: "",
      proxy: null,
      params: null,
      query: t.HelpGetConfig(),
    );

    q.serialize(buffer);

    final br = t.BinaryReader(Uint8List.fromList(buffer));
    final x = br.readObject<t.InitConnection>();

    expect(q.deviceModel, x.deviceModel);
  });
}
