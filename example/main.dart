import 'package:t/t.dart' as t;

void main(List<String> arguments) {
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

  print(buffer);
}
