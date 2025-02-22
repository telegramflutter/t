import 'dart:io';

import 'package:t/t.dart' as t;

void main(List<String> arguments) async {
  const apiId = 0;
  const apiHash = '';
  const phoneNumber = '';

  final t.Client? client = null;

  final cfg = await client!.initConnection<t.Config>(
    apiId: apiId,
    deviceModel: "Galaxy S24",
    appVersion: "1.0.0",
    systemVersion: "Android",
    systemLangCode: "en",
    langCode: "en",
    langPack: "",
    proxy: null,
    params: null,
    query: t.HelpGetConfig(),
  );

  print('Config: $cfg');

  final sendCodeResponse = await client.auth.sendCode(
    phoneNumber: phoneNumber,
    apiId: apiId,
    apiHash: apiHash,
    settings: const t.CodeSettings(
      allowFlashcall: false,
      currentNumber: false,
      allowAppHash: false,
      allowMissedCall: false,
      allowFirebase: false,
      appSandbox: false,
      unknownNumber: false,
    ),
  );

  final phoneCode = stdin.readLineSync();

  final sendCode = sendCodeResponse.result as t.AuthSentCode;

  final signInResponse = await client.auth.signIn(
    phoneNumber: phoneNumber,
    phoneCodeHash: sendCode.phoneCodeHash,
    phoneCode: phoneCode,
  );

  print('SignIn: $signInResponse');
}
