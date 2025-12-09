part of '../../t.dart';

/// Base class for the client.
abstract class Client {
  /// Constructor.
  Client() {
    auth = ClientAuth._(this);
    account = ClientAccount._(this);
    users = ClientUsers._(this);
    contacts = ClientContacts._(this);
    messages = ClientMessages._(this);
    updates = ClientUpdates._(this);
    photos = ClientPhotos._(this);
    upload = ClientUpload._(this);
    help = ClientHelp._(this);
    channels = ClientChannels._(this);
    bots = ClientBots._(this);
    payments = ClientPayments._(this);
    stickers = ClientStickers._(this);
    phone = ClientPhone._(this);
    langpack = ClientLangpack._(this);
    folders = ClientFolders._(this);
    stats = ClientStats._(this);
    chatlists = ClientChatlists._(this);
    stories = ClientStories._(this);
    premium = ClientPremium._(this);
    smsjobs = ClientSmsjobs._(this);
    fragment = ClientFragment._(this);
  }

  /// Call the specified RPC [method] on the server.
  Future<Result> invoke(TlMethod method);

  /// Auth part.
  late final ClientAuth auth;

  /// Account part.
  late final ClientAccount account;

  /// Users part.
  late final ClientUsers users;

  /// Contacts part.
  late final ClientContacts contacts;

  /// Messages part.
  late final ClientMessages messages;

  /// Updates part.
  late final ClientUpdates updates;

  /// Photos part.
  late final ClientPhotos photos;

  /// Upload part.
  late final ClientUpload upload;

  /// Help part.
  late final ClientHelp help;

  /// Channels part.
  late final ClientChannels channels;

  /// Bots part.
  late final ClientBots bots;

  /// Payments part.
  late final ClientPayments payments;

  /// Stickers part.
  late final ClientStickers stickers;

  /// Phone part.
  late final ClientPhone phone;

  /// Langpack part.
  late final ClientLangpack langpack;

  /// Folders part.
  late final ClientFolders folders;

  /// Stats part.
  late final ClientStats stats;

  /// Chatlists part.
  late final ClientChatlists chatlists;

  /// Stories part.
  late final ClientStories stories;

  /// Premium part.
  late final ClientPremium premium;

  /// Smsjobs part.
  late final ClientSmsjobs smsjobs;

  /// Fragment part.
  late final ClientFragment fragment;

  /// Invoke After Msg.
  ///
  /// ID: `cb9f372d`.
  Future<Result<T>> invokeAfterMsg<T extends TlObject>({
    required int msgId,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeAfterMsg(msgId: msgId, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke After Msgs.
  ///
  /// ID: `3dc4b4f0`.
  Future<Result<T>> invokeAfterMsgs<T extends TlObject>({
    required List<int> msgIds,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeAfterMsgs(msgIds: msgIds, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Init Connection.
  ///
  /// ID: `c1cd5ea9`.
  Future<Result<T>> initConnection<T extends TlObject>({
    required int apiId,
    required String deviceModel,
    required String systemVersion,
    required String appVersion,
    required String systemLangCode,
    required String langPack,
    required String langCode,
    InputClientProxyBase? proxy,
    JSONValueBase? params,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InitConnection(
      apiId: apiId,
      deviceModel: deviceModel,
      systemVersion: systemVersion,
      appVersion: appVersion,
      systemLangCode: systemLangCode,
      langPack: langPack,
      langCode: langCode,
      proxy: proxy,
      params: params,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invokeWithLayer(query: request, layer: layer);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Layer.
  ///
  /// ID: `da9b0d0d`.
  Future<Result<T>> invokeWithLayer<T extends TlObject>({
    required int layer,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithLayer(layer: layer, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke Without Updates.
  ///
  /// ID: `bf9459b7`.
  Future<Result<T>> invokeWithoutUpdates<T extends TlObject>({
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithoutUpdates(query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Messages Range.
  ///
  /// ID: `365275f2`.
  Future<Result<T>> invokeWithMessagesRange<T extends TlObject>({
    required MessageRangeBase range,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithMessagesRange(range: range, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Takeout.
  ///
  /// ID: `aca9fd2e`.
  Future<Result<T>> invokeWithTakeout<T extends TlObject>({
    required int takeoutId,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithTakeout(takeoutId: takeoutId, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Business Connection.
  ///
  /// ID: `dd289f8e`.
  Future<Result<T>> invokeWithBusinessConnection<T extends TlObject>({
    required String connectionId,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithBusinessConnection(
      connectionId: connectionId,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Google Play Integrity.
  ///
  /// ID: `1df92984`.
  Future<Result<T>> invokeWithGooglePlayIntegrity<T extends TlObject>({
    required String nonce,
    required String token,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithGooglePlayIntegrity(
      nonce: nonce,
      token: token,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Apns Secret.
  ///
  /// ID: `0dae54f8`.
  Future<Result<T>> invokeWithApnsSecret<T extends TlObject>({
    required String nonce,
    required String secret,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithApnsSecret(
      nonce: nonce,
      secret: secret,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }

  /// Invoke With Re Captcha.
  ///
  /// ID: `adbb0f94`.
  Future<Result<T>> invokeWithReCaptcha<T extends TlObject>({
    required String token,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithReCaptcha(token: token, query: query);

    // Invoke and wait for response.
    final response = await invoke(request);

    // Return the result.
    return response._to<T>();
  }
}

/// Auth.
class ClientAuth {
  /// Constructor.
  const ClientAuth._(this._c);
  final Client _c;

  /// Send Code.
  ///
  /// ID: `a677244f`.
  Future<Result<AuthSentCodeBase>> sendCode({
    required String phoneNumber,
    required int apiId,
    required String apiHash,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AuthSendCode(
      phoneNumber: phoneNumber,
      apiId: apiId,
      apiHash: apiHash,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Sign Up.
  ///
  /// ID: `aac7b717`.
  Future<Result<AuthAuthorizationBase>> signUp({
    required bool noJoinedNotifications,
    required String phoneNumber,
    required String phoneCodeHash,
    required String firstName,
    required String lastName,
  }) async {
    // Preparing the request.
    final request = AuthSignUp(
      noJoinedNotifications: noJoinedNotifications,
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      firstName: firstName,
      lastName: lastName,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Sign In.
  ///
  /// ID: `8d52a951`.
  Future<Result<AuthAuthorizationBase>> signIn({
    required String phoneNumber,
    required String phoneCodeHash,
    String? phoneCode,
    EmailVerificationBase? emailVerification,
  }) async {
    // Preparing the request.
    final request = AuthSignIn(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      phoneCode: phoneCode,
      emailVerification: emailVerification,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Log Out.
  ///
  /// ID: `3e72ba19`.
  Future<Result<AuthLoggedOutBase>> logOut() async {
    // Preparing the request.
    final request = AuthLogOut();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthLoggedOutBase>();
  }

  /// Reset Authorizations.
  ///
  /// ID: `9fab0d1a`.
  Future<Result<Boolean>> resetAuthorizations() async {
    // Preparing the request.
    final request = AuthResetAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Export Authorization.
  ///
  /// ID: `e5bfffcd`.
  Future<Result<AuthExportedAuthorizationBase>> exportAuthorization({
    required int dcId,
  }) async {
    // Preparing the request.
    final request = AuthExportAuthorization(dcId: dcId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthExportedAuthorizationBase>();
  }

  /// Import Authorization.
  ///
  /// ID: `a57a7dad`.
  Future<Result<AuthAuthorizationBase>> importAuthorization({
    required int id,
    required Uint8List bytes,
  }) async {
    // Preparing the request.
    final request = AuthImportAuthorization(id: id, bytes: bytes);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Bind Temp Auth Key.
  ///
  /// ID: `cdd42a05`.
  Future<Result<Boolean>> bindTempAuthKey({
    required int permAuthKeyId,
    required int nonce,
    required DateTime expiresAt,
    required Uint8List encryptedMessage,
  }) async {
    // Preparing the request.
    final request = AuthBindTempAuthKey(
      permAuthKeyId: permAuthKeyId,
      nonce: nonce,
      expiresAt: expiresAt,
      encryptedMessage: encryptedMessage,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Import Bot Authorization.
  ///
  /// ID: `67a3ff2c`.
  Future<Result<AuthAuthorizationBase>> importBotAuthorization({
    required int flags,
    required int apiId,
    required String apiHash,
    required String botAuthToken,
  }) async {
    // Preparing the request.
    final request = AuthImportBotAuthorization(
      flags: flags,
      apiId: apiId,
      apiHash: apiHash,
      botAuthToken: botAuthToken,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Check Password.
  ///
  /// ID: `d18b4d16`.
  Future<Result<AuthAuthorizationBase>> checkPassword({
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = AuthCheckPassword(password: password);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Request Password Recovery.
  ///
  /// ID: `d897bc66`.
  Future<Result<AuthPasswordRecoveryBase>> requestPasswordRecovery() async {
    // Preparing the request.
    final request = AuthRequestPasswordRecovery();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthPasswordRecoveryBase>();
  }

  /// Recover Password.
  ///
  /// ID: `37096c70`.
  Future<Result<AuthAuthorizationBase>> recoverPassword({
    required String code,
    AccountPasswordInputSettingsBase? newSettings,
  }) async {
    // Preparing the request.
    final request = AuthRecoverPassword(code: code, newSettings: newSettings);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Resend Code.
  ///
  /// ID: `cae47523`.
  Future<Result<AuthSentCodeBase>> resendCode({
    required String phoneNumber,
    required String phoneCodeHash,
    String? reason,
  }) async {
    // Preparing the request.
    final request = AuthResendCode(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      reason: reason,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Cancel Code.
  ///
  /// ID: `1f040578`.
  Future<Result<Boolean>> cancelCode({
    required String phoneNumber,
    required String phoneCodeHash,
  }) async {
    // Preparing the request.
    final request = AuthCancelCode(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Drop Temp Auth Keys.
  ///
  /// ID: `8e48a188`.
  Future<Result<Boolean>> dropTempAuthKeys({
    required List<int> exceptAuthKeys,
  }) async {
    // Preparing the request.
    final request = AuthDropTempAuthKeys(exceptAuthKeys: exceptAuthKeys);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Export Login Token.
  ///
  /// ID: `b7e085fe`.
  Future<Result<AuthLoginTokenBase>> exportLoginToken({
    required int apiId,
    required String apiHash,
    required List<int> exceptIds,
  }) async {
    // Preparing the request.
    final request = AuthExportLoginToken(
      apiId: apiId,
      apiHash: apiHash,
      exceptIds: exceptIds,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthLoginTokenBase>();
  }

  /// Import Login Token.
  ///
  /// ID: `95ac5ce4`.
  Future<Result<AuthLoginTokenBase>> importLoginToken({
    required Uint8List token,
  }) async {
    // Preparing the request.
    final request = AuthImportLoginToken(token: token);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthLoginTokenBase>();
  }

  /// Accept Login Token.
  ///
  /// ID: `e894ad4d`.
  Future<Result<AuthorizationBase>> acceptLoginToken({
    required Uint8List token,
  }) async {
    // Preparing the request.
    final request = AuthAcceptLoginToken(token: token);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthorizationBase>();
  }

  /// Check Recovery Password.
  ///
  /// ID: `0d36bf79`.
  Future<Result<Boolean>> checkRecoveryPassword({required String code}) async {
    // Preparing the request.
    final request = AuthCheckRecoveryPassword(code: code);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Import Web Token Authorization.
  ///
  /// ID: `2db873a9`.
  Future<Result<AuthAuthorizationBase>> importWebTokenAuthorization({
    required int apiId,
    required String apiHash,
    required String webAuthToken,
  }) async {
    // Preparing the request.
    final request = AuthImportWebTokenAuthorization(
      apiId: apiId,
      apiHash: apiHash,
      webAuthToken: webAuthToken,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }

  /// Request Firebase Sms.
  ///
  /// ID: `8e39261e`.
  Future<Result<Boolean>> requestFirebaseSms({
    required String phoneNumber,
    required String phoneCodeHash,
    String? safetyNetToken,
    String? playIntegrityToken,
    String? iosPushSecret,
  }) async {
    // Preparing the request.
    final request = AuthRequestFirebaseSms(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      safetyNetToken: safetyNetToken,
      playIntegrityToken: playIntegrityToken,
      iosPushSecret: iosPushSecret,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Login Email.
  ///
  /// ID: `7e960193`.
  Future<Result<AuthSentCodeBase>> resetLoginEmail({
    required String phoneNumber,
    required String phoneCodeHash,
  }) async {
    // Preparing the request.
    final request = AuthResetLoginEmail(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Report Missing Code.
  ///
  /// ID: `cb9deff6`.
  Future<Result<Boolean>> reportMissingCode({
    required String phoneNumber,
    required String phoneCodeHash,
    required String mnc,
  }) async {
    // Preparing the request.
    final request = AuthReportMissingCode(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      mnc: mnc,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Check Paid Auth.
  ///
  /// ID: `56e59f9c`.
  Future<Result<AuthSentCodeBase>> checkPaidAuth({
    required String phoneNumber,
    required String phoneCodeHash,
    required int formId,
  }) async {
    // Preparing the request.
    final request = AuthCheckPaidAuth(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      formId: formId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Init Passkey Login.
  ///
  /// ID: `518ad0b7`.
  Future<Result<AuthPasskeyLoginOptionsBase>> initPasskeyLogin({
    required int apiId,
    required String apiHash,
  }) async {
    // Preparing the request.
    final request = AuthInitPasskeyLogin(apiId: apiId, apiHash: apiHash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthPasskeyLoginOptionsBase>();
  }

  /// Finish Passkey Login.
  ///
  /// ID: `9857ad07`.
  Future<Result<AuthAuthorizationBase>> finishPasskeyLogin({
    required InputPasskeyCredentialBase credential,
    int? fromDcId,
    int? fromAuthKeyId,
  }) async {
    // Preparing the request.
    final request = AuthFinishPasskeyLogin(
      credential: credential,
      fromDcId: fromDcId,
      fromAuthKeyId: fromAuthKeyId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthAuthorizationBase>();
  }
}

/// Account.
class ClientAccount {
  /// Constructor.
  const ClientAccount._(this._c);
  final Client _c;

  /// Register Device.
  ///
  /// ID: `ec86017a`.
  Future<Result<Boolean>> registerDevice({
    required bool noMuted,
    required int tokenType,
    required String token,
    required bool appSandbox,
    required Uint8List secret,
    required List<int> otherUids,
  }) async {
    // Preparing the request.
    final request = AccountRegisterDevice(
      noMuted: noMuted,
      tokenType: tokenType,
      token: token,
      appSandbox: appSandbox,
      secret: secret,
      otherUids: otherUids,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Unregister Device.
  ///
  /// ID: `6a0d3206`.
  Future<Result<Boolean>> unregisterDevice({
    required int tokenType,
    required String token,
    required List<int> otherUids,
  }) async {
    // Preparing the request.
    final request = AccountUnregisterDevice(
      tokenType: tokenType,
      token: token,
      otherUids: otherUids,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Notify Settings.
  ///
  /// ID: `84be5b93`.
  Future<Result<Boolean>> updateNotifySettings({
    required InputNotifyPeerBase peer,
    required InputPeerNotifySettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountUpdateNotifySettings(peer: peer, settings: settings);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Notify Settings.
  ///
  /// ID: `12b3ad31`.
  Future<Result<PeerNotifySettingsBase>> getNotifySettings({
    required InputNotifyPeerBase peer,
  }) async {
    // Preparing the request.
    final request = AccountGetNotifySettings(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PeerNotifySettingsBase>();
  }

  /// Reset Notify Settings.
  ///
  /// ID: `db7e1747`.
  Future<Result<Boolean>> resetNotifySettings() async {
    // Preparing the request.
    final request = AccountResetNotifySettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Profile.
  ///
  /// ID: `78515775`.
  Future<Result<UserBase>> updateProfile({
    String? firstName,
    String? lastName,
    String? about,
  }) async {
    // Preparing the request.
    final request = AccountUpdateProfile(
      firstName: firstName,
      lastName: lastName,
      about: about,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UserBase>();
  }

  /// Update Status.
  ///
  /// ID: `6628562c`.
  Future<Result<Boolean>> updateStatus({required bool offline}) async {
    // Preparing the request.
    final request = AccountUpdateStatus(offline: offline);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Wall Papers.
  ///
  /// ID: `07967d36`.
  Future<Result<AccountWallPapersBase>> getWallPapers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetWallPapers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountWallPapersBase>();
  }

  /// Report Peer.
  ///
  /// ID: `c5ba3d86`.
  Future<Result<Boolean>> reportPeer({
    required InputPeerBase peer,
    required ReportReasonBase reason,
    required String message,
  }) async {
    // Preparing the request.
    final request = AccountReportPeer(
      peer: peer,
      reason: reason,
      message: message,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Check Username.
  ///
  /// ID: `2714d86c`.
  Future<Result<Boolean>> checkUsername({required String username}) async {
    // Preparing the request.
    final request = AccountCheckUsername(username: username);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Username.
  ///
  /// ID: `3e0bdd7c`.
  Future<Result<UserBase>> updateUsername({required String username}) async {
    // Preparing the request.
    final request = AccountUpdateUsername(username: username);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UserBase>();
  }

  /// Get Privacy.
  ///
  /// ID: `dadbc950`.
  Future<Result<AccountPrivacyRulesBase>> getPrivacy({
    required InputPrivacyKeyBase key,
  }) async {
    // Preparing the request.
    final request = AccountGetPrivacy(key: key);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPrivacyRulesBase>();
  }

  /// Set Privacy.
  ///
  /// ID: `c9f81ce8`.
  Future<Result<AccountPrivacyRulesBase>> setPrivacy({
    required InputPrivacyKeyBase key,
    required List<InputPrivacyRuleBase> rules,
  }) async {
    // Preparing the request.
    final request = AccountSetPrivacy(key: key, rules: rules);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPrivacyRulesBase>();
  }

  /// Delete Account.
  ///
  /// ID: `a2c0cf74`.
  Future<Result<Boolean>> deleteAccount({
    required String reason,
    InputCheckPasswordSRPBase? password,
  }) async {
    // Preparing the request.
    final request = AccountDeleteAccount(reason: reason, password: password);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Account T T L.
  ///
  /// ID: `08fc711d`.
  Future<Result<AccountDaysTTLBase>> getAccountTTL() async {
    // Preparing the request.
    final request = AccountGetAccountTTL();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountDaysTTLBase>();
  }

  /// Set Account T T L.
  ///
  /// ID: `2442485e`.
  Future<Result<Boolean>> setAccountTTL({
    required AccountDaysTTLBase ttl,
  }) async {
    // Preparing the request.
    final request = AccountSetAccountTTL(ttl: ttl);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Change Phone Code.
  ///
  /// ID: `82574ae5`.
  Future<Result<AuthSentCodeBase>> sendChangePhoneCode({
    required String phoneNumber,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendChangePhoneCode(
      phoneNumber: phoneNumber,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Change Phone.
  ///
  /// ID: `70c32edb`.
  Future<Result<UserBase>> changePhone({
    required String phoneNumber,
    required String phoneCodeHash,
    required String phoneCode,
  }) async {
    // Preparing the request.
    final request = AccountChangePhone(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      phoneCode: phoneCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UserBase>();
  }

  /// Update Device Locked.
  ///
  /// ID: `38df3532`.
  Future<Result<Boolean>> updateDeviceLocked({required int period}) async {
    // Preparing the request.
    final request = AccountUpdateDeviceLocked(period: period);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Authorizations.
  ///
  /// ID: `e320c158`.
  Future<Result<AccountAuthorizationsBase>> getAuthorizations() async {
    // Preparing the request.
    final request = AccountGetAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountAuthorizationsBase>();
  }

  /// Reset Authorization.
  ///
  /// ID: `df77f3bc`.
  Future<Result<Boolean>> resetAuthorization({required int hash}) async {
    // Preparing the request.
    final request = AccountResetAuthorization(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Password.
  ///
  /// ID: `548a30f5`.
  Future<Result<AccountPasswordBase>> getPassword() async {
    // Preparing the request.
    final request = AccountGetPassword();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPasswordBase>();
  }

  /// Get Password Settings.
  ///
  /// ID: `9cd4eaf9`.
  Future<Result<AccountPasswordSettingsBase>> getPasswordSettings({
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = AccountGetPasswordSettings(password: password);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPasswordSettingsBase>();
  }

  /// Update Password Settings.
  ///
  /// ID: `a59b102f`.
  Future<Result<Boolean>> updatePasswordSettings({
    required InputCheckPasswordSRPBase password,
    required AccountPasswordInputSettingsBase newSettings,
  }) async {
    // Preparing the request.
    final request = AccountUpdatePasswordSettings(
      password: password,
      newSettings: newSettings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Confirm Phone Code.
  ///
  /// ID: `1b3faa88`.
  Future<Result<AuthSentCodeBase>> sendConfirmPhoneCode({
    required String hash,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendConfirmPhoneCode(hash: hash, settings: settings);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Confirm Phone.
  ///
  /// ID: `5f2178c3`.
  Future<Result<Boolean>> confirmPhone({
    required String phoneCodeHash,
    required String phoneCode,
  }) async {
    // Preparing the request.
    final request = AccountConfirmPhone(
      phoneCodeHash: phoneCodeHash,
      phoneCode: phoneCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Tmp Password.
  ///
  /// ID: `449e0b51`.
  Future<Result<AccountTmpPasswordBase>> getTmpPassword({
    required InputCheckPasswordSRPBase password,
    required int period,
  }) async {
    // Preparing the request.
    final request = AccountGetTmpPassword(password: password, period: period);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountTmpPasswordBase>();
  }

  /// Get Web Authorizations.
  ///
  /// ID: `182e6d6f`.
  Future<Result<AccountWebAuthorizationsBase>> getWebAuthorizations() async {
    // Preparing the request.
    final request = AccountGetWebAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountWebAuthorizationsBase>();
  }

  /// Reset Web Authorization.
  ///
  /// ID: `2d01b9ef`.
  Future<Result<Boolean>> resetWebAuthorization({required int hash}) async {
    // Preparing the request.
    final request = AccountResetWebAuthorization(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Web Authorizations.
  ///
  /// ID: `682d2594`.
  Future<Result<Boolean>> resetWebAuthorizations() async {
    // Preparing the request.
    final request = AccountResetWebAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get All Secure Values.
  ///
  /// ID: `b288bc7d`.
  Future<Result<Vector<SecureValueBase>>> getAllSecureValues() async {
    // Preparing the request.
    final request = AccountGetAllSecureValues();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<SecureValueBase>();
  }

  /// Get Secure Value.
  ///
  /// ID: `73665bc2`.
  Future<Result<Vector<SecureValueBase>>> getSecureValue({
    required List<SecureValueTypeBase> types,
  }) async {
    // Preparing the request.
    final request = AccountGetSecureValue(types: types);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<SecureValueBase>();
  }

  /// Save Secure Value.
  ///
  /// ID: `899fe31d`.
  Future<Result<SecureValueBase>> saveSecureValue({
    required InputSecureValueBase value,
    required int secureSecretId,
  }) async {
    // Preparing the request.
    final request = AccountSaveSecureValue(
      value: value,
      secureSecretId: secureSecretId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<SecureValueBase>();
  }

  /// Delete Secure Value.
  ///
  /// ID: `b880bc4b`.
  Future<Result<Boolean>> deleteSecureValue({
    required List<SecureValueTypeBase> types,
  }) async {
    // Preparing the request.
    final request = AccountDeleteSecureValue(types: types);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Authorization Form.
  ///
  /// ID: `a929597a`.
  Future<Result<AccountAuthorizationFormBase>> getAuthorizationForm({
    required int botId,
    required String scope,
    required String publicKey,
  }) async {
    // Preparing the request.
    final request = AccountGetAuthorizationForm(
      botId: botId,
      scope: scope,
      publicKey: publicKey,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountAuthorizationFormBase>();
  }

  /// Accept Authorization.
  ///
  /// ID: `f3ed4c73`.
  Future<Result<Boolean>> acceptAuthorization({
    required int botId,
    required String scope,
    required String publicKey,
    required List<SecureValueHashBase> valueHashes,
    required SecureCredentialsEncryptedBase credentials,
  }) async {
    // Preparing the request.
    final request = AccountAcceptAuthorization(
      botId: botId,
      scope: scope,
      publicKey: publicKey,
      valueHashes: valueHashes,
      credentials: credentials,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Verify Phone Code.
  ///
  /// ID: `a5a356f9`.
  Future<Result<AuthSentCodeBase>> sendVerifyPhoneCode({
    required String phoneNumber,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendVerifyPhoneCode(
      phoneNumber: phoneNumber,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AuthSentCodeBase>();
  }

  /// Verify Phone.
  ///
  /// ID: `4dd3a7f6`.
  Future<Result<Boolean>> verifyPhone({
    required String phoneNumber,
    required String phoneCodeHash,
    required String phoneCode,
  }) async {
    // Preparing the request.
    final request = AccountVerifyPhone(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      phoneCode: phoneCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Verify Email Code.
  ///
  /// ID: `98e037bb`.
  Future<Result<AccountSentEmailCodeBase>> sendVerifyEmailCode({
    required EmailVerifyPurposeBase purpose,
    required String email,
  }) async {
    // Preparing the request.
    final request = AccountSendVerifyEmailCode(purpose: purpose, email: email);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountSentEmailCodeBase>();
  }

  /// Verify Email.
  ///
  /// ID: `032da4cf`.
  Future<Result<AccountEmailVerifiedBase>> verifyEmail({
    required EmailVerifyPurposeBase purpose,
    required EmailVerificationBase verification,
  }) async {
    // Preparing the request.
    final request = AccountVerifyEmail(
      purpose: purpose,
      verification: verification,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountEmailVerifiedBase>();
  }

  /// Init Takeout Session.
  ///
  /// ID: `8ef3eab0`.
  Future<Result<AccountTakeoutBase>> initTakeoutSession({
    required bool contacts,
    required bool messageUsers,
    required bool messageChats,
    required bool messageMegagroups,
    required bool messageChannels,
    required bool files,
    int? fileMaxSize,
  }) async {
    // Preparing the request.
    final request = AccountInitTakeoutSession(
      contacts: contacts,
      messageUsers: messageUsers,
      messageChats: messageChats,
      messageMegagroups: messageMegagroups,
      messageChannels: messageChannels,
      files: files,
      fileMaxSize: fileMaxSize,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountTakeoutBase>();
  }

  /// Finish Takeout Session.
  ///
  /// ID: `1d2652ee`.
  Future<Result<Boolean>> finishTakeoutSession({required bool success}) async {
    // Preparing the request.
    final request = AccountFinishTakeoutSession(success: success);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Confirm Password Email.
  ///
  /// ID: `8fdf1920`.
  Future<Result<Boolean>> confirmPasswordEmail({required String code}) async {
    // Preparing the request.
    final request = AccountConfirmPasswordEmail(code: code);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Resend Password Email.
  ///
  /// ID: `7a7f2a15`.
  Future<Result<Boolean>> resendPasswordEmail() async {
    // Preparing the request.
    final request = AccountResendPasswordEmail();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Cancel Password Email.
  ///
  /// ID: `c1cbd5b6`.
  Future<Result<Boolean>> cancelPasswordEmail() async {
    // Preparing the request.
    final request = AccountCancelPasswordEmail();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Contact Sign Up Notification.
  ///
  /// ID: `9f07c728`.
  Future<Result<Boolean>> getContactSignUpNotification() async {
    // Preparing the request.
    final request = AccountGetContactSignUpNotification();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Contact Sign Up Notification.
  ///
  /// ID: `cff43f61`.
  Future<Result<Boolean>> setContactSignUpNotification({
    required bool silent,
  }) async {
    // Preparing the request.
    final request = AccountSetContactSignUpNotification(silent: silent);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Notify Exceptions.
  ///
  /// ID: `53577479`.
  Future<Result<UpdatesBase>> getNotifyExceptions({
    required bool compareSound,
    required bool compareStories,
    InputNotifyPeerBase? peer,
  }) async {
    // Preparing the request.
    final request = AccountGetNotifyExceptions(
      compareSound: compareSound,
      compareStories: compareStories,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Wall Paper.
  ///
  /// ID: `fc8ddbea`.
  Future<Result<WallPaperBase>> getWallPaper({
    required InputWallPaperBase wallpaper,
  }) async {
    // Preparing the request.
    final request = AccountGetWallPaper(wallpaper: wallpaper);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WallPaperBase>();
  }

  /// Upload Wall Paper.
  ///
  /// ID: `e39a8f03`.
  Future<Result<WallPaperBase>> uploadWallPaper({
    required bool forChat,
    required InputFileBase file,
    required String mimeType,
    required WallPaperSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountUploadWallPaper(
      forChat: forChat,
      file: file,
      mimeType: mimeType,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WallPaperBase>();
  }

  /// Save Wall Paper.
  ///
  /// ID: `6c5a5b37`.
  Future<Result<Boolean>> saveWallPaper({
    required InputWallPaperBase wallpaper,
    required bool unsave,
    required WallPaperSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSaveWallPaper(
      wallpaper: wallpaper,
      unsave: unsave,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Install Wall Paper.
  ///
  /// ID: `feed5769`.
  Future<Result<Boolean>> installWallPaper({
    required InputWallPaperBase wallpaper,
    required WallPaperSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountInstallWallPaper(
      wallpaper: wallpaper,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Wall Papers.
  ///
  /// ID: `bb3b9804`.
  Future<Result<Boolean>> resetWallPapers() async {
    // Preparing the request.
    final request = AccountResetWallPapers();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Auto Download Settings.
  ///
  /// ID: `56da0b3f`.
  Future<Result<AccountAutoDownloadSettingsBase>>
      getAutoDownloadSettings() async {
    // Preparing the request.
    final request = AccountGetAutoDownloadSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountAutoDownloadSettingsBase>();
  }

  /// Save Auto Download Settings.
  ///
  /// ID: `76f36233`.
  Future<Result<Boolean>> saveAutoDownloadSettings({
    required bool low,
    required bool high,
    required AutoDownloadSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSaveAutoDownloadSettings(
      low: low,
      high: high,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Upload Theme.
  ///
  /// ID: `1c3db333`.
  Future<Result<DocumentBase>> uploadTheme({
    required InputFileBase file,
    InputFileBase? thumb,
    required String fileName,
    required String mimeType,
  }) async {
    // Preparing the request.
    final request = AccountUploadTheme(
      file: file,
      thumb: thumb,
      fileName: fileName,
      mimeType: mimeType,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DocumentBase>();
  }

  /// Create Theme.
  ///
  /// ID: `652e4400`.
  Future<Result<ThemeBase>> createTheme({
    required String slug,
    required String title,
    InputDocumentBase? document,
    List<InputThemeSettingsBase>? settings,
  }) async {
    // Preparing the request.
    final request = AccountCreateTheme(
      slug: slug,
      title: title,
      document: document,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ThemeBase>();
  }

  /// Update Theme.
  ///
  /// ID: `2bf40ccc`.
  Future<Result<ThemeBase>> updateTheme({
    required String format,
    required InputThemeBase theme,
    String? slug,
    String? title,
    InputDocumentBase? document,
    List<InputThemeSettingsBase>? settings,
  }) async {
    // Preparing the request.
    final request = AccountUpdateTheme(
      format: format,
      theme: theme,
      slug: slug,
      title: title,
      document: document,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ThemeBase>();
  }

  /// Save Theme.
  ///
  /// ID: `f257106c`.
  Future<Result<Boolean>> saveTheme({
    required InputThemeBase theme,
    required bool unsave,
  }) async {
    // Preparing the request.
    final request = AccountSaveTheme(theme: theme, unsave: unsave);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Install Theme.
  ///
  /// ID: `c727bb3b`.
  Future<Result<Boolean>> installTheme({
    required bool dark,
    InputThemeBase? theme,
    String? format,
    BaseThemeBase? baseTheme,
  }) async {
    // Preparing the request.
    final request = AccountInstallTheme(
      dark: dark,
      theme: theme,
      format: format,
      baseTheme: baseTheme,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Theme.
  ///
  /// ID: `3a5869ec`.
  Future<Result<ThemeBase>> getTheme({
    required String format,
    required InputThemeBase theme,
  }) async {
    // Preparing the request.
    final request = AccountGetTheme(format: format, theme: theme);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ThemeBase>();
  }

  /// Get Themes.
  ///
  /// ID: `7206e458`.
  Future<Result<AccountThemesBase>> getThemes({
    required String format,
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetThemes(format: format, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountThemesBase>();
  }

  /// Set Content Settings.
  ///
  /// ID: `b574b16b`.
  Future<Result<Boolean>> setContentSettings({
    required bool sensitiveEnabled,
  }) async {
    // Preparing the request.
    final request = AccountSetContentSettings(
      sensitiveEnabled: sensitiveEnabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Content Settings.
  ///
  /// ID: `8b9b4dae`.
  Future<Result<AccountContentSettingsBase>> getContentSettings() async {
    // Preparing the request.
    final request = AccountGetContentSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountContentSettingsBase>();
  }

  /// Get Multi Wall Papers.
  ///
  /// ID: `65ad71dc`.
  Future<Result<Vector<WallPaperBase>>> getMultiWallPapers({
    required List<InputWallPaperBase> wallpapers,
  }) async {
    // Preparing the request.
    final request = AccountGetMultiWallPapers(wallpapers: wallpapers);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<WallPaperBase>();
  }

  /// Get Global Privacy Settings.
  ///
  /// ID: `eb2b4cf6`.
  Future<Result<GlobalPrivacySettingsBase>> getGlobalPrivacySettings() async {
    // Preparing the request.
    final request = AccountGetGlobalPrivacySettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<GlobalPrivacySettingsBase>();
  }

  /// Set Global Privacy Settings.
  ///
  /// ID: `1edaaac2`.
  Future<Result<GlobalPrivacySettingsBase>> setGlobalPrivacySettings({
    required GlobalPrivacySettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSetGlobalPrivacySettings(settings: settings);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<GlobalPrivacySettingsBase>();
  }

  /// Report Profile Photo.
  ///
  /// ID: `fa8cc6f5`.
  Future<Result<Boolean>> reportProfilePhoto({
    required InputPeerBase peer,
    required InputPhotoBase photoId,
    required ReportReasonBase reason,
    required String message,
  }) async {
    // Preparing the request.
    final request = AccountReportProfilePhoto(
      peer: peer,
      photoId: photoId,
      reason: reason,
      message: message,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Password.
  ///
  /// ID: `9308ce1b`.
  Future<Result<AccountResetPasswordResultBase>> resetPassword() async {
    // Preparing the request.
    final request = AccountResetPassword();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountResetPasswordResultBase>();
  }

  /// Decline Password Reset.
  ///
  /// ID: `4c9409f6`.
  Future<Result<Boolean>> declinePasswordReset() async {
    // Preparing the request.
    final request = AccountDeclinePasswordReset();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Chat Themes.
  ///
  /// ID: `d638de89`.
  Future<Result<AccountThemesBase>> getChatThemes({required int hash}) async {
    // Preparing the request.
    final request = AccountGetChatThemes(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountThemesBase>();
  }

  /// Set Authorization T T L.
  ///
  /// ID: `bf899aa0`.
  Future<Result<Boolean>> setAuthorizationTTL({
    required int authorizationTtlDays,
  }) async {
    // Preparing the request.
    final request = AccountSetAuthorizationTTL(
      authorizationTtlDays: authorizationTtlDays,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Change Authorization Settings.
  ///
  /// ID: `40f48462`.
  Future<Result<Boolean>> changeAuthorizationSettings({
    required bool confirmed,
    required int hash,
    bool? encryptedRequestsDisabled,
    bool? callRequestsDisabled,
  }) async {
    // Preparing the request.
    final request = AccountChangeAuthorizationSettings(
      confirmed: confirmed,
      hash: hash,
      encryptedRequestsDisabled: encryptedRequestsDisabled,
      callRequestsDisabled: callRequestsDisabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Saved Ringtones.
  ///
  /// ID: `e1902288`.
  Future<Result<AccountSavedRingtonesBase>> getSavedRingtones({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetSavedRingtones(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountSavedRingtonesBase>();
  }

  /// Save Ringtone.
  ///
  /// ID: `3dea5b03`.
  Future<Result<AccountSavedRingtoneBase>> saveRingtone({
    required InputDocumentBase id,
    required bool unsave,
  }) async {
    // Preparing the request.
    final request = AccountSaveRingtone(id: id, unsave: unsave);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountSavedRingtoneBase>();
  }

  /// Upload Ringtone.
  ///
  /// ID: `831a83a2`.
  Future<Result<DocumentBase>> uploadRingtone({
    required InputFileBase file,
    required String fileName,
    required String mimeType,
  }) async {
    // Preparing the request.
    final request = AccountUploadRingtone(
      file: file,
      fileName: fileName,
      mimeType: mimeType,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DocumentBase>();
  }

  /// Update Emoji Status.
  ///
  /// ID: `fbd3de6b`.
  Future<Result<Boolean>> updateEmojiStatus({
    required EmojiStatusBase emojiStatus,
  }) async {
    // Preparing the request.
    final request = AccountUpdateEmojiStatus(emojiStatus: emojiStatus);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Default Emoji Statuses.
  ///
  /// ID: `d6753386`.
  Future<Result<AccountEmojiStatusesBase>> getDefaultEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultEmojiStatuses(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>();
  }

  /// Get Recent Emoji Statuses.
  ///
  /// ID: `0f578105`.
  Future<Result<AccountEmojiStatusesBase>> getRecentEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetRecentEmojiStatuses(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>();
  }

  /// Clear Recent Emoji Statuses.
  ///
  /// ID: `18201aae`.
  Future<Result<Boolean>> clearRecentEmojiStatuses() async {
    // Preparing the request.
    final request = AccountClearRecentEmojiStatuses();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reorder Usernames.
  ///
  /// ID: `ef500eab`.
  Future<Result<Boolean>> reorderUsernames({
    required List<String> order,
  }) async {
    // Preparing the request.
    final request = AccountReorderUsernames(order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Username.
  ///
  /// ID: `58d6b376`.
  Future<Result<Boolean>> toggleUsername({
    required String username,
    required bool active,
  }) async {
    // Preparing the request.
    final request = AccountToggleUsername(username: username, active: active);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Default Profile Photo Emojis.
  ///
  /// ID: `e2750328`.
  Future<Result<EmojiListBase>> getDefaultProfilePhotoEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultProfilePhotoEmojis(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiListBase>();
  }

  /// Get Default Group Photo Emojis.
  ///
  /// ID: `915860ae`.
  Future<Result<EmojiListBase>> getDefaultGroupPhotoEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultGroupPhotoEmojis(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiListBase>();
  }

  /// Get Auto Save Settings.
  ///
  /// ID: `adcbbcda`.
  Future<Result<AccountAutoSaveSettingsBase>> getAutoSaveSettings() async {
    // Preparing the request.
    final request = AccountGetAutoSaveSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountAutoSaveSettingsBase>();
  }

  /// Save Auto Save Settings.
  ///
  /// ID: `d69b8361`.
  Future<Result<Boolean>> saveAutoSaveSettings({
    required bool users,
    required bool chats,
    required bool broadcasts,
    InputPeerBase? peer,
    required AutoSaveSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSaveAutoSaveSettings(
      users: users,
      chats: chats,
      broadcasts: broadcasts,
      peer: peer,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Auto Save Exceptions.
  ///
  /// ID: `53bc0020`.
  Future<Result<Boolean>> deleteAutoSaveExceptions() async {
    // Preparing the request.
    final request = AccountDeleteAutoSaveExceptions();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Invalidate Sign In Codes.
  ///
  /// ID: `ca8ae8ba`.
  Future<Result<Boolean>> invalidateSignInCodes({
    required List<String> codes,
  }) async {
    // Preparing the request.
    final request = AccountInvalidateSignInCodes(codes: codes);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Color.
  ///
  /// ID: `684d214e`.
  Future<Result<Boolean>> updateColor({
    required bool forProfile,
    PeerColorBase? color,
  }) async {
    // Preparing the request.
    final request = AccountUpdateColor(forProfile: forProfile, color: color);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Default Background Emojis.
  ///
  /// ID: `a60ab9ce`.
  Future<Result<EmojiListBase>> getDefaultBackgroundEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultBackgroundEmojis(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiListBase>();
  }

  /// Get Channel Default Emoji Statuses.
  ///
  /// ID: `7727a7d5`.
  Future<Result<AccountEmojiStatusesBase>> getChannelDefaultEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetChannelDefaultEmojiStatuses(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>();
  }

  /// Get Channel Restricted Status Emojis.
  ///
  /// ID: `35a9e0d5`.
  Future<Result<EmojiListBase>> getChannelRestrictedStatusEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetChannelRestrictedStatusEmojis(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiListBase>();
  }

  /// Update Business Work Hours.
  ///
  /// ID: `4b00e066`.
  Future<Result<Boolean>> updateBusinessWorkHours({
    BusinessWorkHoursBase? businessWorkHours,
  }) async {
    // Preparing the request.
    final request = AccountUpdateBusinessWorkHours(
      businessWorkHours: businessWorkHours,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Business Location.
  ///
  /// ID: `9e6b131a`.
  Future<Result<Boolean>> updateBusinessLocation({
    InputGeoPointBase? geoPoint,
    String? address,
  }) async {
    // Preparing the request.
    final request = AccountUpdateBusinessLocation(
      geoPoint: geoPoint,
      address: address,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Business Greeting Message.
  ///
  /// ID: `66cdafc4`.
  Future<Result<Boolean>> updateBusinessGreetingMessage({
    InputBusinessGreetingMessageBase? message,
  }) async {
    // Preparing the request.
    final request = AccountUpdateBusinessGreetingMessage(message: message);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Business Away Message.
  ///
  /// ID: `a26a7fa5`.
  Future<Result<Boolean>> updateBusinessAwayMessage({
    InputBusinessAwayMessageBase? message,
  }) async {
    // Preparing the request.
    final request = AccountUpdateBusinessAwayMessage(message: message);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Connected Bot.
  ///
  /// ID: `66a08c7e`.
  Future<Result<UpdatesBase>> updateConnectedBot({
    required bool deleted,
    BusinessBotRightsBase? rights,
    required InputUserBase bot,
    required InputBusinessBotRecipientsBase recipients,
  }) async {
    // Preparing the request.
    final request = AccountUpdateConnectedBot(
      deleted: deleted,
      rights: rights,
      bot: bot,
      recipients: recipients,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Connected Bots.
  ///
  /// ID: `4ea4c80f`.
  Future<Result<AccountConnectedBotsBase>> getConnectedBots() async {
    // Preparing the request.
    final request = AccountGetConnectedBots();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountConnectedBotsBase>();
  }

  /// Get Bot Business Connection.
  ///
  /// ID: `76a86270`.
  Future<Result<UpdatesBase>> getBotBusinessConnection({
    required String connectionId,
  }) async {
    // Preparing the request.
    final request = AccountGetBotBusinessConnection(connectionId: connectionId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Update Business Intro.
  ///
  /// ID: `a614d034`.
  Future<Result<Boolean>> updateBusinessIntro({
    InputBusinessIntroBase? intro,
  }) async {
    // Preparing the request.
    final request = AccountUpdateBusinessIntro(intro: intro);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Connected Bot Paused.
  ///
  /// ID: `646e1097`.
  Future<Result<Boolean>> toggleConnectedBotPaused({
    required InputPeerBase peer,
    required bool paused,
  }) async {
    // Preparing the request.
    final request = AccountToggleConnectedBotPaused(peer: peer, paused: paused);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Disable Peer Connected Bot.
  ///
  /// ID: `5e437ed9`.
  Future<Result<Boolean>> disablePeerConnectedBot({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = AccountDisablePeerConnectedBot(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Birthday.
  ///
  /// ID: `cc6e0c11`.
  Future<Result<Boolean>> updateBirthday({BirthdayBase? birthday}) async {
    // Preparing the request.
    final request = AccountUpdateBirthday(birthday: birthday);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Create Business Chat Link.
  ///
  /// ID: `8851e68e`.
  Future<Result<BusinessChatLinkBase>> createBusinessChatLink({
    required InputBusinessChatLinkBase link,
  }) async {
    // Preparing the request.
    final request = AccountCreateBusinessChatLink(link: link);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BusinessChatLinkBase>();
  }

  /// Edit Business Chat Link.
  ///
  /// ID: `8c3410af`.
  Future<Result<BusinessChatLinkBase>> editBusinessChatLink({
    required String slug,
    required InputBusinessChatLinkBase link,
  }) async {
    // Preparing the request.
    final request = AccountEditBusinessChatLink(slug: slug, link: link);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BusinessChatLinkBase>();
  }

  /// Delete Business Chat Link.
  ///
  /// ID: `60073674`.
  Future<Result<Boolean>> deleteBusinessChatLink({required String slug}) async {
    // Preparing the request.
    final request = AccountDeleteBusinessChatLink(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Business Chat Links.
  ///
  /// ID: `6f70dde1`.
  Future<Result<AccountBusinessChatLinksBase>> getBusinessChatLinks() async {
    // Preparing the request.
    final request = AccountGetBusinessChatLinks();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountBusinessChatLinksBase>();
  }

  /// Resolve Business Chat Link.
  ///
  /// ID: `5492e5ee`.
  Future<Result<AccountResolvedBusinessChatLinksBase>> resolveBusinessChatLink({
    required String slug,
  }) async {
    // Preparing the request.
    final request = AccountResolveBusinessChatLink(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountResolvedBusinessChatLinksBase>();
  }

  /// Update Personal Channel.
  ///
  /// ID: `d94305e0`.
  Future<Result<Boolean>> updatePersonalChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = AccountUpdatePersonalChannel(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Sponsored Messages.
  ///
  /// ID: `b9d9a38d`.
  Future<Result<Boolean>> toggleSponsoredMessages({
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = AccountToggleSponsoredMessages(enabled: enabled);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Reactions Notify Settings.
  ///
  /// ID: `06dd654c`.
  Future<Result<ReactionsNotifySettingsBase>>
      getReactionsNotifySettings() async {
    // Preparing the request.
    final request = AccountGetReactionsNotifySettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ReactionsNotifySettingsBase>();
  }

  /// Set Reactions Notify Settings.
  ///
  /// ID: `316ce548`.
  Future<Result<ReactionsNotifySettingsBase>> setReactionsNotifySettings({
    required ReactionsNotifySettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSetReactionsNotifySettings(settings: settings);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ReactionsNotifySettingsBase>();
  }

  /// Get Collectible Emoji Statuses.
  ///
  /// ID: `2e7b4543`.
  Future<Result<AccountEmojiStatusesBase>> getCollectibleEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetCollectibleEmojiStatuses(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>();
  }

  /// Get Paid Messages Revenue.
  ///
  /// ID: `19ba4a67`.
  Future<Result<AccountPaidMessagesRevenueBase>> getPaidMessagesRevenue({
    InputPeerBase? parentPeer,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = AccountGetPaidMessagesRevenue(
      parentPeer: parentPeer,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPaidMessagesRevenueBase>();
  }

  /// Toggle No Paid Messages Exception.
  ///
  /// ID: `fe2eda76`.
  Future<Result<Boolean>> toggleNoPaidMessagesException({
    required bool refundCharged,
    required bool requirePayment,
    InputPeerBase? parentPeer,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = AccountToggleNoPaidMessagesException(
      refundCharged: refundCharged,
      requirePayment: requirePayment,
      parentPeer: parentPeer,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Main Profile Tab.
  ///
  /// ID: `5dee78b0`.
  Future<Result<Boolean>> setMainProfileTab({
    required ProfileTabBase tab,
  }) async {
    // Preparing the request.
    final request = AccountSetMainProfileTab(tab: tab);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Save Music.
  ///
  /// ID: `b26732a9`.
  Future<Result<Boolean>> saveMusic({
    required bool unsave,
    required InputDocumentBase id,
    InputDocumentBase? afterId,
  }) async {
    // Preparing the request.
    final request = AccountSaveMusic(unsave: unsave, id: id, afterId: afterId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Saved Music Ids.
  ///
  /// ID: `e09d5faf`.
  Future<Result<AccountSavedMusicIdsBase>> getSavedMusicIds({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetSavedMusicIds(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountSavedMusicIdsBase>();
  }

  /// Get Unique Gift Chat Themes.
  ///
  /// ID: `e42ce9c9`.
  Future<Result<AccountChatThemesBase>> getUniqueGiftChatThemes({
    required String offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetUniqueGiftChatThemes(
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountChatThemesBase>();
  }

  /// Init Passkey Registration.
  ///
  /// ID: `429547e8`.
  Future<Result<AccountPasskeyRegistrationOptionsBase>>
      initPasskeyRegistration() async {
    // Preparing the request.
    final request = AccountInitPasskeyRegistration();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPasskeyRegistrationOptionsBase>();
  }

  /// Register Passkey.
  ///
  /// ID: `55b41fd6`.
  Future<Result<PasskeyBase>> registerPasskey({
    required InputPasskeyCredentialBase credential,
  }) async {
    // Preparing the request.
    final request = AccountRegisterPasskey(credential: credential);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PasskeyBase>();
  }

  /// Get Passkeys.
  ///
  /// ID: `ea1f0c52`.
  Future<Result<AccountPasskeysBase>> getPasskeys() async {
    // Preparing the request.
    final request = AccountGetPasskeys();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AccountPasskeysBase>();
  }

  /// Delete Passkey.
  ///
  /// ID: `f5b5563f`.
  Future<Result<Boolean>> deletePasskey({required String id}) async {
    // Preparing the request.
    final request = AccountDeletePasskey(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }
}

/// Users.
class ClientUsers {
  /// Constructor.
  const ClientUsers._(this._c);
  final Client _c;

  /// Get Users.
  ///
  /// ID: `0d91a548`.
  Future<Result<Vector<UserBase>>> getUsers({
    required List<InputUserBase> id,
  }) async {
    // Preparing the request.
    final request = UsersGetUsers(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<UserBase>();
  }

  /// Get Full User.
  ///
  /// ID: `b60f5918`.
  Future<Result<UsersUserFullBase>> getFullUser({
    required InputUserBase id,
  }) async {
    // Preparing the request.
    final request = UsersGetFullUser(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UsersUserFullBase>();
  }

  /// Set Secure Value Errors.
  ///
  /// ID: `90c894b5`.
  Future<Result<Boolean>> setSecureValueErrors({
    required InputUserBase id,
    required List<SecureValueErrorBase> errors,
  }) async {
    // Preparing the request.
    final request = UsersSetSecureValueErrors(id: id, errors: errors);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Requirements To Contact.
  ///
  /// ID: `d89a83a3`.
  Future<Result<Vector<RequirementToContactBase>>> getRequirementsToContact({
    required List<InputUserBase> id,
  }) async {
    // Preparing the request.
    final request = UsersGetRequirementsToContact(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<RequirementToContactBase>();
  }

  /// Get Saved Music.
  ///
  /// ID: `788d7fe3`.
  Future<Result<UsersSavedMusicBase>> getSavedMusic({
    required InputUserBase id,
    required int offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = UsersGetSavedMusic(
      id: id,
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UsersSavedMusicBase>();
  }

  /// Get Saved Music By I D.
  ///
  /// ID: `7573a4e9`.
  Future<Result<UsersSavedMusicBase>> getSavedMusicByID({
    required InputUserBase id,
    required List<InputDocumentBase> documents,
  }) async {
    // Preparing the request.
    final request = UsersGetSavedMusicByID(id: id, documents: documents);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UsersSavedMusicBase>();
  }

  /// Suggest Birthday.
  ///
  /// ID: `fc533372`.
  Future<Result<UpdatesBase>> suggestBirthday({
    required InputUserBase id,
    required BirthdayBase birthday,
  }) async {
    // Preparing the request.
    final request = UsersSuggestBirthday(id: id, birthday: birthday);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }
}

/// Contacts.
class ClientContacts {
  /// Constructor.
  const ClientContacts._(this._c);
  final Client _c;

  /// Get Contact I Ds.
  ///
  /// ID: `7adc669d`.
  Future<Result<Vector<int>>> getContactIDs({required int hash}) async {
    // Preparing the request.
    final request = ContactsGetContactIDs(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Get Statuses.
  ///
  /// ID: `c4a353ee`.
  Future<Result<Vector<ContactStatusBase>>> getStatuses() async {
    // Preparing the request.
    final request = ContactsGetStatuses();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<ContactStatusBase>();
  }

  /// Get Contacts.
  ///
  /// ID: `5dd69e12`.
  Future<Result<ContactsContactsBase>> getContacts({required int hash}) async {
    // Preparing the request.
    final request = ContactsGetContacts(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsContactsBase>();
  }

  /// Import Contacts.
  ///
  /// ID: `2c800be5`.
  Future<Result<ContactsImportedContactsBase>> importContacts({
    required List<InputContactBase> contacts,
  }) async {
    // Preparing the request.
    final request = ContactsImportContacts(contacts: contacts);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsImportedContactsBase>();
  }

  /// Delete Contacts.
  ///
  /// ID: `096a0e00`.
  Future<Result<UpdatesBase>> deleteContacts({
    required List<InputUserBase> id,
  }) async {
    // Preparing the request.
    final request = ContactsDeleteContacts(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete By Phones.
  ///
  /// ID: `1013fd9e`.
  Future<Result<Boolean>> deleteByPhones({required List<String> phones}) async {
    // Preparing the request.
    final request = ContactsDeleteByPhones(phones: phones);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Block.
  ///
  /// ID: `2e2e8734`.
  Future<Result<Boolean>> block({
    required bool myStoriesFrom,
    required InputPeerBase id,
  }) async {
    // Preparing the request.
    final request = ContactsBlock(myStoriesFrom: myStoriesFrom, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Unblock.
  ///
  /// ID: `b550d328`.
  Future<Result<Boolean>> unblock({
    required bool myStoriesFrom,
    required InputPeerBase id,
  }) async {
    // Preparing the request.
    final request = ContactsUnblock(myStoriesFrom: myStoriesFrom, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Blocked.
  ///
  /// ID: `9a868f80`.
  Future<Result<ContactsBlockedBase>> getBlocked({
    required bool myStoriesFrom,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ContactsGetBlocked(
      myStoriesFrom: myStoriesFrom,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsBlockedBase>();
  }

  /// Search.
  ///
  /// ID: `11f812d8`.
  Future<Result<ContactsFoundBase>> search({
    required String q,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ContactsSearch(q: q, limit: limit);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsFoundBase>();
  }

  /// Resolve Username.
  ///
  /// ID: `725afbbc`.
  Future<Result<ContactsResolvedPeerBase>> resolveUsername({
    required String username,
    String? referer,
  }) async {
    // Preparing the request.
    final request = ContactsResolveUsername(
      username: username,
      referer: referer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsResolvedPeerBase>();
  }

  /// Get Top Peers.
  ///
  /// ID: `973478b6`.
  Future<Result<ContactsTopPeersBase>> getTopPeers({
    required bool correspondents,
    required bool botsPm,
    required bool botsInline,
    required bool phoneCalls,
    required bool forwardUsers,
    required bool forwardChats,
    required bool groups,
    required bool channels,
    required bool botsApp,
    required int offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = ContactsGetTopPeers(
      correspondents: correspondents,
      botsPm: botsPm,
      botsInline: botsInline,
      phoneCalls: phoneCalls,
      forwardUsers: forwardUsers,
      forwardChats: forwardChats,
      groups: groups,
      channels: channels,
      botsApp: botsApp,
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsTopPeersBase>();
  }

  /// Reset Top Peer Rating.
  ///
  /// ID: `1ae373ac`.
  Future<Result<Boolean>> resetTopPeerRating({
    required TopPeerCategoryBase category,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = ContactsResetTopPeerRating(category: category, peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Saved.
  ///
  /// ID: `879537f1`.
  Future<Result<Boolean>> resetSaved() async {
    // Preparing the request.
    final request = ContactsResetSaved();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Saved.
  ///
  /// ID: `82f1e39f`.
  Future<Result<Vector<SavedContactBase>>> getSaved() async {
    // Preparing the request.
    final request = ContactsGetSaved();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<SavedContactBase>();
  }

  /// Toggle Top Peers.
  ///
  /// ID: `8514bdda`.
  Future<Result<Boolean>> toggleTopPeers({required bool enabled}) async {
    // Preparing the request.
    final request = ContactsToggleTopPeers(enabled: enabled);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Add Contact.
  ///
  /// ID: `d9ba2e54`.
  Future<Result<UpdatesBase>> addContact({
    required bool addPhonePrivacyException,
    required InputUserBase id,
    required String firstName,
    required String lastName,
    required String phone,
    TextWithEntitiesBase? note,
  }) async {
    // Preparing the request.
    final request = ContactsAddContact(
      addPhonePrivacyException: addPhonePrivacyException,
      id: id,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      note: note,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Accept Contact.
  ///
  /// ID: `f831a20f`.
  Future<Result<UpdatesBase>> acceptContact({required InputUserBase id}) async {
    // Preparing the request.
    final request = ContactsAcceptContact(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Located.
  ///
  /// ID: `d348bc44`.
  Future<Result<UpdatesBase>> getLocated({
    required bool background,
    required InputGeoPointBase geoPoint,
    int? selfExpires,
  }) async {
    // Preparing the request.
    final request = ContactsGetLocated(
      background: background,
      geoPoint: geoPoint,
      selfExpires: selfExpires,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Block From Replies.
  ///
  /// ID: `29a8962c`.
  Future<Result<UpdatesBase>> blockFromReplies({
    required bool deleteMessage,
    required bool deleteHistory,
    required bool reportSpam,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = ContactsBlockFromReplies(
      deleteMessage: deleteMessage,
      deleteHistory: deleteHistory,
      reportSpam: reportSpam,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Resolve Phone.
  ///
  /// ID: `8af94344`.
  Future<Result<ContactsResolvedPeerBase>> resolvePhone({
    required String phone,
  }) async {
    // Preparing the request.
    final request = ContactsResolvePhone(phone: phone);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsResolvedPeerBase>();
  }

  /// Export Contact Token.
  ///
  /// ID: `f8654027`.
  Future<Result<ExportedContactTokenBase>> exportContactToken() async {
    // Preparing the request.
    final request = ContactsExportContactToken();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ExportedContactTokenBase>();
  }

  /// Import Contact Token.
  ///
  /// ID: `13005788`.
  Future<Result<UserBase>> importContactToken({required String token}) async {
    // Preparing the request.
    final request = ContactsImportContactToken(token: token);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UserBase>();
  }

  /// Edit Close Friends.
  ///
  /// ID: `ba6705f0`.
  Future<Result<Boolean>> editCloseFriends({required List<int> id}) async {
    // Preparing the request.
    final request = ContactsEditCloseFriends(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Blocked.
  ///
  /// ID: `94c65c76`.
  Future<Result<Boolean>> setBlocked({
    required bool myStoriesFrom,
    required List<InputPeerBase> id,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ContactsSetBlocked(
      myStoriesFrom: myStoriesFrom,
      id: id,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Birthdays.
  ///
  /// ID: `daeda864`.
  Future<Result<ContactsContactBirthdaysBase>> getBirthdays() async {
    // Preparing the request.
    final request = ContactsGetBirthdays();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsContactBirthdaysBase>();
  }

  /// Get Sponsored Peers.
  ///
  /// ID: `b6c8c393`.
  Future<Result<ContactsSponsoredPeersBase>> getSponsoredPeers({
    required String q,
  }) async {
    // Preparing the request.
    final request = ContactsGetSponsoredPeers(q: q);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ContactsSponsoredPeersBase>();
  }

  /// Update Contact Note.
  ///
  /// ID: `139f63fb`.
  Future<Result<Boolean>> updateContactNote({
    required InputUserBase id,
    required TextWithEntitiesBase note,
  }) async {
    // Preparing the request.
    final request = ContactsUpdateContactNote(id: id, note: note);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }
}

/// Messages.
class ClientMessages {
  /// Constructor.
  const ClientMessages._(this._c);
  final Client _c;

  /// Get Messages.
  ///
  /// ID: `63c66506`.
  Future<Result<MessagesMessagesBase>> getMessages({
    required List<InputMessageBase> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessages(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Get Dialogs.
  ///
  /// ID: `a0f4cb4f`.
  Future<Result<MessagesDialogsBase>> getDialogs({
    required bool excludePinned,
    int? folderId,
    required DateTime offsetDate,
    required int offsetId,
    required InputPeerBase offsetPeer,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetDialogs(
      excludePinned: excludePinned,
      folderId: folderId,
      offsetDate: offsetDate,
      offsetId: offsetId,
      offsetPeer: offsetPeer,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesDialogsBase>();
  }

  /// Get History.
  ///
  /// ID: `4423e6c5`.
  Future<Result<MessagesMessagesBase>> getHistory({
    required InputPeerBase peer,
    required int offsetId,
    required DateTime offsetDate,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetHistory(
      peer: peer,
      offsetId: offsetId,
      offsetDate: offsetDate,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Search.
  ///
  /// ID: `29ee847a`.
  Future<Result<MessagesMessagesBase>> search({
    required InputPeerBase peer,
    required String q,
    InputPeerBase? fromId,
    InputPeerBase? savedPeerId,
    List<ReactionBase>? savedReaction,
    int? topMsgId,
    required MessagesFilterBase filter,
    required DateTime minDate,
    required DateTime maxDate,
    required int offsetId,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearch(
      peer: peer,
      q: q,
      fromId: fromId,
      savedPeerId: savedPeerId,
      savedReaction: savedReaction,
      topMsgId: topMsgId,
      filter: filter,
      minDate: minDate,
      maxDate: maxDate,
      offsetId: offsetId,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Read History.
  ///
  /// ID: `0e306d3a`.
  Future<Result<MessagesAffectedMessagesBase>> readHistory({
    required InputPeerBase peer,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = MessagesReadHistory(peer: peer, maxId: maxId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>();
  }

  /// Delete History.
  ///
  /// ID: `b08f922a`.
  Future<Result<MessagesAffectedHistoryBase>> deleteHistory({
    required bool justClear,
    required bool revoke,
    required InputPeerBase peer,
    required int maxId,
    DateTime? minDate,
    DateTime? maxDate,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteHistory(
      justClear: justClear,
      revoke: revoke,
      peer: peer,
      maxId: maxId,
      minDate: minDate,
      maxDate: maxDate,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Delete Messages.
  ///
  /// ID: `e58e95d2`.
  Future<Result<MessagesAffectedMessagesBase>> deleteMessages({
    required bool revoke,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteMessages(revoke: revoke, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>();
  }

  /// Received Messages.
  ///
  /// ID: `05a954c0`.
  Future<Result<Vector<ReceivedNotifyMessageBase>>> receivedMessages({
    required int maxId,
  }) async {
    // Preparing the request.
    final request = MessagesReceivedMessages(maxId: maxId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<ReceivedNotifyMessageBase>();
  }

  /// Set Typing.
  ///
  /// ID: `58943ee2`.
  Future<Result<Boolean>> setTyping({
    required InputPeerBase peer,
    int? topMsgId,
    required SendMessageActionBase action,
  }) async {
    // Preparing the request.
    final request = MessagesSetTyping(
      peer: peer,
      topMsgId: topMsgId,
      action: action,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Message.
  ///
  /// ID: `545cd15a`.
  Future<Result<UpdatesBase>> sendMessage({
    required bool noWebpage,
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required bool allowPaidFloodskip,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required String message,
    required int randomId,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
    int? scheduleRepeatPeriod,
    InputPeerBase? sendAs,
    InputQuickReplyShortcutBase? quickReplyShortcut,
    int? effect,
    int? allowPaidStars,
    SuggestedPostBase? suggestedPost,
  }) async {
    // Preparing the request.
    final request = MessagesSendMessage(
      noWebpage: noWebpage,
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      noforwards: noforwards,
      updateStickersetsOrder: updateStickersetsOrder,
      invertMedia: invertMedia,
      allowPaidFloodskip: allowPaidFloodskip,
      peer: peer,
      replyTo: replyTo,
      message: message,
      randomId: randomId,
      replyMarkup: replyMarkup,
      entities: entities,
      scheduleDate: scheduleDate,
      scheduleRepeatPeriod: scheduleRepeatPeriod,
      sendAs: sendAs,
      quickReplyShortcut: quickReplyShortcut,
      effect: effect,
      allowPaidStars: allowPaidStars,
      suggestedPost: suggestedPost,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Media.
  ///
  /// ID: `0330e77f`.
  Future<Result<UpdatesBase>> sendMedia({
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required bool allowPaidFloodskip,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required InputMediaBase media,
    required String message,
    required int randomId,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
    int? scheduleRepeatPeriod,
    InputPeerBase? sendAs,
    InputQuickReplyShortcutBase? quickReplyShortcut,
    int? effect,
    int? allowPaidStars,
    SuggestedPostBase? suggestedPost,
  }) async {
    // Preparing the request.
    final request = MessagesSendMedia(
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      noforwards: noforwards,
      updateStickersetsOrder: updateStickersetsOrder,
      invertMedia: invertMedia,
      allowPaidFloodskip: allowPaidFloodskip,
      peer: peer,
      replyTo: replyTo,
      media: media,
      message: message,
      randomId: randomId,
      replyMarkup: replyMarkup,
      entities: entities,
      scheduleDate: scheduleDate,
      scheduleRepeatPeriod: scheduleRepeatPeriod,
      sendAs: sendAs,
      quickReplyShortcut: quickReplyShortcut,
      effect: effect,
      allowPaidStars: allowPaidStars,
      suggestedPost: suggestedPost,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Forward Messages.
  ///
  /// ID: `13704a7c`.
  Future<Result<UpdatesBase>> forwardMessages({
    required bool silent,
    required bool background,
    required bool withMyScore,
    required bool dropAuthor,
    required bool dropMediaCaptions,
    required bool noforwards,
    required bool allowPaidFloodskip,
    required InputPeerBase fromPeer,
    required List<int> id,
    required List<int> randomId,
    required InputPeerBase toPeer,
    int? topMsgId,
    InputReplyToBase? replyTo,
    DateTime? scheduleDate,
    int? scheduleRepeatPeriod,
    InputPeerBase? sendAs,
    InputQuickReplyShortcutBase? quickReplyShortcut,
    int? effect,
    int? videoTimestamp,
    int? allowPaidStars,
    SuggestedPostBase? suggestedPost,
  }) async {
    // Preparing the request.
    final request = MessagesForwardMessages(
      silent: silent,
      background: background,
      withMyScore: withMyScore,
      dropAuthor: dropAuthor,
      dropMediaCaptions: dropMediaCaptions,
      noforwards: noforwards,
      allowPaidFloodskip: allowPaidFloodskip,
      fromPeer: fromPeer,
      id: id,
      randomId: randomId,
      toPeer: toPeer,
      topMsgId: topMsgId,
      replyTo: replyTo,
      scheduleDate: scheduleDate,
      scheduleRepeatPeriod: scheduleRepeatPeriod,
      sendAs: sendAs,
      quickReplyShortcut: quickReplyShortcut,
      effect: effect,
      videoTimestamp: videoTimestamp,
      allowPaidStars: allowPaidStars,
      suggestedPost: suggestedPost,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Report Spam.
  ///
  /// ID: `cf1592db`.
  Future<Result<Boolean>> reportSpam({required InputPeerBase peer}) async {
    // Preparing the request.
    final request = MessagesReportSpam(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Peer Settings.
  ///
  /// ID: `efd9a6a2`.
  Future<Result<MessagesPeerSettingsBase>> getPeerSettings({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetPeerSettings(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesPeerSettingsBase>();
  }

  /// Report.
  ///
  /// ID: `fc78af9b`.
  Future<Result<ReportResultBase>> report({
    required InputPeerBase peer,
    required List<int> id,
    required Uint8List option,
    required String message,
  }) async {
    // Preparing the request.
    final request = MessagesReport(
      peer: peer,
      id: id,
      option: option,
      message: message,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ReportResultBase>();
  }

  /// Get Chats.
  ///
  /// ID: `49e9528f`.
  Future<Result<MessagesChatsBase>> getChats({required List<int> id}) async {
    // Preparing the request.
    final request = MessagesGetChats(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Get Full Chat.
  ///
  /// ID: `aeb00b34`.
  Future<Result<MessagesChatFullBase>> getFullChat({
    required int chatId,
  }) async {
    // Preparing the request.
    final request = MessagesGetFullChat(chatId: chatId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatFullBase>();
  }

  /// Edit Chat Title.
  ///
  /// ID: `73783ffd`.
  Future<Result<UpdatesBase>> editChatTitle({
    required int chatId,
    required String title,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatTitle(chatId: chatId, title: title);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Chat Photo.
  ///
  /// ID: `35ddd674`.
  Future<Result<UpdatesBase>> editChatPhoto({
    required int chatId,
    required InputChatPhotoBase photo,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatPhoto(chatId: chatId, photo: photo);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Add Chat User.
  ///
  /// ID: `cbc6d107`.
  Future<Result<MessagesInvitedUsersBase>> addChatUser({
    required int chatId,
    required InputUserBase userId,
    required int fwdLimit,
  }) async {
    // Preparing the request.
    final request = MessagesAddChatUser(
      chatId: chatId,
      userId: userId,
      fwdLimit: fwdLimit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesInvitedUsersBase>();
  }

  /// Delete Chat User.
  ///
  /// ID: `a2185cab`.
  Future<Result<UpdatesBase>> deleteChatUser({
    required bool revokeHistory,
    required int chatId,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteChatUser(
      revokeHistory: revokeHistory,
      chatId: chatId,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Create Chat.
  ///
  /// ID: `92ceddd4`.
  Future<Result<MessagesInvitedUsersBase>> createChat({
    required List<InputUserBase> users,
    required String title,
    int? ttlPeriod,
  }) async {
    // Preparing the request.
    final request = MessagesCreateChat(
      users: users,
      title: title,
      ttlPeriod: ttlPeriod,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesInvitedUsersBase>();
  }

  /// Get Dh Config.
  ///
  /// ID: `26cf8950`.
  Future<Result<MessagesDhConfigBase>> getDhConfig({
    required int version,
    required int randomLength,
  }) async {
    // Preparing the request.
    final request = MessagesGetDhConfig(
      version: version,
      randomLength: randomLength,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesDhConfigBase>();
  }

  /// Request Encryption.
  ///
  /// ID: `f64daf43`.
  Future<Result<EncryptedChatBase>> requestEncryption({
    required InputUserBase userId,
    required int randomId,
    required Uint8List gA,
  }) async {
    // Preparing the request.
    final request = MessagesRequestEncryption(
      userId: userId,
      randomId: randomId,
      gA: gA,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EncryptedChatBase>();
  }

  /// Accept Encryption.
  ///
  /// ID: `3dbc0415`.
  Future<Result<EncryptedChatBase>> acceptEncryption({
    required InputEncryptedChatBase peer,
    required Uint8List gB,
    required int keyFingerprint,
  }) async {
    // Preparing the request.
    final request = MessagesAcceptEncryption(
      peer: peer,
      gB: gB,
      keyFingerprint: keyFingerprint,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EncryptedChatBase>();
  }

  /// Discard Encryption.
  ///
  /// ID: `f393aea0`.
  Future<Result<Boolean>> discardEncryption({
    required bool deleteHistory,
    required int chatId,
  }) async {
    // Preparing the request.
    final request = MessagesDiscardEncryption(
      deleteHistory: deleteHistory,
      chatId: chatId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Encrypted Typing.
  ///
  /// ID: `791451ed`.
  Future<Result<Boolean>> setEncryptedTyping({
    required InputEncryptedChatBase peer,
    required bool typing,
  }) async {
    // Preparing the request.
    final request = MessagesSetEncryptedTyping(peer: peer, typing: typing);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Read Encrypted History.
  ///
  /// ID: `7f4b690a`.
  Future<Result<Boolean>> readEncryptedHistory({
    required InputEncryptedChatBase peer,
    required DateTime maxDate,
  }) async {
    // Preparing the request.
    final request = MessagesReadEncryptedHistory(peer: peer, maxDate: maxDate);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Encrypted.
  ///
  /// ID: `44fa7a15`.
  Future<Result<MessagesSentEncryptedMessageBase>> sendEncrypted({
    required bool silent,
    required InputEncryptedChatBase peer,
    required int randomId,
    required Uint8List data,
  }) async {
    // Preparing the request.
    final request = MessagesSendEncrypted(
      silent: silent,
      peer: peer,
      randomId: randomId,
      data: data,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>();
  }

  /// Send Encrypted File.
  ///
  /// ID: `5559481d`.
  Future<Result<MessagesSentEncryptedMessageBase>> sendEncryptedFile({
    required bool silent,
    required InputEncryptedChatBase peer,
    required int randomId,
    required Uint8List data,
    required InputEncryptedFileBase file,
  }) async {
    // Preparing the request.
    final request = MessagesSendEncryptedFile(
      silent: silent,
      peer: peer,
      randomId: randomId,
      data: data,
      file: file,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>();
  }

  /// Send Encrypted Service.
  ///
  /// ID: `32d439a4`.
  Future<Result<MessagesSentEncryptedMessageBase>> sendEncryptedService({
    required InputEncryptedChatBase peer,
    required int randomId,
    required Uint8List data,
  }) async {
    // Preparing the request.
    final request = MessagesSendEncryptedService(
      peer: peer,
      randomId: randomId,
      data: data,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>();
  }

  /// Received Queue.
  ///
  /// ID: `55a5bb66`.
  Future<Result<Vector<int>>> receivedQueue({required int maxQts}) async {
    // Preparing the request.
    final request = MessagesReceivedQueue(maxQts: maxQts);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Report Encrypted Spam.
  ///
  /// ID: `4b0c8c0f`.
  Future<Result<Boolean>> reportEncryptedSpam({
    required InputEncryptedChatBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesReportEncryptedSpam(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Read Message Contents.
  ///
  /// ID: `36a73f77`.
  Future<Result<MessagesAffectedMessagesBase>> readMessageContents({
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesReadMessageContents(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>();
  }

  /// Get Stickers.
  ///
  /// ID: `d5a5d3a1`.
  Future<Result<MessagesStickersBase>> getStickers({
    required String emoticon,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetStickers(emoticon: emoticon, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickersBase>();
  }

  /// Get All Stickers.
  ///
  /// ID: `b8a0a1a8`.
  Future<Result<MessagesAllStickersBase>> getAllStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAllStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAllStickersBase>();
  }

  /// Get Web Page Preview.
  ///
  /// ID: `570d6f6f`.
  Future<Result<MessagesWebPagePreviewBase>> getWebPagePreview({
    required String message,
    List<MessageEntityBase>? entities,
  }) async {
    // Preparing the request.
    final request = MessagesGetWebPagePreview(
      message: message,
      entities: entities,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesWebPagePreviewBase>();
  }

  /// Export Chat Invite.
  ///
  /// ID: `a455de90`.
  Future<Result<ExportedChatInviteBase>> exportChatInvite({
    required bool legacyRevokePermanent,
    required bool requestNeeded,
    required InputPeerBase peer,
    DateTime? expireDate,
    int? usageLimit,
    String? title,
    StarsSubscriptionPricingBase? subscriptionPricing,
  }) async {
    // Preparing the request.
    final request = MessagesExportChatInvite(
      legacyRevokePermanent: legacyRevokePermanent,
      requestNeeded: requestNeeded,
      peer: peer,
      expireDate: expireDate,
      usageLimit: usageLimit,
      title: title,
      subscriptionPricing: subscriptionPricing,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ExportedChatInviteBase>();
  }

  /// Check Chat Invite.
  ///
  /// ID: `3eadb1bb`.
  Future<Result<ChatInviteBase>> checkChatInvite({required String hash}) async {
    // Preparing the request.
    final request = MessagesCheckChatInvite(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatInviteBase>();
  }

  /// Import Chat Invite.
  ///
  /// ID: `6c50051c`.
  Future<Result<UpdatesBase>> importChatInvite({required String hash}) async {
    // Preparing the request.
    final request = MessagesImportChatInvite(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Sticker Set.
  ///
  /// ID: `c8a0ec74`.
  Future<Result<MessagesStickerSetBase>> getStickerSet({
    required InputStickerSetBase stickerset,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetStickerSet(stickerset: stickerset, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Install Sticker Set.
  ///
  /// ID: `c78fe460`.
  Future<Result<MessagesStickerSetInstallResultBase>> installStickerSet({
    required InputStickerSetBase stickerset,
    required bool archived,
  }) async {
    // Preparing the request.
    final request = MessagesInstallStickerSet(
      stickerset: stickerset,
      archived: archived,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetInstallResultBase>();
  }

  /// Uninstall Sticker Set.
  ///
  /// ID: `f96e55de`.
  Future<Result<Boolean>> uninstallStickerSet({
    required InputStickerSetBase stickerset,
  }) async {
    // Preparing the request.
    final request = MessagesUninstallStickerSet(stickerset: stickerset);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Start Bot.
  ///
  /// ID: `e6df7378`.
  Future<Result<UpdatesBase>> startBot({
    required InputUserBase bot,
    required InputPeerBase peer,
    required int randomId,
    required String startParam,
  }) async {
    // Preparing the request.
    final request = MessagesStartBot(
      bot: bot,
      peer: peer,
      randomId: randomId,
      startParam: startParam,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Messages Views.
  ///
  /// ID: `5784d3e1`.
  Future<Result<MessagesMessageViewsBase>> getMessagesViews({
    required InputPeerBase peer,
    required List<int> id,
    required bool increment,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessagesViews(
      peer: peer,
      id: id,
      increment: increment,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessageViewsBase>();
  }

  /// Edit Chat Admin.
  ///
  /// ID: `a85bd1c2`.
  Future<Result<Boolean>> editChatAdmin({
    required int chatId,
    required InputUserBase userId,
    required bool isAdmin,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatAdmin(
      chatId: chatId,
      userId: userId,
      isAdmin: isAdmin,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Migrate Chat.
  ///
  /// ID: `a2875319`.
  Future<Result<UpdatesBase>> migrateChat({required int chatId}) async {
    // Preparing the request.
    final request = MessagesMigrateChat(chatId: chatId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Search Global.
  ///
  /// ID: `4bc6589a`.
  Future<Result<MessagesMessagesBase>> searchGlobal({
    required bool broadcastsOnly,
    required bool groupsOnly,
    required bool usersOnly,
    int? folderId,
    required String q,
    required MessagesFilterBase filter,
    required DateTime minDate,
    required DateTime maxDate,
    required int offsetRate,
    required InputPeerBase offsetPeer,
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesSearchGlobal(
      broadcastsOnly: broadcastsOnly,
      groupsOnly: groupsOnly,
      usersOnly: usersOnly,
      folderId: folderId,
      q: q,
      filter: filter,
      minDate: minDate,
      maxDate: maxDate,
      offsetRate: offsetRate,
      offsetPeer: offsetPeer,
      offsetId: offsetId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Reorder Sticker Sets.
  ///
  /// ID: `78337739`.
  Future<Result<Boolean>> reorderStickerSets({
    required bool masks,
    required bool emojis,
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = MessagesReorderStickerSets(
      masks: masks,
      emojis: emojis,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Document By Hash.
  ///
  /// ID: `b1f2061f`.
  Future<Result<DocumentBase>> getDocumentByHash({
    required Uint8List sha256,
    required int size,
    required String mimeType,
  }) async {
    // Preparing the request.
    final request = MessagesGetDocumentByHash(
      sha256: sha256,
      size: size,
      mimeType: mimeType,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DocumentBase>();
  }

  /// Get Saved Gifs.
  ///
  /// ID: `5cf09635`.
  Future<Result<MessagesSavedGifsBase>> getSavedGifs({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedGifs(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSavedGifsBase>();
  }

  /// Save Gif.
  ///
  /// ID: `327a30cb`.
  Future<Result<Boolean>> saveGif({
    required InputDocumentBase id,
    required bool unsave,
  }) async {
    // Preparing the request.
    final request = MessagesSaveGif(id: id, unsave: unsave);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Inline Bot Results.
  ///
  /// ID: `514e999d`.
  Future<Result<MessagesBotResultsBase>> getInlineBotResults({
    required InputUserBase bot,
    required InputPeerBase peer,
    InputGeoPointBase? geoPoint,
    required String query,
    required String offset,
  }) async {
    // Preparing the request.
    final request = MessagesGetInlineBotResults(
      bot: bot,
      peer: peer,
      geoPoint: geoPoint,
      query: query,
      offset: offset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesBotResultsBase>();
  }

  /// Set Inline Bot Results.
  ///
  /// ID: `bb12a419`.
  Future<Result<Boolean>> setInlineBotResults({
    required bool gallery,
    required bool private,
    required int queryId,
    required List<InputBotInlineResultBase> results,
    required int cacheTime,
    String? nextOffset,
    InlineBotSwitchPMBase? switchPm,
    InlineBotWebViewBase? switchWebview,
  }) async {
    // Preparing the request.
    final request = MessagesSetInlineBotResults(
      gallery: gallery,
      private: private,
      queryId: queryId,
      results: results,
      cacheTime: cacheTime,
      nextOffset: nextOffset,
      switchPm: switchPm,
      switchWebview: switchWebview,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Inline Bot Result.
  ///
  /// ID: `c0cf7646`.
  Future<Result<UpdatesBase>> sendInlineBotResult({
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool hideVia,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required int randomId,
    required int queryId,
    required String id,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
    InputQuickReplyShortcutBase? quickReplyShortcut,
    int? allowPaidStars,
  }) async {
    // Preparing the request.
    final request = MessagesSendInlineBotResult(
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      hideVia: hideVia,
      peer: peer,
      replyTo: replyTo,
      randomId: randomId,
      queryId: queryId,
      id: id,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
      quickReplyShortcut: quickReplyShortcut,
      allowPaidStars: allowPaidStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Message Edit Data.
  ///
  /// ID: `fda68d36`.
  Future<Result<MessagesMessageEditDataBase>> getMessageEditData({
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessageEditData(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessageEditDataBase>();
  }

  /// Edit Message.
  ///
  /// ID: `51e842e1`.
  Future<Result<UpdatesBase>> editMessage({
    required bool noWebpage,
    required bool invertMedia,
    required InputPeerBase peer,
    required int id,
    String? message,
    InputMediaBase? media,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
    int? scheduleRepeatPeriod,
    int? quickReplyShortcutId,
  }) async {
    // Preparing the request.
    final request = MessagesEditMessage(
      noWebpage: noWebpage,
      invertMedia: invertMedia,
      peer: peer,
      id: id,
      message: message,
      media: media,
      replyMarkup: replyMarkup,
      entities: entities,
      scheduleDate: scheduleDate,
      scheduleRepeatPeriod: scheduleRepeatPeriod,
      quickReplyShortcutId: quickReplyShortcutId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Inline Bot Message.
  ///
  /// ID: `83557dba`.
  Future<Result<Boolean>> editInlineBotMessage({
    required bool noWebpage,
    required bool invertMedia,
    required InputBotInlineMessageIDBase id,
    String? message,
    InputMediaBase? media,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
  }) async {
    // Preparing the request.
    final request = MessagesEditInlineBotMessage(
      noWebpage: noWebpage,
      invertMedia: invertMedia,
      id: id,
      message: message,
      media: media,
      replyMarkup: replyMarkup,
      entities: entities,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot Callback Answer.
  ///
  /// ID: `9342ca07`.
  Future<Result<MessagesBotCallbackAnswerBase>> getBotCallbackAnswer({
    required bool game,
    required InputPeerBase peer,
    required int msgId,
    Uint8List? data,
    InputCheckPasswordSRPBase? password,
  }) async {
    // Preparing the request.
    final request = MessagesGetBotCallbackAnswer(
      game: game,
      peer: peer,
      msgId: msgId,
      data: data,
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesBotCallbackAnswerBase>();
  }

  /// Set Bot Callback Answer.
  ///
  /// ID: `d58f130a`.
  Future<Result<Boolean>> setBotCallbackAnswer({
    required bool alert,
    required int queryId,
    String? message,
    String? url,
    required int cacheTime,
  }) async {
    // Preparing the request.
    final request = MessagesSetBotCallbackAnswer(
      alert: alert,
      queryId: queryId,
      message: message,
      url: url,
      cacheTime: cacheTime,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Peer Dialogs.
  ///
  /// ID: `e470bcfd`.
  Future<Result<MessagesPeerDialogsBase>> getPeerDialogs({
    required List<InputDialogPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = MessagesGetPeerDialogs(peers: peers);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesPeerDialogsBase>();
  }

  /// Save Draft.
  ///
  /// ID: `54ae308e`.
  Future<Result<Boolean>> saveDraft({
    required bool noWebpage,
    required bool invertMedia,
    InputReplyToBase? replyTo,
    required InputPeerBase peer,
    required String message,
    List<MessageEntityBase>? entities,
    InputMediaBase? media,
    int? effect,
    SuggestedPostBase? suggestedPost,
  }) async {
    // Preparing the request.
    final request = MessagesSaveDraft(
      noWebpage: noWebpage,
      invertMedia: invertMedia,
      replyTo: replyTo,
      peer: peer,
      message: message,
      entities: entities,
      media: media,
      effect: effect,
      suggestedPost: suggestedPost,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get All Drafts.
  ///
  /// ID: `6a3f8d65`.
  Future<Result<UpdatesBase>> getAllDrafts() async {
    // Preparing the request.
    final request = MessagesGetAllDrafts();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Featured Stickers.
  ///
  /// ID: `64780b14`.
  Future<Result<MessagesFeaturedStickersBase>> getFeaturedStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFeaturedStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>();
  }

  /// Read Featured Stickers.
  ///
  /// ID: `5b118126`.
  Future<Result<Boolean>> readFeaturedStickers({required List<int> id}) async {
    // Preparing the request.
    final request = MessagesReadFeaturedStickers(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Recent Stickers.
  ///
  /// ID: `9da9403b`.
  Future<Result<MessagesRecentStickersBase>> getRecentStickers({
    required bool attached,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetRecentStickers(attached: attached, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesRecentStickersBase>();
  }

  /// Save Recent Sticker.
  ///
  /// ID: `392718f8`.
  Future<Result<Boolean>> saveRecentSticker({
    required bool attached,
    required InputDocumentBase id,
    required bool unsave,
  }) async {
    // Preparing the request.
    final request = MessagesSaveRecentSticker(
      attached: attached,
      id: id,
      unsave: unsave,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Clear Recent Stickers.
  ///
  /// ID: `8999602d`.
  Future<Result<Boolean>> clearRecentStickers({required bool attached}) async {
    // Preparing the request.
    final request = MessagesClearRecentStickers(attached: attached);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Archived Stickers.
  ///
  /// ID: `57f17692`.
  Future<Result<MessagesArchivedStickersBase>> getArchivedStickers({
    required bool masks,
    required bool emojis,
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetArchivedStickers(
      masks: masks,
      emojis: emojis,
      offsetId: offsetId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesArchivedStickersBase>();
  }

  /// Get Mask Stickers.
  ///
  /// ID: `640f82b8`.
  Future<Result<MessagesAllStickersBase>> getMaskStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetMaskStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAllStickersBase>();
  }

  /// Get Attached Stickers.
  ///
  /// ID: `cc5b67cc`.
  Future<Result<Vector<StickerSetCoveredBase>>> getAttachedStickers({
    required InputStickeredMediaBase media,
  }) async {
    // Preparing the request.
    final request = MessagesGetAttachedStickers(media: media);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<StickerSetCoveredBase>();
  }

  /// Set Game Score.
  ///
  /// ID: `8ef8ecc0`.
  Future<Result<UpdatesBase>> setGameScore({
    required bool editMessage,
    required bool force,
    required InputPeerBase peer,
    required int id,
    required InputUserBase userId,
    required int score,
  }) async {
    // Preparing the request.
    final request = MessagesSetGameScore(
      editMessage: editMessage,
      force: force,
      peer: peer,
      id: id,
      userId: userId,
      score: score,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Set Inline Game Score.
  ///
  /// ID: `15ad9f64`.
  Future<Result<Boolean>> setInlineGameScore({
    required bool editMessage,
    required bool force,
    required InputBotInlineMessageIDBase id,
    required InputUserBase userId,
    required int score,
  }) async {
    // Preparing the request.
    final request = MessagesSetInlineGameScore(
      editMessage: editMessage,
      force: force,
      id: id,
      userId: userId,
      score: score,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Game High Scores.
  ///
  /// ID: `e822649d`.
  Future<Result<MessagesHighScoresBase>> getGameHighScores({
    required InputPeerBase peer,
    required int id,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = MessagesGetGameHighScores(
      peer: peer,
      id: id,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesHighScoresBase>();
  }

  /// Get Inline Game High Scores.
  ///
  /// ID: `0f635e1b`.
  Future<Result<MessagesHighScoresBase>> getInlineGameHighScores({
    required InputBotInlineMessageIDBase id,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = MessagesGetInlineGameHighScores(id: id, userId: userId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesHighScoresBase>();
  }

  /// Get Common Chats.
  ///
  /// ID: `e40ca104`.
  Future<Result<MessagesChatsBase>> getCommonChats({
    required InputUserBase userId,
    required int maxId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetCommonChats(
      userId: userId,
      maxId: maxId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Get Web Page.
  ///
  /// ID: `8d9692a3`.
  Future<Result<MessagesWebPageBase>> getWebPage({
    required String url,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetWebPage(url: url, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesWebPageBase>();
  }

  /// Toggle Dialog Pin.
  ///
  /// ID: `a731e257`.
  Future<Result<Boolean>> toggleDialogPin({
    required bool pinned,
    required InputDialogPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesToggleDialogPin(pinned: pinned, peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reorder Pinned Dialogs.
  ///
  /// ID: `3b1adf37`.
  Future<Result<Boolean>> reorderPinnedDialogs({
    required bool force,
    required int folderId,
    required List<InputDialogPeerBase> order,
  }) async {
    // Preparing the request.
    final request = MessagesReorderPinnedDialogs(
      force: force,
      folderId: folderId,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Pinned Dialogs.
  ///
  /// ID: `d6b94df2`.
  Future<Result<MessagesPeerDialogsBase>> getPinnedDialogs({
    required int folderId,
  }) async {
    // Preparing the request.
    final request = MessagesGetPinnedDialogs(folderId: folderId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesPeerDialogsBase>();
  }

  /// Set Bot Shipping Results.
  ///
  /// ID: `e5f672fa`.
  Future<Result<Boolean>> setBotShippingResults({
    required int queryId,
    String? error,
    List<ShippingOptionBase>? shippingOptions,
  }) async {
    // Preparing the request.
    final request = MessagesSetBotShippingResults(
      queryId: queryId,
      error: error,
      shippingOptions: shippingOptions,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Bot Precheckout Results.
  ///
  /// ID: `09c2dd95`.
  Future<Result<Boolean>> setBotPrecheckoutResults({
    required bool success,
    required int queryId,
    String? error,
  }) async {
    // Preparing the request.
    final request = MessagesSetBotPrecheckoutResults(
      success: success,
      queryId: queryId,
      error: error,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Upload Media.
  ///
  /// ID: `14967978`.
  Future<Result<MessageMediaBase>> uploadMedia({
    String? businessConnectionId,
    required InputPeerBase peer,
    required InputMediaBase media,
  }) async {
    // Preparing the request.
    final request = MessagesUploadMedia(
      businessConnectionId: businessConnectionId,
      peer: peer,
      media: media,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessageMediaBase>();
  }

  /// Send Screenshot Notification.
  ///
  /// ID: `a1405817`.
  Future<Result<UpdatesBase>> sendScreenshotNotification({
    required InputPeerBase peer,
    required InputReplyToBase replyTo,
    required int randomId,
  }) async {
    // Preparing the request.
    final request = MessagesSendScreenshotNotification(
      peer: peer,
      replyTo: replyTo,
      randomId: randomId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Faved Stickers.
  ///
  /// ID: `04f1aaa9`.
  Future<Result<MessagesFavedStickersBase>> getFavedStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFavedStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFavedStickersBase>();
  }

  /// Fave Sticker.
  ///
  /// ID: `b9ffc55b`.
  Future<Result<Boolean>> faveSticker({
    required InputDocumentBase id,
    required bool unfave,
  }) async {
    // Preparing the request.
    final request = MessagesFaveSticker(id: id, unfave: unfave);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Unread Mentions.
  ///
  /// ID: `f107e790`.
  Future<Result<MessagesMessagesBase>> getUnreadMentions({
    required InputPeerBase peer,
    int? topMsgId,
    required int offsetId,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
  }) async {
    // Preparing the request.
    final request = MessagesGetUnreadMentions(
      peer: peer,
      topMsgId: topMsgId,
      offsetId: offsetId,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Read Mentions.
  ///
  /// ID: `36e5bf4d`.
  Future<Result<MessagesAffectedHistoryBase>> readMentions({
    required InputPeerBase peer,
    int? topMsgId,
  }) async {
    // Preparing the request.
    final request = MessagesReadMentions(peer: peer, topMsgId: topMsgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Get Recent Locations.
  ///
  /// ID: `702a40e0`.
  Future<Result<MessagesMessagesBase>> getRecentLocations({
    required InputPeerBase peer,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetRecentLocations(
      peer: peer,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Send Multi Media.
  ///
  /// ID: `1bf89d74`.
  Future<Result<UpdatesBase>> sendMultiMedia({
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required bool allowPaidFloodskip,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required List<InputSingleMediaBase> multiMedia,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
    InputQuickReplyShortcutBase? quickReplyShortcut,
    int? effect,
    int? allowPaidStars,
  }) async {
    // Preparing the request.
    final request = MessagesSendMultiMedia(
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      noforwards: noforwards,
      updateStickersetsOrder: updateStickersetsOrder,
      invertMedia: invertMedia,
      allowPaidFloodskip: allowPaidFloodskip,
      peer: peer,
      replyTo: replyTo,
      multiMedia: multiMedia,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
      quickReplyShortcut: quickReplyShortcut,
      effect: effect,
      allowPaidStars: allowPaidStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Upload Encrypted File.
  ///
  /// ID: `5057c497`.
  Future<Result<EncryptedFileBase>> uploadEncryptedFile({
    required InputEncryptedChatBase peer,
    required InputEncryptedFileBase file,
  }) async {
    // Preparing the request.
    final request = MessagesUploadEncryptedFile(peer: peer, file: file);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EncryptedFileBase>();
  }

  /// Search Sticker Sets.
  ///
  /// ID: `35705b8a`.
  Future<Result<MessagesFoundStickerSetsBase>> searchStickerSets({
    required bool excludeFeatured,
    required String q,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearchStickerSets(
      excludeFeatured: excludeFeatured,
      q: q,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFoundStickerSetsBase>();
  }

  /// Get Split Ranges.
  ///
  /// ID: `1cff7e08`.
  Future<Result<Vector<MessageRangeBase>>> getSplitRanges() async {
    // Preparing the request.
    final request = MessagesGetSplitRanges();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<MessageRangeBase>();
  }

  /// Mark Dialog Unread.
  ///
  /// ID: `8c5006f8`.
  Future<Result<Boolean>> markDialogUnread({
    required bool unread,
    InputPeerBase? parentPeer,
    required InputDialogPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesMarkDialogUnread(
      unread: unread,
      parentPeer: parentPeer,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Dialog Unread Marks.
  ///
  /// ID: `21202222`.
  Future<Result<Vector<DialogPeerBase>>> getDialogUnreadMarks({
    InputPeerBase? parentPeer,
  }) async {
    // Preparing the request.
    final request = MessagesGetDialogUnreadMarks(parentPeer: parentPeer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<DialogPeerBase>();
  }

  /// Clear All Drafts.
  ///
  /// ID: `7e58ee9c`.
  Future<Result<Boolean>> clearAllDrafts() async {
    // Preparing the request.
    final request = MessagesClearAllDrafts();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Pinned Message.
  ///
  /// ID: `d2aaf7ec`.
  Future<Result<UpdatesBase>> updatePinnedMessage({
    required bool silent,
    required bool unpin,
    required bool pmOneside,
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = MessagesUpdatePinnedMessage(
      silent: silent,
      unpin: unpin,
      pmOneside: pmOneside,
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Vote.
  ///
  /// ID: `10ea6184`.
  Future<Result<UpdatesBase>> sendVote({
    required InputPeerBase peer,
    required int msgId,
    required List<Uint8List> options,
  }) async {
    // Preparing the request.
    final request = MessagesSendVote(
      peer: peer,
      msgId: msgId,
      options: options,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Poll Results.
  ///
  /// ID: `73bb643b`.
  Future<Result<UpdatesBase>> getPollResults({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetPollResults(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Onlines.
  ///
  /// ID: `6e2be050`.
  Future<Result<ChatOnlinesBase>> getOnlines({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetOnlines(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatOnlinesBase>();
  }

  /// Edit Chat About.
  ///
  /// ID: `def60797`.
  Future<Result<Boolean>> editChatAbout({
    required InputPeerBase peer,
    required String about,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatAbout(peer: peer, about: about);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Edit Chat Default Banned Rights.
  ///
  /// ID: `a5866b41`.
  Future<Result<UpdatesBase>> editChatDefaultBannedRights({
    required InputPeerBase peer,
    required ChatBannedRightsBase bannedRights,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatDefaultBannedRights(
      peer: peer,
      bannedRights: bannedRights,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Emoji Keywords.
  ///
  /// ID: `35a0e062`.
  Future<Result<EmojiKeywordsDifferenceBase>> getEmojiKeywords({
    required String langCode,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiKeywords(langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiKeywordsDifferenceBase>();
  }

  /// Get Emoji Keywords Difference.
  ///
  /// ID: `1508b6af`.
  Future<Result<EmojiKeywordsDifferenceBase>> getEmojiKeywordsDifference({
    required String langCode,
    required int fromVersion,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiKeywordsDifference(
      langCode: langCode,
      fromVersion: fromVersion,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiKeywordsDifferenceBase>();
  }

  /// Get Emoji Keywords Languages.
  ///
  /// ID: `4e9963b2`.
  Future<Result<Vector<EmojiLanguageBase>>> getEmojiKeywordsLanguages({
    required List<String> langCodes,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiKeywordsLanguages(langCodes: langCodes);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<EmojiLanguageBase>();
  }

  /// Get Emoji U R L.
  ///
  /// ID: `d5b10c26`.
  Future<Result<EmojiURLBase>> getEmojiURL({required String langCode}) async {
    // Preparing the request.
    final request = MessagesGetEmojiURL(langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiURLBase>();
  }

  /// Get Search Counters.
  ///
  /// ID: `1bbcf300`.
  Future<Result<Vector<MessagesSearchCounterBase>>> getSearchCounters({
    required InputPeerBase peer,
    InputPeerBase? savedPeerId,
    int? topMsgId,
    required List<MessagesFilterBase> filters,
  }) async {
    // Preparing the request.
    final request = MessagesGetSearchCounters(
      peer: peer,
      savedPeerId: savedPeerId,
      topMsgId: topMsgId,
      filters: filters,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<MessagesSearchCounterBase>();
  }

  /// Request Url Auth.
  ///
  /// ID: `198fb446`.
  Future<Result<UrlAuthResultBase>> requestUrlAuth({
    InputPeerBase? peer,
    int? msgId,
    int? buttonId,
    String? url,
  }) async {
    // Preparing the request.
    final request = MessagesRequestUrlAuth(
      peer: peer,
      msgId: msgId,
      buttonId: buttonId,
      url: url,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UrlAuthResultBase>();
  }

  /// Accept Url Auth.
  ///
  /// ID: `b12c7125`.
  Future<Result<UrlAuthResultBase>> acceptUrlAuth({
    required bool writeAllowed,
    InputPeerBase? peer,
    int? msgId,
    int? buttonId,
    String? url,
  }) async {
    // Preparing the request.
    final request = MessagesAcceptUrlAuth(
      writeAllowed: writeAllowed,
      peer: peer,
      msgId: msgId,
      buttonId: buttonId,
      url: url,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UrlAuthResultBase>();
  }

  /// Hide Peer Settings Bar.
  ///
  /// ID: `4facb138`.
  Future<Result<Boolean>> hidePeerSettingsBar({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesHidePeerSettingsBar(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Scheduled History.
  ///
  /// ID: `f516760b`.
  Future<Result<MessagesMessagesBase>> getScheduledHistory({
    required InputPeerBase peer,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetScheduledHistory(peer: peer, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Get Scheduled Messages.
  ///
  /// ID: `bdbb0464`.
  Future<Result<MessagesMessagesBase>> getScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetScheduledMessages(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Send Scheduled Messages.
  ///
  /// ID: `bd38850a`.
  Future<Result<UpdatesBase>> sendScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesSendScheduledMessages(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Scheduled Messages.
  ///
  /// ID: `59ae2b16`.
  Future<Result<UpdatesBase>> deleteScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteScheduledMessages(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Poll Votes.
  ///
  /// ID: `b86e380e`.
  Future<Result<MessagesVotesListBase>> getPollVotes({
    required InputPeerBase peer,
    required int id,
    Uint8List? option,
    String? offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetPollVotes(
      peer: peer,
      id: id,
      option: option,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesVotesListBase>();
  }

  /// Toggle Sticker Sets.
  ///
  /// ID: `b5052fea`.
  Future<Result<Boolean>> toggleStickerSets({
    required bool uninstall,
    required bool archive,
    required bool unarchive,
    required List<InputStickerSetBase> stickersets,
  }) async {
    // Preparing the request.
    final request = MessagesToggleStickerSets(
      uninstall: uninstall,
      archive: archive,
      unarchive: unarchive,
      stickersets: stickersets,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Dialog Filters.
  ///
  /// ID: `efd48c89`.
  Future<Result<MessagesDialogFiltersBase>> getDialogFilters() async {
    // Preparing the request.
    final request = MessagesGetDialogFilters();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesDialogFiltersBase>();
  }

  /// Get Suggested Dialog Filters.
  ///
  /// ID: `a29cd42c`.
  Future<Result<Vector<DialogFilterSuggestedBase>>>
      getSuggestedDialogFilters() async {
    // Preparing the request.
    final request = MessagesGetSuggestedDialogFilters();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<DialogFilterSuggestedBase>();
  }

  /// Update Dialog Filter.
  ///
  /// ID: `1ad4a04a`.
  Future<Result<Boolean>> updateDialogFilter({
    required int id,
    DialogFilterBase? filter,
  }) async {
    // Preparing the request.
    final request = MessagesUpdateDialogFilter(id: id, filter: filter);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Dialog Filters Order.
  ///
  /// ID: `c563c1e4`.
  Future<Result<Boolean>> updateDialogFiltersOrder({
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = MessagesUpdateDialogFiltersOrder(order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Old Featured Stickers.
  ///
  /// ID: `7ed094a1`.
  Future<Result<MessagesFeaturedStickersBase>> getOldFeaturedStickers({
    required int offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetOldFeaturedStickers(
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>();
  }

  /// Get Replies.
  ///
  /// ID: `22ddd30c`.
  Future<Result<MessagesMessagesBase>> getReplies({
    required InputPeerBase peer,
    required int msgId,
    required int offsetId,
    required DateTime offsetDate,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetReplies(
      peer: peer,
      msgId: msgId,
      offsetId: offsetId,
      offsetDate: offsetDate,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Get Discussion Message.
  ///
  /// ID: `446972fd`.
  Future<Result<MessagesDiscussionMessageBase>> getDiscussionMessage({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetDiscussionMessage(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesDiscussionMessageBase>();
  }

  /// Read Discussion.
  ///
  /// ID: `f731a9f4`.
  Future<Result<Boolean>> readDiscussion({
    required InputPeerBase peer,
    required int msgId,
    required int readMaxId,
  }) async {
    // Preparing the request.
    final request = MessagesReadDiscussion(
      peer: peer,
      msgId: msgId,
      readMaxId: readMaxId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Unpin All Messages.
  ///
  /// ID: `062dd747`.
  Future<Result<MessagesAffectedHistoryBase>> unpinAllMessages({
    required InputPeerBase peer,
    int? topMsgId,
    InputPeerBase? savedPeerId,
  }) async {
    // Preparing the request.
    final request = MessagesUnpinAllMessages(
      peer: peer,
      topMsgId: topMsgId,
      savedPeerId: savedPeerId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Delete Chat.
  ///
  /// ID: `5bd0ee50`.
  Future<Result<Boolean>> deleteChat({required int chatId}) async {
    // Preparing the request.
    final request = MessagesDeleteChat(chatId: chatId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Phone Call History.
  ///
  /// ID: `f9cbe409`.
  Future<Result<MessagesAffectedFoundMessagesBase>> deletePhoneCallHistory({
    required bool revoke,
  }) async {
    // Preparing the request.
    final request = MessagesDeletePhoneCallHistory(revoke: revoke);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedFoundMessagesBase>();
  }

  /// Check History Import.
  ///
  /// ID: `43fe19f3`.
  Future<Result<MessagesHistoryImportParsedBase>> checkHistoryImport({
    required String importHead,
  }) async {
    // Preparing the request.
    final request = MessagesCheckHistoryImport(importHead: importHead);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesHistoryImportParsedBase>();
  }

  /// Init History Import.
  ///
  /// ID: `34090c3b`.
  Future<Result<MessagesHistoryImportBase>> initHistoryImport({
    required InputPeerBase peer,
    required InputFileBase file,
    required int mediaCount,
  }) async {
    // Preparing the request.
    final request = MessagesInitHistoryImport(
      peer: peer,
      file: file,
      mediaCount: mediaCount,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesHistoryImportBase>();
  }

  /// Upload Imported Media.
  ///
  /// ID: `2a862092`.
  Future<Result<MessageMediaBase>> uploadImportedMedia({
    required InputPeerBase peer,
    required int importId,
    required String fileName,
    required InputMediaBase media,
  }) async {
    // Preparing the request.
    final request = MessagesUploadImportedMedia(
      peer: peer,
      importId: importId,
      fileName: fileName,
      media: media,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessageMediaBase>();
  }

  /// Start History Import.
  ///
  /// ID: `b43df344`.
  Future<Result<Boolean>> startHistoryImport({
    required InputPeerBase peer,
    required int importId,
  }) async {
    // Preparing the request.
    final request = MessagesStartHistoryImport(peer: peer, importId: importId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Exported Chat Invites.
  ///
  /// ID: `a2b5a3f6`.
  Future<Result<MessagesExportedChatInvitesBase>> getExportedChatInvites({
    required bool revoked,
    required InputPeerBase peer,
    required InputUserBase adminId,
    DateTime? offsetDate,
    String? offsetLink,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetExportedChatInvites(
      revoked: revoked,
      peer: peer,
      adminId: adminId,
      offsetDate: offsetDate,
      offsetLink: offsetLink,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesExportedChatInvitesBase>();
  }

  /// Get Exported Chat Invite.
  ///
  /// ID: `73746f5c`.
  Future<Result<MessagesExportedChatInviteBase>> getExportedChatInvite({
    required InputPeerBase peer,
    required String link,
  }) async {
    // Preparing the request.
    final request = MessagesGetExportedChatInvite(peer: peer, link: link);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesExportedChatInviteBase>();
  }

  /// Edit Exported Chat Invite.
  ///
  /// ID: `bdca2f75`.
  Future<Result<MessagesExportedChatInviteBase>> editExportedChatInvite({
    required bool revoked,
    required InputPeerBase peer,
    required String link,
    DateTime? expireDate,
    int? usageLimit,
    bool? requestNeeded,
    String? title,
  }) async {
    // Preparing the request.
    final request = MessagesEditExportedChatInvite(
      revoked: revoked,
      peer: peer,
      link: link,
      expireDate: expireDate,
      usageLimit: usageLimit,
      requestNeeded: requestNeeded,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesExportedChatInviteBase>();
  }

  /// Delete Revoked Exported Chat Invites.
  ///
  /// ID: `56987bd5`.
  Future<Result<Boolean>> deleteRevokedExportedChatInvites({
    required InputPeerBase peer,
    required InputUserBase adminId,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteRevokedExportedChatInvites(
      peer: peer,
      adminId: adminId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Exported Chat Invite.
  ///
  /// ID: `d464a42b`.
  Future<Result<Boolean>> deleteExportedChatInvite({
    required InputPeerBase peer,
    required String link,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteExportedChatInvite(peer: peer, link: link);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Admins With Invites.
  ///
  /// ID: `3920e6ef`.
  Future<Result<MessagesChatAdminsWithInvitesBase>> getAdminsWithInvites({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetAdminsWithInvites(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatAdminsWithInvitesBase>();
  }

  /// Get Chat Invite Importers.
  ///
  /// ID: `df04dd4e`.
  Future<Result<MessagesChatInviteImportersBase>> getChatInviteImporters({
    required bool requested,
    required bool subscriptionExpired,
    required InputPeerBase peer,
    String? link,
    String? q,
    required DateTime offsetDate,
    required InputUserBase offsetUser,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetChatInviteImporters(
      requested: requested,
      subscriptionExpired: subscriptionExpired,
      peer: peer,
      link: link,
      q: q,
      offsetDate: offsetDate,
      offsetUser: offsetUser,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatInviteImportersBase>();
  }

  /// Set History T T L.
  ///
  /// ID: `b80e5fe4`.
  Future<Result<UpdatesBase>> setHistoryTTL({
    required InputPeerBase peer,
    required int period,
  }) async {
    // Preparing the request.
    final request = MessagesSetHistoryTTL(peer: peer, period: period);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Check History Import Peer.
  ///
  /// ID: `5dc60f03`.
  Future<Result<MessagesCheckedHistoryImportPeerBase>> checkHistoryImportPeer({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesCheckHistoryImportPeer(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesCheckedHistoryImportPeerBase>();
  }

  /// Set Chat Theme.
  ///
  /// ID: `081202c9`.
  Future<Result<UpdatesBase>> setChatTheme({
    required InputPeerBase peer,
    required InputChatThemeBase theme,
  }) async {
    // Preparing the request.
    final request = MessagesSetChatTheme(peer: peer, theme: theme);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Message Read Participants.
  ///
  /// ID: `31c1c44f`.
  Future<Result<Vector<ReadParticipantDateBase>>> getMessageReadParticipants({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessageReadParticipants(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<ReadParticipantDateBase>();
  }

  /// Get Search Results Calendar.
  ///
  /// ID: `6aa3f6bd`.
  Future<Result<MessagesSearchResultsCalendarBase>> getSearchResultsCalendar({
    required InputPeerBase peer,
    InputPeerBase? savedPeerId,
    required MessagesFilterBase filter,
    required int offsetId,
    required DateTime offsetDate,
  }) async {
    // Preparing the request.
    final request = MessagesGetSearchResultsCalendar(
      peer: peer,
      savedPeerId: savedPeerId,
      filter: filter,
      offsetId: offsetId,
      offsetDate: offsetDate,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSearchResultsCalendarBase>();
  }

  /// Get Search Results Positions.
  ///
  /// ID: `9c7f2f10`.
  Future<Result<MessagesSearchResultsPositionsBase>> getSearchResultsPositions({
    required InputPeerBase peer,
    InputPeerBase? savedPeerId,
    required MessagesFilterBase filter,
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetSearchResultsPositions(
      peer: peer,
      savedPeerId: savedPeerId,
      filter: filter,
      offsetId: offsetId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSearchResultsPositionsBase>();
  }

  /// Hide Chat Join Request.
  ///
  /// ID: `7fe7e815`.
  Future<Result<UpdatesBase>> hideChatJoinRequest({
    required bool approved,
    required InputPeerBase peer,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = MessagesHideChatJoinRequest(
      approved: approved,
      peer: peer,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Hide All Chat Join Requests.
  ///
  /// ID: `e085f4ea`.
  Future<Result<UpdatesBase>> hideAllChatJoinRequests({
    required bool approved,
    required InputPeerBase peer,
    String? link,
  }) async {
    // Preparing the request.
    final request = MessagesHideAllChatJoinRequests(
      approved: approved,
      peer: peer,
      link: link,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle No Forwards.
  ///
  /// ID: `b11eafa2`.
  Future<Result<UpdatesBase>> toggleNoForwards({
    required InputPeerBase peer,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = MessagesToggleNoForwards(peer: peer, enabled: enabled);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Save Default Send As.
  ///
  /// ID: `ccfddf96`.
  Future<Result<Boolean>> saveDefaultSendAs({
    required InputPeerBase peer,
    required InputPeerBase sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesSaveDefaultSendAs(peer: peer, sendAs: sendAs);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Reaction.
  ///
  /// ID: `d30d78d4`.
  Future<Result<UpdatesBase>> sendReaction({
    required bool big,
    required bool addToRecent,
    required InputPeerBase peer,
    required int msgId,
    List<ReactionBase>? reaction,
  }) async {
    // Preparing the request.
    final request = MessagesSendReaction(
      big: big,
      addToRecent: addToRecent,
      peer: peer,
      msgId: msgId,
      reaction: reaction,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Messages Reactions.
  ///
  /// ID: `8bba90e6`.
  Future<Result<UpdatesBase>> getMessagesReactions({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessagesReactions(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Message Reactions List.
  ///
  /// ID: `461b3f48`.
  Future<Result<MessagesMessageReactionsListBase>> getMessageReactionsList({
    required InputPeerBase peer,
    required int id,
    ReactionBase? reaction,
    String? offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessageReactionsList(
      peer: peer,
      id: id,
      reaction: reaction,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessageReactionsListBase>();
  }

  /// Set Chat Available Reactions.
  ///
  /// ID: `864b2581`.
  Future<Result<UpdatesBase>> setChatAvailableReactions({
    required InputPeerBase peer,
    required ChatReactionsBase availableReactions,
    int? reactionsLimit,
    bool? paidEnabled,
  }) async {
    // Preparing the request.
    final request = MessagesSetChatAvailableReactions(
      peer: peer,
      availableReactions: availableReactions,
      reactionsLimit: reactionsLimit,
      paidEnabled: paidEnabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Available Reactions.
  ///
  /// ID: `18dea0ac`.
  Future<Result<MessagesAvailableReactionsBase>> getAvailableReactions({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAvailableReactions(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAvailableReactionsBase>();
  }

  /// Set Default Reaction.
  ///
  /// ID: `4f47a016`.
  Future<Result<Boolean>> setDefaultReaction({
    required ReactionBase reaction,
  }) async {
    // Preparing the request.
    final request = MessagesSetDefaultReaction(reaction: reaction);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Translate Text.
  ///
  /// ID: `63183030`.
  Future<Result<MessagesTranslatedTextBase>> translateText({
    InputPeerBase? peer,
    List<int>? id,
    List<TextWithEntitiesBase>? text,
    required String toLang,
  }) async {
    // Preparing the request.
    final request = MessagesTranslateText(
      peer: peer,
      id: id,
      text: text,
      toLang: toLang,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesTranslatedTextBase>();
  }

  /// Get Unread Reactions.
  ///
  /// ID: `bd7f90ac`.
  Future<Result<MessagesMessagesBase>> getUnreadReactions({
    required InputPeerBase peer,
    int? topMsgId,
    InputPeerBase? savedPeerId,
    required int offsetId,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
  }) async {
    // Preparing the request.
    final request = MessagesGetUnreadReactions(
      peer: peer,
      topMsgId: topMsgId,
      savedPeerId: savedPeerId,
      offsetId: offsetId,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Read Reactions.
  ///
  /// ID: `9ec44f93`.
  Future<Result<MessagesAffectedHistoryBase>> readReactions({
    required InputPeerBase peer,
    int? topMsgId,
    InputPeerBase? savedPeerId,
  }) async {
    // Preparing the request.
    final request = MessagesReadReactions(
      peer: peer,
      topMsgId: topMsgId,
      savedPeerId: savedPeerId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Search Sent Media.
  ///
  /// ID: `107e31a0`.
  Future<Result<MessagesMessagesBase>> searchSentMedia({
    required String q,
    required MessagesFilterBase filter,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesSearchSentMedia(q: q, filter: filter, limit: limit);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Get Attach Menu Bots.
  ///
  /// ID: `16fcc2cb`.
  Future<Result<AttachMenuBotsBase>> getAttachMenuBots({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAttachMenuBots(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AttachMenuBotsBase>();
  }

  /// Get Attach Menu Bot.
  ///
  /// ID: `77216192`.
  Future<Result<AttachMenuBotsBotBase>> getAttachMenuBot({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = MessagesGetAttachMenuBot(bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<AttachMenuBotsBotBase>();
  }

  /// Toggle Bot In Attach Menu.
  ///
  /// ID: `69f59d69`.
  Future<Result<Boolean>> toggleBotInAttachMenu({
    required bool writeAllowed,
    required InputUserBase bot,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = MessagesToggleBotInAttachMenu(
      writeAllowed: writeAllowed,
      bot: bot,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Request Web View.
  ///
  /// ID: `269dc2c1`.
  Future<Result<WebViewResultBase>> requestWebView({
    required bool fromBotMenu,
    required bool silent,
    required bool compact,
    required bool fullscreen,
    required InputPeerBase peer,
    required InputUserBase bot,
    String? url,
    String? startParam,
    DataJSONBase? themeParams,
    required String platform,
    InputReplyToBase? replyTo,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesRequestWebView(
      fromBotMenu: fromBotMenu,
      silent: silent,
      compact: compact,
      fullscreen: fullscreen,
      peer: peer,
      bot: bot,
      url: url,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
      replyTo: replyTo,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WebViewResultBase>();
  }

  /// Prolong Web View.
  ///
  /// ID: `b0d81a83`.
  Future<Result<Boolean>> prolongWebView({
    required bool silent,
    required InputPeerBase peer,
    required InputUserBase bot,
    required int queryId,
    InputReplyToBase? replyTo,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesProlongWebView(
      silent: silent,
      peer: peer,
      bot: bot,
      queryId: queryId,
      replyTo: replyTo,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Request Simple Web View.
  ///
  /// ID: `413a3e73`.
  Future<Result<WebViewResultBase>> requestSimpleWebView({
    required bool fromSwitchWebview,
    required bool fromSideMenu,
    required bool compact,
    required bool fullscreen,
    required InputUserBase bot,
    String? url,
    String? startParam,
    DataJSONBase? themeParams,
    required String platform,
  }) async {
    // Preparing the request.
    final request = MessagesRequestSimpleWebView(
      fromSwitchWebview: fromSwitchWebview,
      fromSideMenu: fromSideMenu,
      compact: compact,
      fullscreen: fullscreen,
      bot: bot,
      url: url,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WebViewResultBase>();
  }

  /// Send Web View Result Message.
  ///
  /// ID: `0a4314f5`.
  Future<Result<WebViewMessageSentBase>> sendWebViewResultMessage({
    required String botQueryId,
    required InputBotInlineResultBase result,
  }) async {
    // Preparing the request.
    final request = MessagesSendWebViewResultMessage(
      botQueryId: botQueryId,
      result: result,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WebViewMessageSentBase>();
  }

  /// Send Web View Data.
  ///
  /// ID: `dc0242c8`.
  Future<Result<UpdatesBase>> sendWebViewData({
    required InputUserBase bot,
    required int randomId,
    required String buttonText,
    required String data,
  }) async {
    // Preparing the request.
    final request = MessagesSendWebViewData(
      bot: bot,
      randomId: randomId,
      buttonText: buttonText,
      data: data,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Transcribe Audio.
  ///
  /// ID: `269e9a49`.
  Future<Result<MessagesTranscribedAudioBase>> transcribeAudio({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesTranscribeAudio(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesTranscribedAudioBase>();
  }

  /// Rate Transcribed Audio.
  ///
  /// ID: `7f1d072f`.
  Future<Result<Boolean>> rateTranscribedAudio({
    required InputPeerBase peer,
    required int msgId,
    required int transcriptionId,
    required bool good,
  }) async {
    // Preparing the request.
    final request = MessagesRateTranscribedAudio(
      peer: peer,
      msgId: msgId,
      transcriptionId: transcriptionId,
      good: good,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Custom Emoji Documents.
  ///
  /// ID: `d9ab0f54`.
  Future<Result<Vector<DocumentBase>>> getCustomEmojiDocuments({
    required List<int> documentId,
  }) async {
    // Preparing the request.
    final request = MessagesGetCustomEmojiDocuments(documentId: documentId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<DocumentBase>();
  }

  /// Get Emoji Stickers.
  ///
  /// ID: `fbfca18f`.
  Future<Result<MessagesAllStickersBase>> getEmojiStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAllStickersBase>();
  }

  /// Get Featured Emoji Stickers.
  ///
  /// ID: `0ecf6736`.
  Future<Result<MessagesFeaturedStickersBase>> getFeaturedEmojiStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFeaturedEmojiStickers(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>();
  }

  /// Report Reaction.
  ///
  /// ID: `3f64c076`.
  Future<Result<Boolean>> reportReaction({
    required InputPeerBase peer,
    required int id,
    required InputPeerBase reactionPeer,
  }) async {
    // Preparing the request.
    final request = MessagesReportReaction(
      peer: peer,
      id: id,
      reactionPeer: reactionPeer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Top Reactions.
  ///
  /// ID: `bb8125ba`.
  Future<Result<MessagesReactionsBase>> getTopReactions({
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetTopReactions(limit: limit, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesReactionsBase>();
  }

  /// Get Recent Reactions.
  ///
  /// ID: `39461db2`.
  Future<Result<MessagesReactionsBase>> getRecentReactions({
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetRecentReactions(limit: limit, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesReactionsBase>();
  }

  /// Clear Recent Reactions.
  ///
  /// ID: `9dfeefb4`.
  Future<Result<Boolean>> clearRecentReactions() async {
    // Preparing the request.
    final request = MessagesClearRecentReactions();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Extended Media.
  ///
  /// ID: `84f80814`.
  Future<Result<UpdatesBase>> getExtendedMedia({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetExtendedMedia(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Set Default History T T L.
  ///
  /// ID: `9eb51445`.
  Future<Result<Boolean>> setDefaultHistoryTTL({required int period}) async {
    // Preparing the request.
    final request = MessagesSetDefaultHistoryTTL(period: period);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Default History T T L.
  ///
  /// ID: `658b7188`.
  Future<Result<DefaultHistoryTTLBase>> getDefaultHistoryTTL() async {
    // Preparing the request.
    final request = MessagesGetDefaultHistoryTTL();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DefaultHistoryTTLBase>();
  }

  /// Send Bot Requested Peer.
  ///
  /// ID: `91b2d060`.
  Future<Result<UpdatesBase>> sendBotRequestedPeer({
    required InputPeerBase peer,
    required int msgId,
    required int buttonId,
    required List<InputPeerBase> requestedPeers,
  }) async {
    // Preparing the request.
    final request = MessagesSendBotRequestedPeer(
      peer: peer,
      msgId: msgId,
      buttonId: buttonId,
      requestedPeers: requestedPeers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Emoji Groups.
  ///
  /// ID: `7488ce5b`.
  Future<Result<MessagesEmojiGroupsBase>> getEmojiGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiGroups(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>();
  }

  /// Get Emoji Status Groups.
  ///
  /// ID: `2ecd56cd`.
  Future<Result<MessagesEmojiGroupsBase>> getEmojiStatusGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiStatusGroups(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>();
  }

  /// Get Emoji Profile Photo Groups.
  ///
  /// ID: `21a548f3`.
  Future<Result<MessagesEmojiGroupsBase>> getEmojiProfilePhotoGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiProfilePhotoGroups(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>();
  }

  /// Search Custom Emoji.
  ///
  /// ID: `2c11c0d7`.
  Future<Result<EmojiListBase>> searchCustomEmoji({
    required String emoticon,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearchCustomEmoji(emoticon: emoticon, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<EmojiListBase>();
  }

  /// Toggle Peer Translations.
  ///
  /// ID: `e47cb579`.
  Future<Result<Boolean>> togglePeerTranslations({
    required bool disabled,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesTogglePeerTranslations(
      disabled: disabled,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot App.
  ///
  /// ID: `34fdc5c3`.
  Future<Result<MessagesBotAppBase>> getBotApp({
    required InputBotAppBase app,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetBotApp(app: app, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesBotAppBase>();
  }

  /// Request App Web View.
  ///
  /// ID: `53618bce`.
  Future<Result<WebViewResultBase>> requestAppWebView({
    required bool writeAllowed,
    required bool compact,
    required bool fullscreen,
    required InputPeerBase peer,
    required InputBotAppBase app,
    String? startParam,
    DataJSONBase? themeParams,
    required String platform,
  }) async {
    // Preparing the request.
    final request = MessagesRequestAppWebView(
      writeAllowed: writeAllowed,
      compact: compact,
      fullscreen: fullscreen,
      peer: peer,
      app: app,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WebViewResultBase>();
  }

  /// Set Chat Wall Paper.
  ///
  /// ID: `8ffacae1`.
  Future<Result<UpdatesBase>> setChatWallPaper({
    required bool forBoth,
    required bool revert,
    required InputPeerBase peer,
    InputWallPaperBase? wallpaper,
    WallPaperSettingsBase? settings,
    int? id,
  }) async {
    // Preparing the request.
    final request = MessagesSetChatWallPaper(
      forBoth: forBoth,
      revert: revert,
      peer: peer,
      wallpaper: wallpaper,
      settings: settings,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Search Emoji Sticker Sets.
  ///
  /// ID: `92b4494c`.
  Future<Result<MessagesFoundStickerSetsBase>> searchEmojiStickerSets({
    required bool excludeFeatured,
    required String q,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearchEmojiStickerSets(
      excludeFeatured: excludeFeatured,
      q: q,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFoundStickerSetsBase>();
  }

  /// Get Saved Dialogs.
  ///
  /// ID: `1e91fc99`.
  Future<Result<MessagesSavedDialogsBase>> getSavedDialogs({
    required bool excludePinned,
    InputPeerBase? parentPeer,
    required DateTime offsetDate,
    required int offsetId,
    required InputPeerBase offsetPeer,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedDialogs(
      excludePinned: excludePinned,
      parentPeer: parentPeer,
      offsetDate: offsetDate,
      offsetId: offsetId,
      offsetPeer: offsetPeer,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSavedDialogsBase>();
  }

  /// Get Saved History.
  ///
  /// ID: `998ab009`.
  Future<Result<MessagesMessagesBase>> getSavedHistory({
    InputPeerBase? parentPeer,
    required InputPeerBase peer,
    required int offsetId,
    required DateTime offsetDate,
    required int addOffset,
    required int limit,
    required int maxId,
    required int minId,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedHistory(
      parentPeer: parentPeer,
      peer: peer,
      offsetId: offsetId,
      offsetDate: offsetDate,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Delete Saved History.
  ///
  /// ID: `4dc5085f`.
  Future<Result<MessagesAffectedHistoryBase>> deleteSavedHistory({
    InputPeerBase? parentPeer,
    required InputPeerBase peer,
    required int maxId,
    DateTime? minDate,
    DateTime? maxDate,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteSavedHistory(
      parentPeer: parentPeer,
      peer: peer,
      maxId: maxId,
      minDate: minDate,
      maxDate: maxDate,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Get Pinned Saved Dialogs.
  ///
  /// ID: `d63d94e0`.
  Future<Result<MessagesSavedDialogsBase>> getPinnedSavedDialogs() async {
    // Preparing the request.
    final request = MessagesGetPinnedSavedDialogs();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSavedDialogsBase>();
  }

  /// Toggle Saved Dialog Pin.
  ///
  /// ID: `ac81bbde`.
  Future<Result<Boolean>> toggleSavedDialogPin({
    required bool pinned,
    required InputDialogPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesToggleSavedDialogPin(pinned: pinned, peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reorder Pinned Saved Dialogs.
  ///
  /// ID: `8b716587`.
  Future<Result<Boolean>> reorderPinnedSavedDialogs({
    required bool force,
    required List<InputDialogPeerBase> order,
  }) async {
    // Preparing the request.
    final request = MessagesReorderPinnedSavedDialogs(
      force: force,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Saved Reaction Tags.
  ///
  /// ID: `3637e05b`.
  Future<Result<MessagesSavedReactionTagsBase>> getSavedReactionTags({
    InputPeerBase? peer,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedReactionTags(peer: peer, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSavedReactionTagsBase>();
  }

  /// Update Saved Reaction Tag.
  ///
  /// ID: `60297dec`.
  Future<Result<Boolean>> updateSavedReactionTag({
    required ReactionBase reaction,
    String? title,
  }) async {
    // Preparing the request.
    final request = MessagesUpdateSavedReactionTag(
      reaction: reaction,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Default Tag Reactions.
  ///
  /// ID: `bdf93428`.
  Future<Result<MessagesReactionsBase>> getDefaultTagReactions({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetDefaultTagReactions(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesReactionsBase>();
  }

  /// Get Outbox Read Date.
  ///
  /// ID: `8c4bfe5d`.
  Future<Result<OutboxReadDateBase>> getOutboxReadDate({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetOutboxReadDate(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<OutboxReadDateBase>();
  }

  /// Get Quick Replies.
  ///
  /// ID: `d483f2a8`.
  Future<Result<MessagesQuickRepliesBase>> getQuickReplies({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetQuickReplies(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesQuickRepliesBase>();
  }

  /// Reorder Quick Replies.
  ///
  /// ID: `60331907`.
  Future<Result<Boolean>> reorderQuickReplies({
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = MessagesReorderQuickReplies(order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Check Quick Reply Shortcut.
  ///
  /// ID: `f1d0fbd3`.
  Future<Result<Boolean>> checkQuickReplyShortcut({
    required String shortcut,
  }) async {
    // Preparing the request.
    final request = MessagesCheckQuickReplyShortcut(shortcut: shortcut);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Edit Quick Reply Shortcut.
  ///
  /// ID: `5c003cef`.
  Future<Result<Boolean>> editQuickReplyShortcut({
    required int shortcutId,
    required String shortcut,
  }) async {
    // Preparing the request.
    final request = MessagesEditQuickReplyShortcut(
      shortcutId: shortcutId,
      shortcut: shortcut,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Quick Reply Shortcut.
  ///
  /// ID: `3cc04740`.
  Future<Result<Boolean>> deleteQuickReplyShortcut({
    required int shortcutId,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteQuickReplyShortcut(shortcutId: shortcutId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Quick Reply Messages.
  ///
  /// ID: `94a495c3`.
  Future<Result<MessagesMessagesBase>> getQuickReplyMessages({
    required int shortcutId,
    List<int>? id,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetQuickReplyMessages(
      shortcutId: shortcutId,
      id: id,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Send Quick Reply Messages.
  ///
  /// ID: `6c750de1`.
  Future<Result<UpdatesBase>> sendQuickReplyMessages({
    required InputPeerBase peer,
    required int shortcutId,
    required List<int> id,
    required List<int> randomId,
  }) async {
    // Preparing the request.
    final request = MessagesSendQuickReplyMessages(
      peer: peer,
      shortcutId: shortcutId,
      id: id,
      randomId: randomId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Quick Reply Messages.
  ///
  /// ID: `e105e910`.
  Future<Result<UpdatesBase>> deleteQuickReplyMessages({
    required int shortcutId,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteQuickReplyMessages(
      shortcutId: shortcutId,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Dialog Filter Tags.
  ///
  /// ID: `fd2dda49`.
  Future<Result<Boolean>> toggleDialogFilterTags({
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = MessagesToggleDialogFilterTags(enabled: enabled);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get My Stickers.
  ///
  /// ID: `d0b5e1fc`.
  Future<Result<MessagesMyStickersBase>> getMyStickers({
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetMyStickers(offsetId: offsetId, limit: limit);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMyStickersBase>();
  }

  /// Get Emoji Sticker Groups.
  ///
  /// ID: `1dd840f5`.
  Future<Result<MessagesEmojiGroupsBase>> getEmojiStickerGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiStickerGroups(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>();
  }

  /// Get Available Effects.
  ///
  /// ID: `dea20a39`.
  Future<Result<MessagesAvailableEffectsBase>> getAvailableEffects({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAvailableEffects(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAvailableEffectsBase>();
  }

  /// Edit Fact Check.
  ///
  /// ID: `0589ee75`.
  Future<Result<UpdatesBase>> editFactCheck({
    required InputPeerBase peer,
    required int msgId,
    required TextWithEntitiesBase text,
  }) async {
    // Preparing the request.
    final request = MessagesEditFactCheck(peer: peer, msgId: msgId, text: text);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Fact Check.
  ///
  /// ID: `d1da940c`.
  Future<Result<UpdatesBase>> deleteFactCheck({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteFactCheck(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Fact Check.
  ///
  /// ID: `b9cdc5ee`.
  Future<Result<Vector<FactCheckBase>>> getFactCheck({
    required InputPeerBase peer,
    required List<int> msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetFactCheck(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<FactCheckBase>();
  }

  /// Request Main Web View.
  ///
  /// ID: `c9e01e7b`.
  Future<Result<WebViewResultBase>> requestMainWebView({
    required bool compact,
    required bool fullscreen,
    required InputPeerBase peer,
    required InputUserBase bot,
    String? startParam,
    DataJSONBase? themeParams,
    required String platform,
  }) async {
    // Preparing the request.
    final request = MessagesRequestMainWebView(
      compact: compact,
      fullscreen: fullscreen,
      peer: peer,
      bot: bot,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<WebViewResultBase>();
  }

  /// Send Paid Reaction.
  ///
  /// ID: `58bbcb50`.
  Future<Result<UpdatesBase>> sendPaidReaction({
    required InputPeerBase peer,
    required int msgId,
    required int count,
    required int randomId,
    PaidReactionPrivacyBase? private,
  }) async {
    // Preparing the request.
    final request = MessagesSendPaidReaction(
      peer: peer,
      msgId: msgId,
      count: count,
      randomId: randomId,
      private: private,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Paid Reaction Privacy.
  ///
  /// ID: `435885b5`.
  Future<Result<Boolean>> togglePaidReactionPrivacy({
    required InputPeerBase peer,
    required int msgId,
    required PaidReactionPrivacyBase private,
  }) async {
    // Preparing the request.
    final request = MessagesTogglePaidReactionPrivacy(
      peer: peer,
      msgId: msgId,
      private: private,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Paid Reaction Privacy.
  ///
  /// ID: `472455aa`.
  Future<Result<UpdatesBase>> getPaidReactionPrivacy() async {
    // Preparing the request.
    final request = MessagesGetPaidReactionPrivacy();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// View Sponsored Message.
  ///
  /// ID: `269e3643`.
  Future<Result<Boolean>> viewSponsoredMessage({
    required Uint8List randomId,
  }) async {
    // Preparing the request.
    final request = MessagesViewSponsoredMessage(randomId: randomId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Click Sponsored Message.
  ///
  /// ID: `8235057e`.
  Future<Result<Boolean>> clickSponsoredMessage({
    required bool media,
    required bool fullscreen,
    required Uint8List randomId,
  }) async {
    // Preparing the request.
    final request = MessagesClickSponsoredMessage(
      media: media,
      fullscreen: fullscreen,
      randomId: randomId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Report Sponsored Message.
  ///
  /// ID: `12cbf0c4`.
  Future<Result<ChannelsSponsoredMessageReportResultBase>>
      reportSponsoredMessage({
    required Uint8List randomId,
    required Uint8List option,
  }) async {
    // Preparing the request.
    final request = MessagesReportSponsoredMessage(
      randomId: randomId,
      option: option,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChannelsSponsoredMessageReportResultBase>();
  }

  /// Get Sponsored Messages.
  ///
  /// ID: `3d6ce850`.
  Future<Result<MessagesSponsoredMessagesBase>> getSponsoredMessages({
    required InputPeerBase peer,
    int? msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetSponsoredMessages(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSponsoredMessagesBase>();
  }

  /// Save Prepared Inline Message.
  ///
  /// ID: `f21f7f2f`.
  Future<Result<MessagesBotPreparedInlineMessageBase>>
      savePreparedInlineMessage({
    required InputBotInlineResultBase result,
    required InputUserBase userId,
    List<InlineQueryPeerTypeBase>? peerTypes,
  }) async {
    // Preparing the request.
    final request = MessagesSavePreparedInlineMessage(
      result: result,
      userId: userId,
      peerTypes: peerTypes,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesBotPreparedInlineMessageBase>();
  }

  /// Get Prepared Inline Message.
  ///
  /// ID: `857ebdb8`.
  Future<Result<MessagesPreparedInlineMessageBase>> getPreparedInlineMessage({
    required InputUserBase bot,
    required String id,
  }) async {
    // Preparing the request.
    final request = MessagesGetPreparedInlineMessage(bot: bot, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesPreparedInlineMessageBase>();
  }

  /// Search Stickers.
  ///
  /// ID: `29b1c66a`.
  Future<Result<MessagesFoundStickersBase>> searchStickers({
    required bool emojis,
    required String q,
    required String emoticon,
    required List<String> langCode,
    required int offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearchStickers(
      emojis: emojis,
      q: q,
      emoticon: emoticon,
      langCode: langCode,
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesFoundStickersBase>();
  }

  /// Report Messages Delivery.
  ///
  /// ID: `5a6d7395`.
  Future<Result<Boolean>> reportMessagesDelivery({
    required bool push,
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesReportMessagesDelivery(
      push: push,
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Saved Dialogs By I D.
  ///
  /// ID: `6f6f9c96`.
  Future<Result<MessagesSavedDialogsBase>> getSavedDialogsByID({
    InputPeerBase? parentPeer,
    required List<InputPeerBase> ids,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedDialogsByID(
      parentPeer: parentPeer,
      ids: ids,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesSavedDialogsBase>();
  }

  /// Read Saved History.
  ///
  /// ID: `ba4a3b5b`.
  Future<Result<Boolean>> readSavedHistory({
    required InputPeerBase parentPeer,
    required InputPeerBase peer,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = MessagesReadSavedHistory(
      parentPeer: parentPeer,
      peer: peer,
      maxId: maxId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Todo Completed.
  ///
  /// ID: `d3e03124`.
  Future<Result<UpdatesBase>> toggleTodoCompleted({
    required InputPeerBase peer,
    required int msgId,
    required List<int> completed,
    required List<int> incompleted,
  }) async {
    // Preparing the request.
    final request = MessagesToggleTodoCompleted(
      peer: peer,
      msgId: msgId,
      completed: completed,
      incompleted: incompleted,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Append Todo List.
  ///
  /// ID: `21a61057`.
  Future<Result<UpdatesBase>> appendTodoList({
    required InputPeerBase peer,
    required int msgId,
    required List<TodoItemBase> list,
  }) async {
    // Preparing the request.
    final request = MessagesAppendTodoList(
      peer: peer,
      msgId: msgId,
      list: list,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Suggested Post Approval.
  ///
  /// ID: `8107455c`.
  Future<Result<UpdatesBase>> toggleSuggestedPostApproval({
    required bool reject,
    required InputPeerBase peer,
    required int msgId,
    DateTime? scheduleDate,
    String? rejectComment,
  }) async {
    // Preparing the request.
    final request = MessagesToggleSuggestedPostApproval(
      reject: reject,
      peer: peer,
      msgId: msgId,
      scheduleDate: scheduleDate,
      rejectComment: rejectComment,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Forum Topics.
  ///
  /// ID: `3ba47bff`.
  Future<Result<MessagesForumTopicsBase>> getForumTopics({
    required InputPeerBase peer,
    String? q,
    required DateTime offsetDate,
    required int offsetId,
    required int offsetTopic,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesGetForumTopics(
      peer: peer,
      q: q,
      offsetDate: offsetDate,
      offsetId: offsetId,
      offsetTopic: offsetTopic,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesForumTopicsBase>();
  }

  /// Get Forum Topics By I D.
  ///
  /// ID: `af0a4a08`.
  Future<Result<MessagesForumTopicsBase>> getForumTopicsByID({
    required InputPeerBase peer,
    required List<int> topics,
  }) async {
    // Preparing the request.
    final request = MessagesGetForumTopicsByID(peer: peer, topics: topics);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesForumTopicsBase>();
  }

  /// Edit Forum Topic.
  ///
  /// ID: `cecc1134`.
  Future<Result<UpdatesBase>> editForumTopic({
    required InputPeerBase peer,
    required int topicId,
    String? title,
    int? iconEmojiId,
    bool? closed,
    bool? hidden,
  }) async {
    // Preparing the request.
    final request = MessagesEditForumTopic(
      peer: peer,
      topicId: topicId,
      title: title,
      iconEmojiId: iconEmojiId,
      closed: closed,
      hidden: hidden,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Update Pinned Forum Topic.
  ///
  /// ID: `175df251`.
  Future<Result<UpdatesBase>> updatePinnedForumTopic({
    required InputPeerBase peer,
    required int topicId,
    required bool pinned,
  }) async {
    // Preparing the request.
    final request = MessagesUpdatePinnedForumTopic(
      peer: peer,
      topicId: topicId,
      pinned: pinned,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Reorder Pinned Forum Topics.
  ///
  /// ID: `0e7841f0`.
  Future<Result<UpdatesBase>> reorderPinnedForumTopics({
    required bool force,
    required InputPeerBase peer,
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = MessagesReorderPinnedForumTopics(
      force: force,
      peer: peer,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Create Forum Topic.
  ///
  /// ID: `2f98c3d5`.
  Future<Result<UpdatesBase>> createForumTopic({
    required bool titleMissing,
    required InputPeerBase peer,
    required String title,
    int? iconColor,
    int? iconEmojiId,
    required int randomId,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesCreateForumTopic(
      titleMissing: titleMissing,
      peer: peer,
      title: title,
      iconColor: iconColor,
      iconEmojiId: iconEmojiId,
      randomId: randomId,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Topic History.
  ///
  /// ID: `d2816f10`.
  Future<Result<MessagesAffectedHistoryBase>> deleteTopicHistory({
    required InputPeerBase peer,
    required int topMsgId,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteTopicHistory(peer: peer, topMsgId: topMsgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }
}

/// Updates.
class ClientUpdates {
  /// Constructor.
  const ClientUpdates._(this._c);
  final Client _c;

  /// Get State.
  ///
  /// ID: `edd4882a`.
  Future<Result<UpdatesStateBase>> getState() async {
    // Preparing the request.
    final request = UpdatesGetState();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesStateBase>();
  }

  /// Get Difference.
  ///
  /// ID: `19c2f763`.
  Future<Result<UpdatesDifferenceBase>> getDifference({
    required int pts,
    int? ptsLimit,
    int? ptsTotalLimit,
    required DateTime date,
    required int qts,
    int? qtsLimit,
  }) async {
    // Preparing the request.
    final request = UpdatesGetDifference(
      pts: pts,
      ptsLimit: ptsLimit,
      ptsTotalLimit: ptsTotalLimit,
      date: date,
      qts: qts,
      qtsLimit: qtsLimit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesDifferenceBase>();
  }

  /// Get Channel Difference.
  ///
  /// ID: `03173d78`.
  Future<Result<UpdatesChannelDifferenceBase>> getChannelDifference({
    required bool force,
    required InputChannelBase channel,
    required ChannelMessagesFilterBase filter,
    required int pts,
    required int limit,
  }) async {
    // Preparing the request.
    final request = UpdatesGetChannelDifference(
      force: force,
      channel: channel,
      filter: filter,
      pts: pts,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesChannelDifferenceBase>();
  }
}

/// Photos.
class ClientPhotos {
  /// Constructor.
  const ClientPhotos._(this._c);
  final Client _c;

  /// Update Profile Photo.
  ///
  /// ID: `09e82039`.
  Future<Result<PhotosPhotoBase>> updateProfilePhoto({
    required bool fallback,
    InputUserBase? bot,
    required InputPhotoBase id,
  }) async {
    // Preparing the request.
    final request = PhotosUpdateProfilePhoto(
      fallback: fallback,
      bot: bot,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhotosPhotoBase>();
  }

  /// Upload Profile Photo.
  ///
  /// ID: `0388a3b5`.
  Future<Result<PhotosPhotoBase>> uploadProfilePhoto({
    required bool fallback,
    InputUserBase? bot,
    InputFileBase? file,
    InputFileBase? video,
    double? videoStartTs,
    VideoSizeBase? videoEmojiMarkup,
  }) async {
    // Preparing the request.
    final request = PhotosUploadProfilePhoto(
      fallback: fallback,
      bot: bot,
      file: file,
      video: video,
      videoStartTs: videoStartTs,
      videoEmojiMarkup: videoEmojiMarkup,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhotosPhotoBase>();
  }

  /// Delete Photos.
  ///
  /// ID: `87cf7f2f`.
  Future<Result<Vector<int>>> deletePhotos({
    required List<InputPhotoBase> id,
  }) async {
    // Preparing the request.
    final request = PhotosDeletePhotos(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Get User Photos.
  ///
  /// ID: `91cd32a8`.
  Future<Result<PhotosPhotosBase>> getUserPhotos({
    required InputUserBase userId,
    required int offset,
    required int maxId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PhotosGetUserPhotos(
      userId: userId,
      offset: offset,
      maxId: maxId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhotosPhotosBase>();
  }

  /// Upload Contact Profile Photo.
  ///
  /// ID: `e14c4a71`.
  Future<Result<PhotosPhotoBase>> uploadContactProfilePhoto({
    required bool suggest,
    required bool save,
    required InputUserBase userId,
    InputFileBase? file,
    InputFileBase? video,
    double? videoStartTs,
    VideoSizeBase? videoEmojiMarkup,
  }) async {
    // Preparing the request.
    final request = PhotosUploadContactProfilePhoto(
      suggest: suggest,
      save: save,
      userId: userId,
      file: file,
      video: video,
      videoStartTs: videoStartTs,
      videoEmojiMarkup: videoEmojiMarkup,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhotosPhotoBase>();
  }
}

/// Upload.
class ClientUpload {
  /// Constructor.
  const ClientUpload._(this._c);
  final Client _c;

  /// Save File Part.
  ///
  /// ID: `b304a621`.
  Future<Result<Boolean>> saveFilePart({
    required int fileId,
    required int filePart,
    required Uint8List bytes,
  }) async {
    // Preparing the request.
    final request = UploadSaveFilePart(
      fileId: fileId,
      filePart: filePart,
      bytes: bytes,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get File.
  ///
  /// ID: `be5335be`.
  Future<Result<UploadFileBase>> getFile({
    required bool precise,
    required bool cdnSupported,
    required InputFileLocationBase location,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = UploadGetFile(
      precise: precise,
      cdnSupported: cdnSupported,
      location: location,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UploadFileBase>();
  }

  /// Save Big File Part.
  ///
  /// ID: `de7b673d`.
  Future<Result<Boolean>> saveBigFilePart({
    required int fileId,
    required int filePart,
    required int fileTotalParts,
    required Uint8List bytes,
  }) async {
    // Preparing the request.
    final request = UploadSaveBigFilePart(
      fileId: fileId,
      filePart: filePart,
      fileTotalParts: fileTotalParts,
      bytes: bytes,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Web File.
  ///
  /// ID: `24e6818d`.
  Future<Result<UploadWebFileBase>> getWebFile({
    required InputWebFileLocationBase location,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = UploadGetWebFile(
      location: location,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UploadWebFileBase>();
  }

  /// Get Cdn File.
  ///
  /// ID: `395f69da`.
  Future<Result<UploadCdnFileBase>> getCdnFile({
    required Uint8List fileToken,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = UploadGetCdnFile(
      fileToken: fileToken,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UploadCdnFileBase>();
  }

  /// Reupload Cdn File.
  ///
  /// ID: `9b2754a8`.
  Future<Result<Vector<FileHashBase>>> reuploadCdnFile({
    required Uint8List fileToken,
    required Uint8List requestToken,
  }) async {
    // Preparing the request.
    final request = UploadReuploadCdnFile(
      fileToken: fileToken,
      requestToken: requestToken,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<FileHashBase>();
  }

  /// Get Cdn File Hashes.
  ///
  /// ID: `91dc3f31`.
  Future<Result<Vector<FileHashBase>>> getCdnFileHashes({
    required Uint8List fileToken,
    required int offset,
  }) async {
    // Preparing the request.
    final request = UploadGetCdnFileHashes(
      fileToken: fileToken,
      offset: offset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<FileHashBase>();
  }

  /// Get File Hashes.
  ///
  /// ID: `9156982a`.
  Future<Result<Vector<FileHashBase>>> getFileHashes({
    required InputFileLocationBase location,
    required int offset,
  }) async {
    // Preparing the request.
    final request = UploadGetFileHashes(location: location, offset: offset);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<FileHashBase>();
  }
}

/// Help.
class ClientHelp {
  /// Constructor.
  const ClientHelp._(this._c);
  final Client _c;

  /// Get Config.
  ///
  /// ID: `c4f9186b`.
  Future<Result<ConfigBase>> getConfig() async {
    // Preparing the request.
    final request = HelpGetConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ConfigBase>();
  }

  /// Get Nearest Dc.
  ///
  /// ID: `1fb33026`.
  Future<Result<NearestDcBase>> getNearestDc() async {
    // Preparing the request.
    final request = HelpGetNearestDc();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<NearestDcBase>();
  }

  /// Get App Update.
  ///
  /// ID: `522d5a7d`.
  Future<Result<HelpAppUpdateBase>> getAppUpdate({
    required String source,
  }) async {
    // Preparing the request.
    final request = HelpGetAppUpdate(source: source);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpAppUpdateBase>();
  }

  /// Get Invite Text.
  ///
  /// ID: `4d392343`.
  Future<Result<HelpInviteTextBase>> getInviteText() async {
    // Preparing the request.
    final request = HelpGetInviteText();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpInviteTextBase>();
  }

  /// Get Support.
  ///
  /// ID: `9cdf08cd`.
  Future<Result<HelpSupportBase>> getSupport() async {
    // Preparing the request.
    final request = HelpGetSupport();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpSupportBase>();
  }

  /// Set Bot Updates Status.
  ///
  /// ID: `ec22cfcd`.
  Future<Result<Boolean>> setBotUpdatesStatus({
    required int pendingUpdatesCount,
    required String message,
  }) async {
    // Preparing the request.
    final request = HelpSetBotUpdatesStatus(
      pendingUpdatesCount: pendingUpdatesCount,
      message: message,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Cdn Config.
  ///
  /// ID: `52029342`.
  Future<Result<CdnConfigBase>> getCdnConfig() async {
    // Preparing the request.
    final request = HelpGetCdnConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<CdnConfigBase>();
  }

  /// Get Recent Me Urls.
  ///
  /// ID: `3dc0f114`.
  Future<Result<HelpRecentMeUrlsBase>> getRecentMeUrls({
    required String referer,
  }) async {
    // Preparing the request.
    final request = HelpGetRecentMeUrls(referer: referer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpRecentMeUrlsBase>();
  }

  /// Get Terms Of Service Update.
  ///
  /// ID: `2ca51fd1`.
  Future<Result<HelpTermsOfServiceUpdateBase>> getTermsOfServiceUpdate() async {
    // Preparing the request.
    final request = HelpGetTermsOfServiceUpdate();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpTermsOfServiceUpdateBase>();
  }

  /// Accept Terms Of Service.
  ///
  /// ID: `ee72f79a`.
  Future<Result<Boolean>> acceptTermsOfService({
    required DataJSONBase id,
  }) async {
    // Preparing the request.
    final request = HelpAcceptTermsOfService(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Deep Link Info.
  ///
  /// ID: `3fedc75f`.
  Future<Result<HelpDeepLinkInfoBase>> getDeepLinkInfo({
    required String path,
  }) async {
    // Preparing the request.
    final request = HelpGetDeepLinkInfo(path: path);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpDeepLinkInfoBase>();
  }

  /// Get App Config.
  ///
  /// ID: `61e3f854`.
  Future<Result<HelpAppConfigBase>> getAppConfig({required int hash}) async {
    // Preparing the request.
    final request = HelpGetAppConfig(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpAppConfigBase>();
  }

  /// Save App Log.
  ///
  /// ID: `6f02f748`.
  Future<Result<Boolean>> saveAppLog({
    required List<InputAppEventBase> events,
  }) async {
    // Preparing the request.
    final request = HelpSaveAppLog(events: events);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Passport Config.
  ///
  /// ID: `c661ad08`.
  Future<Result<HelpPassportConfigBase>> getPassportConfig({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetPassportConfig(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpPassportConfigBase>();
  }

  /// Get Support Name.
  ///
  /// ID: `d360e72c`.
  Future<Result<HelpSupportNameBase>> getSupportName() async {
    // Preparing the request.
    final request = HelpGetSupportName();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpSupportNameBase>();
  }

  /// Get User Info.
  ///
  /// ID: `038a08d3`.
  Future<Result<HelpUserInfoBase>> getUserInfo({
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = HelpGetUserInfo(userId: userId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpUserInfoBase>();
  }

  /// Edit User Info.
  ///
  /// ID: `66b91b70`.
  Future<Result<HelpUserInfoBase>> editUserInfo({
    required InputUserBase userId,
    required String message,
    required List<MessageEntityBase> entities,
  }) async {
    // Preparing the request.
    final request = HelpEditUserInfo(
      userId: userId,
      message: message,
      entities: entities,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpUserInfoBase>();
  }

  /// Get Promo Data.
  ///
  /// ID: `c0977421`.
  Future<Result<HelpPromoDataBase>> getPromoData() async {
    // Preparing the request.
    final request = HelpGetPromoData();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpPromoDataBase>();
  }

  /// Hide Promo Data.
  ///
  /// ID: `1e251c95`.
  Future<Result<Boolean>> hidePromoData({required InputPeerBase peer}) async {
    // Preparing the request.
    final request = HelpHidePromoData(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Dismiss Suggestion.
  ///
  /// ID: `f50dbaa1`.
  Future<Result<Boolean>> dismissSuggestion({
    required InputPeerBase peer,
    required String suggestion,
  }) async {
    // Preparing the request.
    final request = HelpDismissSuggestion(peer: peer, suggestion: suggestion);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Countries List.
  ///
  /// ID: `735787a8`.
  Future<Result<HelpCountriesListBase>> getCountriesList({
    required String langCode,
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetCountriesList(langCode: langCode, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpCountriesListBase>();
  }

  /// Get Premium Promo.
  ///
  /// ID: `b81b93d4`.
  Future<Result<HelpPremiumPromoBase>> getPremiumPromo() async {
    // Preparing the request.
    final request = HelpGetPremiumPromo();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpPremiumPromoBase>();
  }

  /// Get Peer Colors.
  ///
  /// ID: `da80f42f`.
  Future<Result<HelpPeerColorsBase>> getPeerColors({required int hash}) async {
    // Preparing the request.
    final request = HelpGetPeerColors(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpPeerColorsBase>();
  }

  /// Get Peer Profile Colors.
  ///
  /// ID: `abcfa9fd`.
  Future<Result<HelpPeerColorsBase>> getPeerProfileColors({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetPeerProfileColors(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpPeerColorsBase>();
  }

  /// Get Timezones List.
  ///
  /// ID: `49b30240`.
  Future<Result<HelpTimezonesListBase>> getTimezonesList({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetTimezonesList(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<HelpTimezonesListBase>();
  }
}

/// Channels.
class ClientChannels {
  /// Constructor.
  const ClientChannels._(this._c);
  final Client _c;

  /// Read History.
  ///
  /// ID: `cc104937`.
  Future<Result<Boolean>> readHistory({
    required InputChannelBase channel,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = ChannelsReadHistory(channel: channel, maxId: maxId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Messages.
  ///
  /// ID: `84c1fd4e`.
  Future<Result<MessagesAffectedMessagesBase>> deleteMessages({
    required InputChannelBase channel,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteMessages(channel: channel, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>();
  }

  /// Report Spam.
  ///
  /// ID: `f44a8315`.
  Future<Result<Boolean>> reportSpam({
    required InputChannelBase channel,
    required InputPeerBase participant,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = ChannelsReportSpam(
      channel: channel,
      participant: participant,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Messages.
  ///
  /// ID: `ad8c9a23`.
  Future<Result<MessagesMessagesBase>> getMessages({
    required InputChannelBase channel,
    required List<InputMessageBase> id,
  }) async {
    // Preparing the request.
    final request = ChannelsGetMessages(channel: channel, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Get Participants.
  ///
  /// ID: `77ced9d0`.
  Future<Result<ChannelsChannelParticipantsBase>> getParticipants({
    required InputChannelBase channel,
    required ChannelParticipantsFilterBase filter,
    required int offset,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = ChannelsGetParticipants(
      channel: channel,
      filter: filter,
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChannelsChannelParticipantsBase>();
  }

  /// Get Participant.
  ///
  /// ID: `a0ab6cc6`.
  Future<Result<ChannelsChannelParticipantBase>> getParticipant({
    required InputChannelBase channel,
    required InputPeerBase participant,
  }) async {
    // Preparing the request.
    final request = ChannelsGetParticipant(
      channel: channel,
      participant: participant,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChannelsChannelParticipantBase>();
  }

  /// Get Channels.
  ///
  /// ID: `0a7f6bbb`.
  Future<Result<MessagesChatsBase>> getChannels({
    required List<InputChannelBase> id,
  }) async {
    // Preparing the request.
    final request = ChannelsGetChannels(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Get Full Channel.
  ///
  /// ID: `08736a09`.
  Future<Result<MessagesChatFullBase>> getFullChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsGetFullChannel(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatFullBase>();
  }

  /// Create Channel.
  ///
  /// ID: `91006707`.
  Future<Result<UpdatesBase>> createChannel({
    required bool broadcast,
    required bool megagroup,
    required bool forImport,
    required bool forum,
    required String title,
    required String about,
    InputGeoPointBase? geoPoint,
    String? address,
    int? ttlPeriod,
  }) async {
    // Preparing the request.
    final request = ChannelsCreateChannel(
      broadcast: broadcast,
      megagroup: megagroup,
      forImport: forImport,
      forum: forum,
      title: title,
      about: about,
      geoPoint: geoPoint,
      address: address,
      ttlPeriod: ttlPeriod,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Admin.
  ///
  /// ID: `d33c8902`.
  Future<Result<UpdatesBase>> editAdmin({
    required InputChannelBase channel,
    required InputUserBase userId,
    required ChatAdminRightsBase adminRights,
    required String rank,
  }) async {
    // Preparing the request.
    final request = ChannelsEditAdmin(
      channel: channel,
      userId: userId,
      adminRights: adminRights,
      rank: rank,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Title.
  ///
  /// ID: `566decd0`.
  Future<Result<UpdatesBase>> editTitle({
    required InputChannelBase channel,
    required String title,
  }) async {
    // Preparing the request.
    final request = ChannelsEditTitle(channel: channel, title: title);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Photo.
  ///
  /// ID: `f12e57c9`.
  Future<Result<UpdatesBase>> editPhoto({
    required InputChannelBase channel,
    required InputChatPhotoBase photo,
  }) async {
    // Preparing the request.
    final request = ChannelsEditPhoto(channel: channel, photo: photo);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Check Username.
  ///
  /// ID: `10e6bd2c`.
  Future<Result<Boolean>> checkUsername({
    required InputChannelBase channel,
    required String username,
  }) async {
    // Preparing the request.
    final request = ChannelsCheckUsername(channel: channel, username: username);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Username.
  ///
  /// ID: `3514b3de`.
  Future<Result<Boolean>> updateUsername({
    required InputChannelBase channel,
    required String username,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdateUsername(
      channel: channel,
      username: username,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Join Channel.
  ///
  /// ID: `24b524c5`.
  Future<Result<UpdatesBase>> joinChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsJoinChannel(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Leave Channel.
  ///
  /// ID: `f836aa95`.
  Future<Result<UpdatesBase>> leaveChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsLeaveChannel(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Invite To Channel.
  ///
  /// ID: `c9e33d54`.
  Future<Result<MessagesInvitedUsersBase>> inviteToChannel({
    required InputChannelBase channel,
    required List<InputUserBase> users,
  }) async {
    // Preparing the request.
    final request = ChannelsInviteToChannel(channel: channel, users: users);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesInvitedUsersBase>();
  }

  /// Delete Channel.
  ///
  /// ID: `c0111fe3`.
  Future<Result<UpdatesBase>> deleteChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteChannel(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Export Message Link.
  ///
  /// ID: `e63fadeb`.
  Future<Result<ExportedMessageLinkBase>> exportMessageLink({
    required bool grouped,
    required bool thread,
    required InputChannelBase channel,
    required int id,
  }) async {
    // Preparing the request.
    final request = ChannelsExportMessageLink(
      grouped: grouped,
      thread: thread,
      channel: channel,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ExportedMessageLinkBase>();
  }

  /// Toggle Signatures.
  ///
  /// ID: `418d549c`.
  Future<Result<UpdatesBase>> toggleSignatures({
    required bool signaturesEnabled,
    required bool profilesEnabled,
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleSignatures(
      signaturesEnabled: signaturesEnabled,
      profilesEnabled: profilesEnabled,
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Admined Public Channels.
  ///
  /// ID: `f8b036af`.
  Future<Result<MessagesChatsBase>> getAdminedPublicChannels({
    required bool byLocation,
    required bool checkLimit,
    required bool forPersonal,
  }) async {
    // Preparing the request.
    final request = ChannelsGetAdminedPublicChannels(
      byLocation: byLocation,
      checkLimit: checkLimit,
      forPersonal: forPersonal,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Edit Banned.
  ///
  /// ID: `96e6cd81`.
  Future<Result<UpdatesBase>> editBanned({
    required InputChannelBase channel,
    required InputPeerBase participant,
    required ChatBannedRightsBase bannedRights,
  }) async {
    // Preparing the request.
    final request = ChannelsEditBanned(
      channel: channel,
      participant: participant,
      bannedRights: bannedRights,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Admin Log.
  ///
  /// ID: `33ddf480`.
  Future<Result<ChannelsAdminLogResultsBase>> getAdminLog({
    required InputChannelBase channel,
    required String q,
    ChannelAdminLogEventsFilterBase? eventsFilter,
    List<InputUserBase>? admins,
    required int maxId,
    required int minId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ChannelsGetAdminLog(
      channel: channel,
      q: q,
      eventsFilter: eventsFilter,
      admins: admins,
      maxId: maxId,
      minId: minId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChannelsAdminLogResultsBase>();
  }

  /// Set Stickers.
  ///
  /// ID: `ea8ca4f9`.
  Future<Result<Boolean>> setStickers({
    required InputChannelBase channel,
    required InputStickerSetBase stickerset,
  }) async {
    // Preparing the request.
    final request = ChannelsSetStickers(
      channel: channel,
      stickerset: stickerset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Read Message Contents.
  ///
  /// ID: `eab5dc38`.
  Future<Result<Boolean>> readMessageContents({
    required InputChannelBase channel,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = ChannelsReadMessageContents(channel: channel, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete History.
  ///
  /// ID: `9baa9647`.
  Future<Result<UpdatesBase>> deleteHistory({
    required bool forEveryone,
    required InputChannelBase channel,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteHistory(
      forEveryone: forEveryone,
      channel: channel,
      maxId: maxId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Pre History Hidden.
  ///
  /// ID: `eabbb94c`.
  Future<Result<UpdatesBase>> togglePreHistoryHidden({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsTogglePreHistoryHidden(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Left Channels.
  ///
  /// ID: `8341ecc0`.
  Future<Result<MessagesChatsBase>> getLeftChannels({
    required int offset,
  }) async {
    // Preparing the request.
    final request = ChannelsGetLeftChannels(offset: offset);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Get Groups For Discussion.
  ///
  /// ID: `f5dad378`.
  Future<Result<MessagesChatsBase>> getGroupsForDiscussion() async {
    // Preparing the request.
    final request = ChannelsGetGroupsForDiscussion();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Set Discussion Group.
  ///
  /// ID: `40582bb2`.
  Future<Result<Boolean>> setDiscussionGroup({
    required InputChannelBase broadcast,
    required InputChannelBase group,
  }) async {
    // Preparing the request.
    final request = ChannelsSetDiscussionGroup(
      broadcast: broadcast,
      group: group,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Edit Creator.
  ///
  /// ID: `8f38cd1f`.
  Future<Result<UpdatesBase>> editCreator({
    required InputChannelBase channel,
    required InputUserBase userId,
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = ChannelsEditCreator(
      channel: channel,
      userId: userId,
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Location.
  ///
  /// ID: `58e63f6d`.
  Future<Result<Boolean>> editLocation({
    required InputChannelBase channel,
    required InputGeoPointBase geoPoint,
    required String address,
  }) async {
    // Preparing the request.
    final request = ChannelsEditLocation(
      channel: channel,
      geoPoint: geoPoint,
      address: address,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Slow Mode.
  ///
  /// ID: `edd49ef0`.
  Future<Result<UpdatesBase>> toggleSlowMode({
    required InputChannelBase channel,
    required int seconds,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleSlowMode(channel: channel, seconds: seconds);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Inactive Channels.
  ///
  /// ID: `11e831ee`.
  Future<Result<MessagesInactiveChatsBase>> getInactiveChannels() async {
    // Preparing the request.
    final request = ChannelsGetInactiveChannels();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesInactiveChatsBase>();
  }

  /// Convert To Gigagroup.
  ///
  /// ID: `0b290c69`.
  Future<Result<UpdatesBase>> convertToGigagroup({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsConvertToGigagroup(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Send As.
  ///
  /// ID: `e785a43f`.
  Future<Result<ChannelsSendAsPeersBase>> getSendAs({
    required bool forPaidReactions,
    required bool forLiveStories,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = ChannelsGetSendAs(
      forPaidReactions: forPaidReactions,
      forLiveStories: forLiveStories,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChannelsSendAsPeersBase>();
  }

  /// Delete Participant History.
  ///
  /// ID: `367544db`.
  Future<Result<MessagesAffectedHistoryBase>> deleteParticipantHistory({
    required InputChannelBase channel,
    required InputPeerBase participant,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteParticipantHistory(
      channel: channel,
      participant: participant,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>();
  }

  /// Toggle Join To Send.
  ///
  /// ID: `e4cb9580`.
  Future<Result<UpdatesBase>> toggleJoinToSend({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleJoinToSend(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Join Request.
  ///
  /// ID: `4c2985b6`.
  Future<Result<UpdatesBase>> toggleJoinRequest({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleJoinRequest(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Reorder Usernames.
  ///
  /// ID: `b45ced1d`.
  Future<Result<Boolean>> reorderUsernames({
    required InputChannelBase channel,
    required List<String> order,
  }) async {
    // Preparing the request.
    final request = ChannelsReorderUsernames(channel: channel, order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Username.
  ///
  /// ID: `50f24105`.
  Future<Result<Boolean>> toggleUsername({
    required InputChannelBase channel,
    required String username,
    required bool active,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleUsername(
      channel: channel,
      username: username,
      active: active,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Deactivate All Usernames.
  ///
  /// ID: `0a245dd3`.
  Future<Result<Boolean>> deactivateAllUsernames({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsDeactivateAllUsernames(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Forum.
  ///
  /// ID: `3ff75734`.
  Future<Result<UpdatesBase>> toggleForum({
    required InputChannelBase channel,
    required bool enabled,
    required bool tabs,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleForum(
      channel: channel,
      enabled: enabled,
      tabs: tabs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Anti Spam.
  ///
  /// ID: `68f3e4eb`.
  Future<Result<UpdatesBase>> toggleAntiSpam({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleAntiSpam(channel: channel, enabled: enabled);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Report Anti Spam False Positive.
  ///
  /// ID: `a850a693`.
  Future<Result<Boolean>> reportAntiSpamFalsePositive({
    required InputChannelBase channel,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = ChannelsReportAntiSpamFalsePositive(
      channel: channel,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Participants Hidden.
  ///
  /// ID: `6a6e7854`.
  Future<Result<UpdatesBase>> toggleParticipantsHidden({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleParticipantsHidden(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Update Color.
  ///
  /// ID: `d8aa3671`.
  Future<Result<UpdatesBase>> updateColor({
    required bool forProfile,
    required InputChannelBase channel,
    int? color,
    int? backgroundEmojiId,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdateColor(
      forProfile: forProfile,
      channel: channel,
      color: color,
      backgroundEmojiId: backgroundEmojiId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle View Forum As Messages.
  ///
  /// ID: `9738bb15`.
  Future<Result<UpdatesBase>> toggleViewForumAsMessages({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleViewForumAsMessages(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Channel Recommendations.
  ///
  /// ID: `25a71742`.
  Future<Result<MessagesChatsBase>> getChannelRecommendations({
    InputChannelBase? channel,
  }) async {
    // Preparing the request.
    final request = ChannelsGetChannelRecommendations(channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Update Emoji Status.
  ///
  /// ID: `f0d3e6a8`.
  Future<Result<UpdatesBase>> updateEmojiStatus({
    required InputChannelBase channel,
    required EmojiStatusBase emojiStatus,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdateEmojiStatus(
      channel: channel,
      emojiStatus: emojiStatus,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Set Boosts To Unblock Restrictions.
  ///
  /// ID: `ad399cee`.
  Future<Result<UpdatesBase>> setBoostsToUnblockRestrictions({
    required InputChannelBase channel,
    required int boosts,
  }) async {
    // Preparing the request.
    final request = ChannelsSetBoostsToUnblockRestrictions(
      channel: channel,
      boosts: boosts,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Set Emoji Stickers.
  ///
  /// ID: `3cd930b7`.
  Future<Result<Boolean>> setEmojiStickers({
    required InputChannelBase channel,
    required InputStickerSetBase stickerset,
  }) async {
    // Preparing the request.
    final request = ChannelsSetEmojiStickers(
      channel: channel,
      stickerset: stickerset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Restrict Sponsored Messages.
  ///
  /// ID: `9ae91519`.
  Future<Result<UpdatesBase>> restrictSponsoredMessages({
    required InputChannelBase channel,
    required bool restricted,
  }) async {
    // Preparing the request.
    final request = ChannelsRestrictSponsoredMessages(
      channel: channel,
      restricted: restricted,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Search Posts.
  ///
  /// ID: `f2c4f24d`.
  Future<Result<MessagesMessagesBase>> searchPosts({
    String? hashtag,
    String? query,
    required int offsetRate,
    required InputPeerBase offsetPeer,
    required int offsetId,
    required int limit,
    int? allowPaidStars,
  }) async {
    // Preparing the request.
    final request = ChannelsSearchPosts(
      hashtag: hashtag,
      query: query,
      offsetRate: offsetRate,
      offsetPeer: offsetPeer,
      offsetId: offsetId,
      limit: limit,
      allowPaidStars: allowPaidStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesMessagesBase>();
  }

  /// Update Paid Messages Price.
  ///
  /// ID: `4b12327b`.
  Future<Result<UpdatesBase>> updatePaidMessagesPrice({
    required bool broadcastMessagesAllowed,
    required InputChannelBase channel,
    required int sendPaidMessagesStars,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdatePaidMessagesPrice(
      broadcastMessagesAllowed: broadcastMessagesAllowed,
      channel: channel,
      sendPaidMessagesStars: sendPaidMessagesStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Autotranslation.
  ///
  /// ID: `167fc0a1`.
  Future<Result<UpdatesBase>> toggleAutotranslation({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleAutotranslation(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Message Author.
  ///
  /// ID: `ece2a0e6`.
  Future<Result<UserBase>> getMessageAuthor({
    required InputChannelBase channel,
    required int id,
  }) async {
    // Preparing the request.
    final request = ChannelsGetMessageAuthor(channel: channel, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UserBase>();
  }

  /// Check Search Posts Flood.
  ///
  /// ID: `22567115`.
  Future<Result<SearchPostsFloodBase>> checkSearchPostsFlood({
    String? query,
  }) async {
    // Preparing the request.
    final request = ChannelsCheckSearchPostsFlood(query: query);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<SearchPostsFloodBase>();
  }

  /// Set Main Profile Tab.
  ///
  /// ID: `3583fcb1`.
  Future<Result<Boolean>> setMainProfileTab({
    required InputChannelBase channel,
    required ProfileTabBase tab,
  }) async {
    // Preparing the request.
    final request = ChannelsSetMainProfileTab(channel: channel, tab: tab);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }
}

/// Bots.
class ClientBots {
  /// Constructor.
  const ClientBots._(this._c);
  final Client _c;

  /// Send Custom Request.
  ///
  /// ID: `aa2769ed`.
  Future<Result<DataJSONBase>> sendCustomRequest({
    required String customMethod,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = BotsSendCustomRequest(
      customMethod: customMethod,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DataJSONBase>();
  }

  /// Answer Webhook J S O N Query.
  ///
  /// ID: `e6213f4d`.
  Future<Result<Boolean>> answerWebhookJSONQuery({
    required int queryId,
    required DataJSONBase data,
  }) async {
    // Preparing the request.
    final request = BotsAnswerWebhookJSONQuery(queryId: queryId, data: data);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Bot Commands.
  ///
  /// ID: `0517165a`.
  Future<Result<Boolean>> setBotCommands({
    required BotCommandScopeBase scope,
    required String langCode,
    required List<BotCommandBase> commands,
  }) async {
    // Preparing the request.
    final request = BotsSetBotCommands(
      scope: scope,
      langCode: langCode,
      commands: commands,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reset Bot Commands.
  ///
  /// ID: `3d8de0f9`.
  Future<Result<Boolean>> resetBotCommands({
    required BotCommandScopeBase scope,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = BotsResetBotCommands(scope: scope, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot Commands.
  ///
  /// ID: `e34c0dd6`.
  Future<Result<Vector<BotCommandBase>>> getBotCommands({
    required BotCommandScopeBase scope,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = BotsGetBotCommands(scope: scope, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<BotCommandBase>();
  }

  /// Set Bot Menu Button.
  ///
  /// ID: `4504d54f`.
  Future<Result<Boolean>> setBotMenuButton({
    required InputUserBase userId,
    required BotMenuButtonBase button,
  }) async {
    // Preparing the request.
    final request = BotsSetBotMenuButton(userId: userId, button: button);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot Menu Button.
  ///
  /// ID: `9c60eb28`.
  Future<Result<BotMenuButtonBase>> getBotMenuButton({
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = BotsGetBotMenuButton(userId: userId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotMenuButtonBase>();
  }

  /// Set Bot Broadcast Default Admin Rights.
  ///
  /// ID: `788464e1`.
  Future<Result<Boolean>> setBotBroadcastDefaultAdminRights({
    required ChatAdminRightsBase adminRights,
  }) async {
    // Preparing the request.
    final request = BotsSetBotBroadcastDefaultAdminRights(
      adminRights: adminRights,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Bot Group Default Admin Rights.
  ///
  /// ID: `925ec9ea`.
  Future<Result<Boolean>> setBotGroupDefaultAdminRights({
    required ChatAdminRightsBase adminRights,
  }) async {
    // Preparing the request.
    final request = BotsSetBotGroupDefaultAdminRights(adminRights: adminRights);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Set Bot Info.
  ///
  /// ID: `10cf3123`.
  Future<Result<Boolean>> setBotInfo({
    InputUserBase? bot,
    required String langCode,
    String? name,
    String? about,
    String? description,
  }) async {
    // Preparing the request.
    final request = BotsSetBotInfo(
      bot: bot,
      langCode: langCode,
      name: name,
      about: about,
      description: description,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot Info.
  ///
  /// ID: `dcd914fd`.
  Future<Result<BotsBotInfoBase>> getBotInfo({
    InputUserBase? bot,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = BotsGetBotInfo(bot: bot, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotsBotInfoBase>();
  }

  /// Reorder Usernames.
  ///
  /// ID: `9709b1c2`.
  Future<Result<Boolean>> reorderUsernames({
    required InputUserBase bot,
    required List<String> order,
  }) async {
    // Preparing the request.
    final request = BotsReorderUsernames(bot: bot, order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Username.
  ///
  /// ID: `053ca973`.
  Future<Result<Boolean>> toggleUsername({
    required InputUserBase bot,
    required String username,
    required bool active,
  }) async {
    // Preparing the request.
    final request = BotsToggleUsername(
      bot: bot,
      username: username,
      active: active,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Can Send Message.
  ///
  /// ID: `1359f4e6`.
  Future<Result<Boolean>> canSendMessage({required InputUserBase bot}) async {
    // Preparing the request.
    final request = BotsCanSendMessage(bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Allow Send Message.
  ///
  /// ID: `f132e3ef`.
  Future<Result<UpdatesBase>> allowSendMessage({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = BotsAllowSendMessage(bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Invoke Web View Custom Method.
  ///
  /// ID: `087fc5e7`.
  Future<Result<DataJSONBase>> invokeWebViewCustomMethod({
    required InputUserBase bot,
    required String customMethod,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = BotsInvokeWebViewCustomMethod(
      bot: bot,
      customMethod: customMethod,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DataJSONBase>();
  }

  /// Get Popular App Bots.
  ///
  /// ID: `c2510192`.
  Future<Result<BotsPopularAppBotsBase>> getPopularAppBots({
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = BotsGetPopularAppBots(offset: offset, limit: limit);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotsPopularAppBotsBase>();
  }

  /// Add Preview Media.
  ///
  /// ID: `17aeb75a`.
  Future<Result<BotPreviewMediaBase>> addPreviewMedia({
    required InputUserBase bot,
    required String langCode,
    required InputMediaBase media,
  }) async {
    // Preparing the request.
    final request = BotsAddPreviewMedia(
      bot: bot,
      langCode: langCode,
      media: media,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotPreviewMediaBase>();
  }

  /// Edit Preview Media.
  ///
  /// ID: `8525606f`.
  Future<Result<BotPreviewMediaBase>> editPreviewMedia({
    required InputUserBase bot,
    required String langCode,
    required InputMediaBase media,
    required InputMediaBase newMedia,
  }) async {
    // Preparing the request.
    final request = BotsEditPreviewMedia(
      bot: bot,
      langCode: langCode,
      media: media,
      newMedia: newMedia,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotPreviewMediaBase>();
  }

  /// Delete Preview Media.
  ///
  /// ID: `2d0135b3`.
  Future<Result<Boolean>> deletePreviewMedia({
    required InputUserBase bot,
    required String langCode,
    required List<InputMediaBase> media,
  }) async {
    // Preparing the request.
    final request = BotsDeletePreviewMedia(
      bot: bot,
      langCode: langCode,
      media: media,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Reorder Preview Medias.
  ///
  /// ID: `b627f3aa`.
  Future<Result<Boolean>> reorderPreviewMedias({
    required InputUserBase bot,
    required String langCode,
    required List<InputMediaBase> order,
  }) async {
    // Preparing the request.
    final request = BotsReorderPreviewMedias(
      bot: bot,
      langCode: langCode,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Preview Info.
  ///
  /// ID: `423ab3ad`.
  Future<Result<BotsPreviewInfoBase>> getPreviewInfo({
    required InputUserBase bot,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = BotsGetPreviewInfo(bot: bot, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<BotsPreviewInfoBase>();
  }

  /// Get Preview Medias.
  ///
  /// ID: `a2a5594d`.
  Future<Result<Vector<BotPreviewMediaBase>>> getPreviewMedias({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = BotsGetPreviewMedias(bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<BotPreviewMediaBase>();
  }

  /// Update User Emoji Status.
  ///
  /// ID: `ed9f30c5`.
  Future<Result<Boolean>> updateUserEmojiStatus({
    required InputUserBase userId,
    required EmojiStatusBase emojiStatus,
  }) async {
    // Preparing the request.
    final request = BotsUpdateUserEmojiStatus(
      userId: userId,
      emojiStatus: emojiStatus,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle User Emoji Status Permission.
  ///
  /// ID: `06de6392`.
  Future<Result<Boolean>> toggleUserEmojiStatusPermission({
    required InputUserBase bot,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = BotsToggleUserEmojiStatusPermission(
      bot: bot,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Check Download File Params.
  ///
  /// ID: `50077589`.
  Future<Result<Boolean>> checkDownloadFileParams({
    required InputUserBase bot,
    required String fileName,
    required String url,
  }) async {
    // Preparing the request.
    final request = BotsCheckDownloadFileParams(
      bot: bot,
      fileName: fileName,
      url: url,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Admined Bots.
  ///
  /// ID: `b0711d83`.
  Future<Result<Vector<UserBase>>> getAdminedBots() async {
    // Preparing the request.
    final request = BotsGetAdminedBots();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<UserBase>();
  }

  /// Update Star Ref Program.
  ///
  /// ID: `778b5ab3`.
  Future<Result<StarRefProgramBase>> updateStarRefProgram({
    required InputUserBase bot,
    required int commissionPermille,
    int? durationMonths,
  }) async {
    // Preparing the request.
    final request = BotsUpdateStarRefProgram(
      bot: bot,
      commissionPermille: commissionPermille,
      durationMonths: durationMonths,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StarRefProgramBase>();
  }

  /// Set Custom Verification.
  ///
  /// ID: `8b89dfbd`.
  Future<Result<Boolean>> setCustomVerification({
    required bool enabled,
    InputUserBase? bot,
    required InputPeerBase peer,
    String? customDescription,
  }) async {
    // Preparing the request.
    final request = BotsSetCustomVerification(
      enabled: enabled,
      bot: bot,
      peer: peer,
      customDescription: customDescription,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bot Recommendations.
  ///
  /// ID: `a1b70815`.
  Future<Result<UsersUsersBase>> getBotRecommendations({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = BotsGetBotRecommendations(bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UsersUsersBase>();
  }
}

/// Payments.
class ClientPayments {
  /// Constructor.
  const ClientPayments._(this._c);
  final Client _c;

  /// Get Payment Form.
  ///
  /// ID: `37148dbb`.
  Future<Result<PaymentsPaymentFormBase>> getPaymentForm({
    required InputInvoiceBase invoice,
    DataJSONBase? themeParams,
  }) async {
    // Preparing the request.
    final request = PaymentsGetPaymentForm(
      invoice: invoice,
      themeParams: themeParams,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsPaymentFormBase>();
  }

  /// Get Payment Receipt.
  ///
  /// ID: `2478d1cc`.
  Future<Result<PaymentsPaymentReceiptBase>> getPaymentReceipt({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetPaymentReceipt(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsPaymentReceiptBase>();
  }

  /// Validate Requested Info.
  ///
  /// ID: `b6c8f12b`.
  Future<Result<PaymentsValidatedRequestedInfoBase>> validateRequestedInfo({
    required bool save,
    required InputInvoiceBase invoice,
    required PaymentRequestedInfoBase info,
  }) async {
    // Preparing the request.
    final request = PaymentsValidateRequestedInfo(
      save: save,
      invoice: invoice,
      info: info,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsValidatedRequestedInfoBase>();
  }

  /// Send Payment Form.
  ///
  /// ID: `2d03522f`.
  Future<Result<PaymentsPaymentResultBase>> sendPaymentForm({
    required int formId,
    required InputInvoiceBase invoice,
    String? requestedInfoId,
    String? shippingOptionId,
    required InputPaymentCredentialsBase credentials,
    int? tipAmount,
  }) async {
    // Preparing the request.
    final request = PaymentsSendPaymentForm(
      formId: formId,
      invoice: invoice,
      requestedInfoId: requestedInfoId,
      shippingOptionId: shippingOptionId,
      credentials: credentials,
      tipAmount: tipAmount,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsPaymentResultBase>();
  }

  /// Get Saved Info.
  ///
  /// ID: `227d824b`.
  Future<Result<PaymentsSavedInfoBase>> getSavedInfo() async {
    // Preparing the request.
    final request = PaymentsGetSavedInfo();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsSavedInfoBase>();
  }

  /// Clear Saved Info.
  ///
  /// ID: `d83d70c1`.
  Future<Result<Boolean>> clearSavedInfo({
    required bool credentials,
    required bool info,
  }) async {
    // Preparing the request.
    final request = PaymentsClearSavedInfo(
      credentials: credentials,
      info: info,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Bank Card Data.
  ///
  /// ID: `2e79d779`.
  Future<Result<PaymentsBankCardDataBase>> getBankCardData({
    required String number,
  }) async {
    // Preparing the request.
    final request = PaymentsGetBankCardData(number: number);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsBankCardDataBase>();
  }

  /// Export Invoice.
  ///
  /// ID: `0f91b065`.
  Future<Result<PaymentsExportedInvoiceBase>> exportInvoice({
    required InputMediaBase invoiceMedia,
  }) async {
    // Preparing the request.
    final request = PaymentsExportInvoice(invoiceMedia: invoiceMedia);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsExportedInvoiceBase>();
  }

  /// Assign App Store Transaction.
  ///
  /// ID: `80ed747d`.
  Future<Result<UpdatesBase>> assignAppStoreTransaction({
    required Uint8List receipt,
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsAssignAppStoreTransaction(
      receipt: receipt,
      purpose: purpose,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Assign Play Market Transaction.
  ///
  /// ID: `dffd50d3`.
  Future<Result<UpdatesBase>> assignPlayMarketTransaction({
    required DataJSONBase receipt,
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsAssignPlayMarketTransaction(
      receipt: receipt,
      purpose: purpose,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Premium Gift Code Options.
  ///
  /// ID: `2757ba54`.
  Future<Result<Vector<PremiumGiftCodeOptionBase>>> getPremiumGiftCodeOptions({
    InputPeerBase? boostPeer,
  }) async {
    // Preparing the request.
    final request = PaymentsGetPremiumGiftCodeOptions(boostPeer: boostPeer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<PremiumGiftCodeOptionBase>();
  }

  /// Check Gift Code.
  ///
  /// ID: `8e51b4c1`.
  Future<Result<PaymentsCheckedGiftCodeBase>> checkGiftCode({
    required String slug,
  }) async {
    // Preparing the request.
    final request = PaymentsCheckGiftCode(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsCheckedGiftCodeBase>();
  }

  /// Apply Gift Code.
  ///
  /// ID: `f6e26854`.
  Future<Result<UpdatesBase>> applyGiftCode({required String slug}) async {
    // Preparing the request.
    final request = PaymentsApplyGiftCode(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Giveaway Info.
  ///
  /// ID: `f4239425`.
  Future<Result<PaymentsGiveawayInfoBase>> getGiveawayInfo({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetGiveawayInfo(peer: peer, msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsGiveawayInfoBase>();
  }

  /// Launch Prepaid Giveaway.
  ///
  /// ID: `5ff58f20`.
  Future<Result<UpdatesBase>> launchPrepaidGiveaway({
    required InputPeerBase peer,
    required int giveawayId,
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsLaunchPrepaidGiveaway(
      peer: peer,
      giveawayId: giveawayId,
      purpose: purpose,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Stars Topup Options.
  ///
  /// ID: `c00ec7d3`.
  Future<Result<Vector<StarsTopupOptionBase>>> getStarsTopupOptions() async {
    // Preparing the request.
    final request = PaymentsGetStarsTopupOptions();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<StarsTopupOptionBase>();
  }

  /// Get Stars Status.
  ///
  /// ID: `4ea9b3bf`.
  Future<Result<PaymentsStarsStatusBase>> getStarsStatus({
    required bool ton,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsStatus(ton: ton, peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsStatusBase>();
  }

  /// Get Stars Transactions.
  ///
  /// ID: `69da4557`.
  Future<Result<PaymentsStarsStatusBase>> getStarsTransactions({
    required bool inbound,
    required bool outbound,
    required bool ascending,
    required bool ton,
    String? subscriptionId,
    required InputPeerBase peer,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsTransactions(
      inbound: inbound,
      outbound: outbound,
      ascending: ascending,
      ton: ton,
      subscriptionId: subscriptionId,
      peer: peer,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsStatusBase>();
  }

  /// Send Stars Form.
  ///
  /// ID: `7998c914`.
  Future<Result<PaymentsPaymentResultBase>> sendStarsForm({
    required int formId,
    required InputInvoiceBase invoice,
  }) async {
    // Preparing the request.
    final request = PaymentsSendStarsForm(formId: formId, invoice: invoice);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsPaymentResultBase>();
  }

  /// Refund Stars Charge.
  ///
  /// ID: `25ae8f4a`.
  Future<Result<UpdatesBase>> refundStarsCharge({
    required InputUserBase userId,
    required String chargeId,
  }) async {
    // Preparing the request.
    final request = PaymentsRefundStarsCharge(
      userId: userId,
      chargeId: chargeId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Stars Revenue Stats.
  ///
  /// ID: `d91ffad6`.
  Future<Result<PaymentsStarsRevenueStatsBase>> getStarsRevenueStats({
    required bool dark,
    required bool ton,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsRevenueStats(
      dark: dark,
      ton: ton,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsRevenueStatsBase>();
  }

  /// Get Stars Revenue Withdrawal Url.
  ///
  /// ID: `2433dc92`.
  Future<Result<PaymentsStarsRevenueWithdrawalUrlBase>>
      getStarsRevenueWithdrawalUrl({
    required bool ton,
    required InputPeerBase peer,
    int? amount,
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsRevenueWithdrawalUrl(
      ton: ton,
      peer: peer,
      amount: amount,
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsRevenueWithdrawalUrlBase>();
  }

  /// Get Stars Revenue Ads Account Url.
  ///
  /// ID: `d1d7efc5`.
  Future<Result<PaymentsStarsRevenueAdsAccountUrlBase>>
      getStarsRevenueAdsAccountUrl({required InputPeerBase peer}) async {
    // Preparing the request.
    final request = PaymentsGetStarsRevenueAdsAccountUrl(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsRevenueAdsAccountUrlBase>();
  }

  /// Get Stars Transactions By I D.
  ///
  /// ID: `2dca16b8`.
  Future<Result<PaymentsStarsStatusBase>> getStarsTransactionsByID({
    required bool ton,
    required InputPeerBase peer,
    required List<InputStarsTransactionBase> id,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsTransactionsByID(
      ton: ton,
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsStatusBase>();
  }

  /// Get Stars Gift Options.
  ///
  /// ID: `d3c96bc8`.
  Future<Result<Vector<StarsGiftOptionBase>>> getStarsGiftOptions({
    InputUserBase? userId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsGiftOptions(userId: userId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<StarsGiftOptionBase>();
  }

  /// Get Stars Subscriptions.
  ///
  /// ID: `032512c5`.
  Future<Result<PaymentsStarsStatusBase>> getStarsSubscriptions({
    required bool missingBalance,
    required InputPeerBase peer,
    required String offset,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarsSubscriptions(
      missingBalance: missingBalance,
      peer: peer,
      offset: offset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarsStatusBase>();
  }

  /// Change Stars Subscription.
  ///
  /// ID: `c7770878`.
  Future<Result<Boolean>> changeStarsSubscription({
    required InputPeerBase peer,
    required String subscriptionId,
    bool? canceled,
  }) async {
    // Preparing the request.
    final request = PaymentsChangeStarsSubscription(
      peer: peer,
      subscriptionId: subscriptionId,
      canceled: canceled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Fulfill Stars Subscription.
  ///
  /// ID: `cc5bebb3`.
  Future<Result<Boolean>> fulfillStarsSubscription({
    required InputPeerBase peer,
    required String subscriptionId,
  }) async {
    // Preparing the request.
    final request = PaymentsFulfillStarsSubscription(
      peer: peer,
      subscriptionId: subscriptionId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Stars Giveaway Options.
  ///
  /// ID: `bd1efd3e`.
  Future<Result<Vector<StarsGiveawayOptionBase>>>
      getStarsGiveawayOptions() async {
    // Preparing the request.
    final request = PaymentsGetStarsGiveawayOptions();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<StarsGiveawayOptionBase>();
  }

  /// Get Star Gifts.
  ///
  /// ID: `c4563590`.
  Future<Result<PaymentsStarGiftsBase>> getStarGifts({
    required int hash,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGifts(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftsBase>();
  }

  /// Save Star Gift.
  ///
  /// ID: `2a2a697c`.
  Future<Result<Boolean>> saveStarGift({
    required bool unsave,
    required InputSavedStarGiftBase stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsSaveStarGift(unsave: unsave, stargift: stargift);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Convert Star Gift.
  ///
  /// ID: `74bf076b`.
  Future<Result<Boolean>> convertStarGift({
    required InputSavedStarGiftBase stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsConvertStarGift(stargift: stargift);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Bot Cancel Stars Subscription.
  ///
  /// ID: `6dfa0622`.
  Future<Result<Boolean>> botCancelStarsSubscription({
    required bool restore,
    required InputUserBase userId,
    required String chargeId,
  }) async {
    // Preparing the request.
    final request = PaymentsBotCancelStarsSubscription(
      restore: restore,
      userId: userId,
      chargeId: chargeId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Connected Star Ref Bots.
  ///
  /// ID: `5869a553`.
  Future<Result<PaymentsConnectedStarRefBotsBase>> getConnectedStarRefBots({
    required InputPeerBase peer,
    DateTime? offsetDate,
    String? offsetLink,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PaymentsGetConnectedStarRefBots(
      peer: peer,
      offsetDate: offsetDate,
      offsetLink: offsetLink,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsConnectedStarRefBotsBase>();
  }

  /// Get Connected Star Ref Bot.
  ///
  /// ID: `b7d998f0`.
  Future<Result<PaymentsConnectedStarRefBotsBase>> getConnectedStarRefBot({
    required InputPeerBase peer,
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = PaymentsGetConnectedStarRefBot(peer: peer, bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsConnectedStarRefBotsBase>();
  }

  /// Get Suggested Star Ref Bots.
  ///
  /// ID: `0d6b48f7`.
  Future<Result<PaymentsSuggestedStarRefBotsBase>> getSuggestedStarRefBots({
    required bool orderByRevenue,
    required bool orderByDate,
    required InputPeerBase peer,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PaymentsGetSuggestedStarRefBots(
      orderByRevenue: orderByRevenue,
      orderByDate: orderByDate,
      peer: peer,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsSuggestedStarRefBotsBase>();
  }

  /// Connect Star Ref Bot.
  ///
  /// ID: `7ed5348a`.
  Future<Result<PaymentsConnectedStarRefBotsBase>> connectStarRefBot({
    required InputPeerBase peer,
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = PaymentsConnectStarRefBot(peer: peer, bot: bot);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsConnectedStarRefBotsBase>();
  }

  /// Edit Connected Star Ref Bot.
  ///
  /// ID: `e4fca4a3`.
  Future<Result<PaymentsConnectedStarRefBotsBase>> editConnectedStarRefBot({
    required bool revoked,
    required InputPeerBase peer,
    required String link,
  }) async {
    // Preparing the request.
    final request = PaymentsEditConnectedStarRefBot(
      revoked: revoked,
      peer: peer,
      link: link,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsConnectedStarRefBotsBase>();
  }

  /// Get Star Gift Upgrade Preview.
  ///
  /// ID: `9c9abcb1`.
  Future<Result<PaymentsStarGiftUpgradePreviewBase>> getStarGiftUpgradePreview({
    required int giftId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftUpgradePreview(giftId: giftId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftUpgradePreviewBase>();
  }

  /// Upgrade Star Gift.
  ///
  /// ID: `aed6e4f5`.
  Future<Result<UpdatesBase>> upgradeStarGift({
    required bool keepOriginalDetails,
    required InputSavedStarGiftBase stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsUpgradeStarGift(
      keepOriginalDetails: keepOriginalDetails,
      stargift: stargift,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Transfer Star Gift.
  ///
  /// ID: `7f18176a`.
  Future<Result<UpdatesBase>> transferStarGift({
    required InputSavedStarGiftBase stargift,
    required InputPeerBase toId,
  }) async {
    // Preparing the request.
    final request = PaymentsTransferStarGift(stargift: stargift, toId: toId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Unique Star Gift.
  ///
  /// ID: `a1974d72`.
  Future<Result<PaymentsUniqueStarGiftBase>> getUniqueStarGift({
    required String slug,
  }) async {
    // Preparing the request.
    final request = PaymentsGetUniqueStarGift(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsUniqueStarGiftBase>();
  }

  /// Get Saved Star Gifts.
  ///
  /// ID: `a319e569`.
  Future<Result<PaymentsSavedStarGiftsBase>> getSavedStarGifts({
    required bool excludeUnsaved,
    required bool excludeSaved,
    required bool excludeUnlimited,
    required bool excludeUnique,
    required bool sortByValue,
    required bool excludeUpgradable,
    required bool excludeUnupgradable,
    required bool peerColorAvailable,
    required bool excludeHosted,
    required InputPeerBase peer,
    int? collectionId,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PaymentsGetSavedStarGifts(
      excludeUnsaved: excludeUnsaved,
      excludeSaved: excludeSaved,
      excludeUnlimited: excludeUnlimited,
      excludeUnique: excludeUnique,
      sortByValue: sortByValue,
      excludeUpgradable: excludeUpgradable,
      excludeUnupgradable: excludeUnupgradable,
      peerColorAvailable: peerColorAvailable,
      excludeHosted: excludeHosted,
      peer: peer,
      collectionId: collectionId,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsSavedStarGiftsBase>();
  }

  /// Get Saved Star Gift.
  ///
  /// ID: `b455a106`.
  Future<Result<PaymentsSavedStarGiftsBase>> getSavedStarGift({
    required List<InputSavedStarGiftBase> stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsGetSavedStarGift(stargift: stargift);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsSavedStarGiftsBase>();
  }

  /// Get Star Gift Withdrawal Url.
  ///
  /// ID: `d06e93a8`.
  Future<Result<PaymentsStarGiftWithdrawalUrlBase>> getStarGiftWithdrawalUrl({
    required InputSavedStarGiftBase stargift,
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftWithdrawalUrl(
      stargift: stargift,
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftWithdrawalUrlBase>();
  }

  /// Toggle Chat Star Gift Notifications.
  ///
  /// ID: `60eaefa1`.
  Future<Result<Boolean>> toggleChatStarGiftNotifications({
    required bool enabled,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PaymentsToggleChatStarGiftNotifications(
      enabled: enabled,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Toggle Star Gifts Pinned To Top.
  ///
  /// ID: `1513e7b0`.
  Future<Result<Boolean>> toggleStarGiftsPinnedToTop({
    required InputPeerBase peer,
    required List<InputSavedStarGiftBase> stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsToggleStarGiftsPinnedToTop(
      peer: peer,
      stargift: stargift,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Can Purchase Store.
  ///
  /// ID: `4fdc5ea7`.
  Future<Result<Boolean>> canPurchaseStore({
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsCanPurchaseStore(purpose: purpose);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Resale Star Gifts.
  ///
  /// ID: `7a5fa236`.
  Future<Result<PaymentsResaleStarGiftsBase>> getResaleStarGifts({
    required bool sortByPrice,
    required bool sortByNum,
    int? attributesHash,
    required int giftId,
    List<StarGiftAttributeIdBase>? attributes,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PaymentsGetResaleStarGifts(
      sortByPrice: sortByPrice,
      sortByNum: sortByNum,
      attributesHash: attributesHash,
      giftId: giftId,
      attributes: attributes,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsResaleStarGiftsBase>();
  }

  /// Update Star Gift Price.
  ///
  /// ID: `edbe6ccb`.
  Future<Result<UpdatesBase>> updateStarGiftPrice({
    required InputSavedStarGiftBase stargift,
    required StarsAmountBase resellAmount,
  }) async {
    // Preparing the request.
    final request = PaymentsUpdateStarGiftPrice(
      stargift: stargift,
      resellAmount: resellAmount,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Create Star Gift Collection.
  ///
  /// ID: `1f4a0e87`.
  Future<Result<StarGiftCollectionBase>> createStarGiftCollection({
    required InputPeerBase peer,
    required String title,
    required List<InputSavedStarGiftBase> stargift,
  }) async {
    // Preparing the request.
    final request = PaymentsCreateStarGiftCollection(
      peer: peer,
      title: title,
      stargift: stargift,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StarGiftCollectionBase>();
  }

  /// Update Star Gift Collection.
  ///
  /// ID: `4fddbee7`.
  Future<Result<StarGiftCollectionBase>> updateStarGiftCollection({
    required InputPeerBase peer,
    required int collectionId,
    String? title,
    List<InputSavedStarGiftBase>? deleteStargift,
    List<InputSavedStarGiftBase>? addStargift,
    List<InputSavedStarGiftBase>? order,
  }) async {
    // Preparing the request.
    final request = PaymentsUpdateStarGiftCollection(
      peer: peer,
      collectionId: collectionId,
      title: title,
      deleteStargift: deleteStargift,
      addStargift: addStargift,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StarGiftCollectionBase>();
  }

  /// Reorder Star Gift Collections.
  ///
  /// ID: `c32af4cc`.
  Future<Result<Boolean>> reorderStarGiftCollections({
    required InputPeerBase peer,
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = PaymentsReorderStarGiftCollections(
      peer: peer,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Star Gift Collection.
  ///
  /// ID: `ad5648e8`.
  Future<Result<Boolean>> deleteStarGiftCollection({
    required InputPeerBase peer,
    required int collectionId,
  }) async {
    // Preparing the request.
    final request = PaymentsDeleteStarGiftCollection(
      peer: peer,
      collectionId: collectionId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Star Gift Collections.
  ///
  /// ID: `981b91dd`.
  Future<Result<PaymentsStarGiftCollectionsBase>> getStarGiftCollections({
    required InputPeerBase peer,
    required int hash,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftCollections(peer: peer, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftCollectionsBase>();
  }

  /// Get Unique Star Gift Value Info.
  ///
  /// ID: `4365af6b`.
  Future<Result<PaymentsUniqueStarGiftValueInfoBase>>
      getUniqueStarGiftValueInfo({required String slug}) async {
    // Preparing the request.
    final request = PaymentsGetUniqueStarGiftValueInfo(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsUniqueStarGiftValueInfoBase>();
  }

  /// Check Can Send Gift.
  ///
  /// ID: `c0c4edc9`.
  Future<Result<PaymentsCheckCanSendGiftResultBase>> checkCanSendGift({
    required int giftId,
  }) async {
    // Preparing the request.
    final request = PaymentsCheckCanSendGift(giftId: giftId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsCheckCanSendGiftResultBase>();
  }

  /// Get Star Gift Auction State.
  ///
  /// ID: `5c9ff4d6`.
  Future<Result<PaymentsStarGiftAuctionStateBase>> getStarGiftAuctionState({
    required InputStarGiftAuctionBase auction,
    required int version,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftAuctionState(
      auction: auction,
      version: version,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftAuctionStateBase>();
  }

  /// Get Star Gift Auction Acquired Gifts.
  ///
  /// ID: `6ba2cbec`.
  Future<Result<PaymentsStarGiftAuctionAcquiredGiftsBase>>
      getStarGiftAuctionAcquiredGifts({required int giftId}) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftAuctionAcquiredGifts(giftId: giftId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftAuctionAcquiredGiftsBase>();
  }

  /// Get Star Gift Active Auctions.
  ///
  /// ID: `a5d0514d`.
  Future<Result<PaymentsStarGiftActiveAuctionsBase>> getStarGiftActiveAuctions({
    required int hash,
  }) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftActiveAuctions(hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftActiveAuctionsBase>();
  }

  /// Resolve Star Gift Offer.
  ///
  /// ID: `e9ce781c`.
  Future<Result<UpdatesBase>> resolveStarGiftOffer({
    required bool decline,
    required int offerMsgId,
  }) async {
    // Preparing the request.
    final request = PaymentsResolveStarGiftOffer(
      decline: decline,
      offerMsgId: offerMsgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Star Gift Offer.
  ///
  /// ID: `8fb86b41`.
  Future<Result<UpdatesBase>> sendStarGiftOffer({
    required InputPeerBase peer,
    required String slug,
    required StarsAmountBase price,
    required int duration,
    required int randomId,
    int? allowPaidStars,
  }) async {
    // Preparing the request.
    final request = PaymentsSendStarGiftOffer(
      peer: peer,
      slug: slug,
      price: price,
      duration: duration,
      randomId: randomId,
      allowPaidStars: allowPaidStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Star Gift Upgrade Attributes.
  ///
  /// ID: `6d038b58`.
  Future<Result<PaymentsStarGiftUpgradeAttributesBase>>
      getStarGiftUpgradeAttributes({required int giftId}) async {
    // Preparing the request.
    final request = PaymentsGetStarGiftUpgradeAttributes(giftId: giftId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PaymentsStarGiftUpgradeAttributesBase>();
  }
}

/// Stickers.
class ClientStickers {
  /// Constructor.
  const ClientStickers._(this._c);
  final Client _c;

  /// Create Sticker Set.
  ///
  /// ID: `9021ab67`.
  Future<Result<MessagesStickerSetBase>> createStickerSet({
    required bool masks,
    required bool emojis,
    required bool textColor,
    required InputUserBase userId,
    required String title,
    required String shortName,
    InputDocumentBase? thumb,
    required List<InputStickerSetItemBase> stickers,
    String? software,
  }) async {
    // Preparing the request.
    final request = StickersCreateStickerSet(
      masks: masks,
      emojis: emojis,
      textColor: textColor,
      userId: userId,
      title: title,
      shortName: shortName,
      thumb: thumb,
      stickers: stickers,
      software: software,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Remove Sticker From Set.
  ///
  /// ID: `f7760f51`.
  Future<Result<MessagesStickerSetBase>> removeStickerFromSet({
    required InputDocumentBase sticker,
  }) async {
    // Preparing the request.
    final request = StickersRemoveStickerFromSet(sticker: sticker);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Change Sticker Position.
  ///
  /// ID: `ffb6d4ca`.
  Future<Result<MessagesStickerSetBase>> changeStickerPosition({
    required InputDocumentBase sticker,
    required int position,
  }) async {
    // Preparing the request.
    final request = StickersChangeStickerPosition(
      sticker: sticker,
      position: position,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Add Sticker To Set.
  ///
  /// ID: `8653febe`.
  Future<Result<MessagesStickerSetBase>> addStickerToSet({
    required InputStickerSetBase stickerset,
    required InputStickerSetItemBase sticker,
  }) async {
    // Preparing the request.
    final request = StickersAddStickerToSet(
      stickerset: stickerset,
      sticker: sticker,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Set Sticker Set Thumb.
  ///
  /// ID: `a76a5392`.
  Future<Result<MessagesStickerSetBase>> setStickerSetThumb({
    required InputStickerSetBase stickerset,
    InputDocumentBase? thumb,
    int? thumbDocumentId,
  }) async {
    // Preparing the request.
    final request = StickersSetStickerSetThumb(
      stickerset: stickerset,
      thumb: thumb,
      thumbDocumentId: thumbDocumentId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Check Short Name.
  ///
  /// ID: `284b3639`.
  Future<Result<Boolean>> checkShortName({required String shortName}) async {
    // Preparing the request.
    final request = StickersCheckShortName(shortName: shortName);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Suggest Short Name.
  ///
  /// ID: `4dafc503`.
  Future<Result<StickersSuggestedShortNameBase>> suggestShortName({
    required String title,
  }) async {
    // Preparing the request.
    final request = StickersSuggestShortName(title: title);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StickersSuggestedShortNameBase>();
  }

  /// Change Sticker.
  ///
  /// ID: `f5537ebc`.
  Future<Result<MessagesStickerSetBase>> changeSticker({
    required InputDocumentBase sticker,
    String? emoji,
    MaskCoordsBase? maskCoords,
    String? keywords,
  }) async {
    // Preparing the request.
    final request = StickersChangeSticker(
      sticker: sticker,
      emoji: emoji,
      maskCoords: maskCoords,
      keywords: keywords,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Rename Sticker Set.
  ///
  /// ID: `124b1c00`.
  Future<Result<MessagesStickerSetBase>> renameStickerSet({
    required InputStickerSetBase stickerset,
    required String title,
  }) async {
    // Preparing the request.
    final request = StickersRenameStickerSet(
      stickerset: stickerset,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }

  /// Delete Sticker Set.
  ///
  /// ID: `87704394`.
  Future<Result<Boolean>> deleteStickerSet({
    required InputStickerSetBase stickerset,
  }) async {
    // Preparing the request.
    final request = StickersDeleteStickerSet(stickerset: stickerset);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Replace Sticker.
  ///
  /// ID: `4696459a`.
  Future<Result<MessagesStickerSetBase>> replaceSticker({
    required InputDocumentBase sticker,
    required InputStickerSetItemBase newSticker,
  }) async {
    // Preparing the request.
    final request = StickersReplaceSticker(
      sticker: sticker,
      newSticker: newSticker,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesStickerSetBase>();
  }
}

/// Phone.
class ClientPhone {
  /// Constructor.
  const ClientPhone._(this._c);
  final Client _c;

  /// Get Call Config.
  ///
  /// ID: `55451fa9`.
  Future<Result<DataJSONBase>> getCallConfig() async {
    // Preparing the request.
    final request = PhoneGetCallConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<DataJSONBase>();
  }

  /// Request Call.
  ///
  /// ID: `42ff96ed`.
  Future<Result<PhonePhoneCallBase>> requestCall({
    required bool video,
    required InputUserBase userId,
    required int randomId,
    required Uint8List gAHash,
    required PhoneCallProtocolBase protocol,
  }) async {
    // Preparing the request.
    final request = PhoneRequestCall(
      video: video,
      userId: userId,
      randomId: randomId,
      gAHash: gAHash,
      protocol: protocol,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhonePhoneCallBase>();
  }

  /// Accept Call.
  ///
  /// ID: `3bd2b4a0`.
  Future<Result<PhonePhoneCallBase>> acceptCall({
    required InputPhoneCallBase peer,
    required Uint8List gB,
    required PhoneCallProtocolBase protocol,
  }) async {
    // Preparing the request.
    final request = PhoneAcceptCall(peer: peer, gB: gB, protocol: protocol);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhonePhoneCallBase>();
  }

  /// Confirm Call.
  ///
  /// ID: `2efe1722`.
  Future<Result<PhonePhoneCallBase>> confirmCall({
    required InputPhoneCallBase peer,
    required Uint8List gA,
    required int keyFingerprint,
    required PhoneCallProtocolBase protocol,
  }) async {
    // Preparing the request.
    final request = PhoneConfirmCall(
      peer: peer,
      gA: gA,
      keyFingerprint: keyFingerprint,
      protocol: protocol,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhonePhoneCallBase>();
  }

  /// Received Call.
  ///
  /// ID: `17d54f61`.
  Future<Result<Boolean>> receivedCall({
    required InputPhoneCallBase peer,
  }) async {
    // Preparing the request.
    final request = PhoneReceivedCall(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Discard Call.
  ///
  /// ID: `b2cbc1c0`.
  Future<Result<UpdatesBase>> discardCall({
    required bool video,
    required InputPhoneCallBase peer,
    required int duration,
    required PhoneCallDiscardReasonBase reason,
    required int connectionId,
  }) async {
    // Preparing the request.
    final request = PhoneDiscardCall(
      video: video,
      peer: peer,
      duration: duration,
      reason: reason,
      connectionId: connectionId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Set Call Rating.
  ///
  /// ID: `59ead627`.
  Future<Result<UpdatesBase>> setCallRating({
    required bool userInitiative,
    required InputPhoneCallBase peer,
    required int rating,
    required String comment,
  }) async {
    // Preparing the request.
    final request = PhoneSetCallRating(
      userInitiative: userInitiative,
      peer: peer,
      rating: rating,
      comment: comment,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Save Call Debug.
  ///
  /// ID: `277add7e`.
  Future<Result<Boolean>> saveCallDebug({
    required InputPhoneCallBase peer,
    required DataJSONBase debug,
  }) async {
    // Preparing the request.
    final request = PhoneSaveCallDebug(peer: peer, debug: debug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Send Signaling Data.
  ///
  /// ID: `ff7a9383`.
  Future<Result<Boolean>> sendSignalingData({
    required InputPhoneCallBase peer,
    required Uint8List data,
  }) async {
    // Preparing the request.
    final request = PhoneSendSignalingData(peer: peer, data: data);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Create Group Call.
  ///
  /// ID: `48cdc6d8`.
  Future<Result<UpdatesBase>> createGroupCall({
    required bool rtmpStream,
    required InputPeerBase peer,
    required int randomId,
    String? title,
    DateTime? scheduleDate,
  }) async {
    // Preparing the request.
    final request = PhoneCreateGroupCall(
      rtmpStream: rtmpStream,
      peer: peer,
      randomId: randomId,
      title: title,
      scheduleDate: scheduleDate,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Join Group Call.
  ///
  /// ID: `8fb53057`.
  Future<Result<UpdatesBase>> joinGroupCall({
    required bool muted,
    required bool videoStopped,
    required InputGroupCallBase call,
    required InputPeerBase joinAs,
    String? inviteHash,
    Int256? publicKey,
    Uint8List? block,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = PhoneJoinGroupCall(
      muted: muted,
      videoStopped: videoStopped,
      call: call,
      joinAs: joinAs,
      inviteHash: inviteHash,
      publicKey: publicKey,
      block: block,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Leave Group Call.
  ///
  /// ID: `500377f9`.
  Future<Result<UpdatesBase>> leaveGroupCall({
    required InputGroupCallBase call,
    required int source,
  }) async {
    // Preparing the request.
    final request = PhoneLeaveGroupCall(call: call, source: source);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Invite To Group Call.
  ///
  /// ID: `7b393160`.
  Future<Result<UpdatesBase>> inviteToGroupCall({
    required InputGroupCallBase call,
    required List<InputUserBase> users,
  }) async {
    // Preparing the request.
    final request = PhoneInviteToGroupCall(call: call, users: users);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Discard Group Call.
  ///
  /// ID: `7a777135`.
  Future<Result<UpdatesBase>> discardGroupCall({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneDiscardGroupCall(call: call);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Toggle Group Call Settings.
  ///
  /// ID: `974392f2`.
  Future<Result<UpdatesBase>> toggleGroupCallSettings({
    required bool resetInviteHash,
    required InputGroupCallBase call,
    bool? joinMuted,
    bool? messagesEnabled,
    int? sendPaidMessagesStars,
  }) async {
    // Preparing the request.
    final request = PhoneToggleGroupCallSettings(
      resetInviteHash: resetInviteHash,
      call: call,
      joinMuted: joinMuted,
      messagesEnabled: messagesEnabled,
      sendPaidMessagesStars: sendPaidMessagesStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Group Call.
  ///
  /// ID: `041845db`.
  Future<Result<PhoneGroupCallBase>> getGroupCall({
    required InputGroupCallBase call,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCall(call: call, limit: limit);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneGroupCallBase>();
  }

  /// Get Group Participants.
  ///
  /// ID: `c558d8ab`.
  Future<Result<PhoneGroupParticipantsBase>> getGroupParticipants({
    required InputGroupCallBase call,
    required List<InputPeerBase> ids,
    required List<int> sources,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupParticipants(
      call: call,
      ids: ids,
      sources: sources,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneGroupParticipantsBase>();
  }

  /// Check Group Call.
  ///
  /// ID: `b59cf977`.
  Future<Result<Vector<int>>> checkGroupCall({
    required InputGroupCallBase call,
    required List<int> sources,
  }) async {
    // Preparing the request.
    final request = PhoneCheckGroupCall(call: call, sources: sources);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Toggle Group Call Record.
  ///
  /// ID: `f128c708`.
  Future<Result<UpdatesBase>> toggleGroupCallRecord({
    required bool start,
    required bool video,
    required InputGroupCallBase call,
    String? title,
    bool? videoPortrait,
  }) async {
    // Preparing the request.
    final request = PhoneToggleGroupCallRecord(
      start: start,
      video: video,
      call: call,
      title: title,
      videoPortrait: videoPortrait,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Group Call Participant.
  ///
  /// ID: `a5273abf`.
  Future<Result<UpdatesBase>> editGroupCallParticipant({
    required InputGroupCallBase call,
    required InputPeerBase participant,
    bool? muted,
    int? volume,
    bool? raiseHand,
    bool? videoStopped,
    bool? videoPaused,
    bool? presentationPaused,
  }) async {
    // Preparing the request.
    final request = PhoneEditGroupCallParticipant(
      call: call,
      participant: participant,
      muted: muted,
      volume: volume,
      raiseHand: raiseHand,
      videoStopped: videoStopped,
      videoPaused: videoPaused,
      presentationPaused: presentationPaused,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Group Call Title.
  ///
  /// ID: `1ca6ac0a`.
  Future<Result<UpdatesBase>> editGroupCallTitle({
    required InputGroupCallBase call,
    required String title,
  }) async {
    // Preparing the request.
    final request = PhoneEditGroupCallTitle(call: call, title: title);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Group Call Join As.
  ///
  /// ID: `ef7c213a`.
  Future<Result<PhoneJoinAsPeersBase>> getGroupCallJoinAs({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallJoinAs(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneJoinAsPeersBase>();
  }

  /// Export Group Call Invite.
  ///
  /// ID: `e6aa647f`.
  Future<Result<PhoneExportedGroupCallInviteBase>> exportGroupCallInvite({
    required bool canSelfUnmute,
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneExportGroupCallInvite(
      canSelfUnmute: canSelfUnmute,
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneExportedGroupCallInviteBase>();
  }

  /// Toggle Group Call Start Subscription.
  ///
  /// ID: `219c34e6`.
  Future<Result<UpdatesBase>> toggleGroupCallStartSubscription({
    required InputGroupCallBase call,
    required bool subscribed,
  }) async {
    // Preparing the request.
    final request = PhoneToggleGroupCallStartSubscription(
      call: call,
      subscribed: subscribed,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Start Scheduled Group Call.
  ///
  /// ID: `5680e342`.
  Future<Result<UpdatesBase>> startScheduledGroupCall({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneStartScheduledGroupCall(call: call);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Save Default Group Call Join As.
  ///
  /// ID: `575e1f8c`.
  Future<Result<Boolean>> saveDefaultGroupCallJoinAs({
    required InputPeerBase peer,
    required InputPeerBase joinAs,
  }) async {
    // Preparing the request.
    final request = PhoneSaveDefaultGroupCallJoinAs(peer: peer, joinAs: joinAs);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Join Group Call Presentation.
  ///
  /// ID: `cbea6bc4`.
  Future<Result<UpdatesBase>> joinGroupCallPresentation({
    required InputGroupCallBase call,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = PhoneJoinGroupCallPresentation(call: call, params: params);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Leave Group Call Presentation.
  ///
  /// ID: `1c50d144`.
  Future<Result<UpdatesBase>> leaveGroupCallPresentation({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneLeaveGroupCallPresentation(call: call);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Group Call Stream Channels.
  ///
  /// ID: `1ab21940`.
  Future<Result<PhoneGroupCallStreamChannelsBase>> getGroupCallStreamChannels({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallStreamChannels(call: call);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneGroupCallStreamChannelsBase>();
  }

  /// Get Group Call Stream Rtmp Url.
  ///
  /// ID: `5af4c73a`.
  Future<Result<PhoneGroupCallStreamRtmpUrlBase>> getGroupCallStreamRtmpUrl({
    required bool liveStory,
    required InputPeerBase peer,
    required bool revoke,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallStreamRtmpUrl(
      liveStory: liveStory,
      peer: peer,
      revoke: revoke,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneGroupCallStreamRtmpUrlBase>();
  }

  /// Save Call Log.
  ///
  /// ID: `41248786`.
  Future<Result<Boolean>> saveCallLog({
    required InputPhoneCallBase peer,
    required InputFileBase file,
  }) async {
    // Preparing the request.
    final request = PhoneSaveCallLog(peer: peer, file: file);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Create Conference Call.
  ///
  /// ID: `7d0444bb`.
  Future<Result<UpdatesBase>> createConferenceCall({
    required bool muted,
    required bool videoStopped,
    required bool join,
    required int randomId,
    Int256? publicKey,
    Uint8List? block,
    DataJSONBase? params,
  }) async {
    // Preparing the request.
    final request = PhoneCreateConferenceCall(
      muted: muted,
      videoStopped: videoStopped,
      join: join,
      randomId: randomId,
      publicKey: publicKey,
      block: block,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Conference Call Participants.
  ///
  /// ID: `8ca60525`.
  Future<Result<UpdatesBase>> deleteConferenceCallParticipants({
    required bool onlyLeft,
    required bool kick,
    required InputGroupCallBase call,
    required List<int> ids,
    required Uint8List block,
  }) async {
    // Preparing the request.
    final request = PhoneDeleteConferenceCallParticipants(
      onlyLeft: onlyLeft,
      kick: kick,
      call: call,
      ids: ids,
      block: block,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Conference Call Broadcast.
  ///
  /// ID: `c6701900`.
  Future<Result<UpdatesBase>> sendConferenceCallBroadcast({
    required InputGroupCallBase call,
    required Uint8List block,
  }) async {
    // Preparing the request.
    final request = PhoneSendConferenceCallBroadcast(call: call, block: block);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Invite Conference Call Participant.
  ///
  /// ID: `bcf22685`.
  Future<Result<UpdatesBase>> inviteConferenceCallParticipant({
    required bool video,
    required InputGroupCallBase call,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = PhoneInviteConferenceCallParticipant(
      video: video,
      call: call,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Decline Conference Call Invite.
  ///
  /// ID: `3c479971`.
  Future<Result<UpdatesBase>> declineConferenceCallInvite({
    required int msgId,
  }) async {
    // Preparing the request.
    final request = PhoneDeclineConferenceCallInvite(msgId: msgId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Group Call Chain Blocks.
  ///
  /// ID: `ee9f88a6`.
  Future<Result<UpdatesBase>> getGroupCallChainBlocks({
    required InputGroupCallBase call,
    required int subChainId,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallChainBlocks(
      call: call,
      subChainId: subChainId,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Group Call Message.
  ///
  /// ID: `b1d11410`.
  Future<Result<UpdatesBase>> sendGroupCallMessage({
    required InputGroupCallBase call,
    required int randomId,
    required TextWithEntitiesBase message,
    int? allowPaidStars,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = PhoneSendGroupCallMessage(
      call: call,
      randomId: randomId,
      message: message,
      allowPaidStars: allowPaidStars,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Group Call Encrypted Message.
  ///
  /// ID: `e5afa56d`.
  Future<Result<Boolean>> sendGroupCallEncryptedMessage({
    required InputGroupCallBase call,
    required Uint8List encryptedMessage,
  }) async {
    // Preparing the request.
    final request = PhoneSendGroupCallEncryptedMessage(
      call: call,
      encryptedMessage: encryptedMessage,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Group Call Messages.
  ///
  /// ID: `f64f54f7`.
  Future<Result<UpdatesBase>> deleteGroupCallMessages({
    required bool reportSpam,
    required InputGroupCallBase call,
    required List<int> messages,
  }) async {
    // Preparing the request.
    final request = PhoneDeleteGroupCallMessages(
      reportSpam: reportSpam,
      call: call,
      messages: messages,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Group Call Participant Messages.
  ///
  /// ID: `1dbfeca0`.
  Future<Result<UpdatesBase>> deleteGroupCallParticipantMessages({
    required bool reportSpam,
    required InputGroupCallBase call,
    required InputPeerBase participant,
  }) async {
    // Preparing the request.
    final request = PhoneDeleteGroupCallParticipantMessages(
      reportSpam: reportSpam,
      call: call,
      participant: participant,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Group Call Stars.
  ///
  /// ID: `6f636302`.
  Future<Result<PhoneGroupCallStarsBase>> getGroupCallStars({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallStars(call: call);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PhoneGroupCallStarsBase>();
  }

  /// Save Default Send As.
  ///
  /// ID: `4167add1`.
  Future<Result<Boolean>> saveDefaultSendAs({
    required InputGroupCallBase call,
    required InputPeerBase sendAs,
  }) async {
    // Preparing the request.
    final request = PhoneSaveDefaultSendAs(call: call, sendAs: sendAs);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }
}

/// Langpack.
class ClientLangpack {
  /// Constructor.
  const ClientLangpack._(this._c);
  final Client _c;

  /// Get Lang Pack.
  ///
  /// ID: `f2f2330a`.
  Future<Result<LangPackDifferenceBase>> getLangPack({
    required String langPack,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = LangpackGetLangPack(langPack: langPack, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<LangPackDifferenceBase>();
  }

  /// Get Strings.
  ///
  /// ID: `efea3803`.
  Future<Result<Vector<LangPackStringBase>>> getStrings({
    required String langPack,
    required String langCode,
    required List<String> keys,
  }) async {
    // Preparing the request.
    final request = LangpackGetStrings(
      langPack: langPack,
      langCode: langCode,
      keys: keys,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<LangPackStringBase>();
  }

  /// Get Difference.
  ///
  /// ID: `cd984aa5`.
  Future<Result<LangPackDifferenceBase>> getDifference({
    required String langPack,
    required String langCode,
    required int fromVersion,
  }) async {
    // Preparing the request.
    final request = LangpackGetDifference(
      langPack: langPack,
      langCode: langCode,
      fromVersion: fromVersion,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<LangPackDifferenceBase>();
  }

  /// Get Languages.
  ///
  /// ID: `42c6978f`.
  Future<Result<Vector<LangPackLanguageBase>>> getLanguages({
    required String langPack,
  }) async {
    // Preparing the request.
    final request = LangpackGetLanguages(langPack: langPack);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<LangPackLanguageBase>();
  }

  /// Get Language.
  ///
  /// ID: `6a596502`.
  Future<Result<LangPackLanguageBase>> getLanguage({
    required String langPack,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = LangpackGetLanguage(langPack: langPack, langCode: langCode);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<LangPackLanguageBase>();
  }
}

/// Folders.
class ClientFolders {
  /// Constructor.
  const ClientFolders._(this._c);
  final Client _c;

  /// Edit Peer Folders.
  ///
  /// ID: `6847d0ab`.
  Future<Result<UpdatesBase>> editPeerFolders({
    required List<InputFolderPeerBase> folderPeers,
  }) async {
    // Preparing the request.
    final request = FoldersEditPeerFolders(folderPeers: folderPeers);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }
}

/// Stats.
class ClientStats {
  /// Constructor.
  const ClientStats._(this._c);
  final Client _c;

  /// Get Broadcast Stats.
  ///
  /// ID: `ab42441a`.
  Future<Result<StatsBroadcastStatsBase>> getBroadcastStats({
    required bool dark,
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = StatsGetBroadcastStats(dark: dark, channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsBroadcastStatsBase>();
  }

  /// Load Async Graph.
  ///
  /// ID: `621d5fa0`.
  Future<Result<StatsGraphBase>> loadAsyncGraph({
    required String token,
    int? x,
  }) async {
    // Preparing the request.
    final request = StatsLoadAsyncGraph(token: token, x: x);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsGraphBase>();
  }

  /// Get Megagroup Stats.
  ///
  /// ID: `dcdf8607`.
  Future<Result<StatsMegagroupStatsBase>> getMegagroupStats({
    required bool dark,
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = StatsGetMegagroupStats(dark: dark, channel: channel);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsMegagroupStatsBase>();
  }

  /// Get Message Public Forwards.
  ///
  /// ID: `5f150144`.
  Future<Result<StatsPublicForwardsBase>> getMessagePublicForwards({
    required InputChannelBase channel,
    required int msgId,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StatsGetMessagePublicForwards(
      channel: channel,
      msgId: msgId,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsPublicForwardsBase>();
  }

  /// Get Message Stats.
  ///
  /// ID: `b6e0a3f5`.
  Future<Result<StatsMessageStatsBase>> getMessageStats({
    required bool dark,
    required InputChannelBase channel,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = StatsGetMessageStats(
      dark: dark,
      channel: channel,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsMessageStatsBase>();
  }

  /// Get Story Stats.
  ///
  /// ID: `374fef40`.
  Future<Result<StatsStoryStatsBase>> getStoryStats({
    required bool dark,
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = StatsGetStoryStats(dark: dark, peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsStoryStatsBase>();
  }

  /// Get Story Public Forwards.
  ///
  /// ID: `a6437ef6`.
  Future<Result<StatsPublicForwardsBase>> getStoryPublicForwards({
    required InputPeerBase peer,
    required int id,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StatsGetStoryPublicForwards(
      peer: peer,
      id: id,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StatsPublicForwardsBase>();
  }
}

/// Chatlists.
class ClientChatlists {
  /// Constructor.
  const ClientChatlists._(this._c);
  final Client _c;

  /// Export Chatlist Invite.
  ///
  /// ID: `8472478e`.
  Future<Result<ChatlistsExportedChatlistInviteBase>> exportChatlistInvite({
    required InputChatlistBase chatlist,
    required String title,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsExportChatlistInvite(
      chatlist: chatlist,
      title: title,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatlistsExportedChatlistInviteBase>();
  }

  /// Delete Exported Invite.
  ///
  /// ID: `719c5c5e`.
  Future<Result<Boolean>> deleteExportedInvite({
    required InputChatlistBase chatlist,
    required String slug,
  }) async {
    // Preparing the request.
    final request = ChatlistsDeleteExportedInvite(
      chatlist: chatlist,
      slug: slug,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Edit Exported Invite.
  ///
  /// ID: `653db63d`.
  Future<Result<ExportedChatlistInviteBase>> editExportedInvite({
    required InputChatlistBase chatlist,
    required String slug,
    String? title,
    List<InputPeerBase>? peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsEditExportedInvite(
      chatlist: chatlist,
      slug: slug,
      title: title,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ExportedChatlistInviteBase>();
  }

  /// Get Exported Invites.
  ///
  /// ID: `ce03da83`.
  Future<Result<ChatlistsExportedInvitesBase>> getExportedInvites({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsGetExportedInvites(chatlist: chatlist);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatlistsExportedInvitesBase>();
  }

  /// Check Chatlist Invite.
  ///
  /// ID: `41c10fff`.
  Future<Result<ChatlistsChatlistInviteBase>> checkChatlistInvite({
    required String slug,
  }) async {
    // Preparing the request.
    final request = ChatlistsCheckChatlistInvite(slug: slug);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatlistsChatlistInviteBase>();
  }

  /// Join Chatlist Invite.
  ///
  /// ID: `a6b1e39a`.
  Future<Result<UpdatesBase>> joinChatlistInvite({
    required String slug,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsJoinChatlistInvite(slug: slug, peers: peers);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Chatlist Updates.
  ///
  /// ID: `89419521`.
  Future<Result<ChatlistsChatlistUpdatesBase>> getChatlistUpdates({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsGetChatlistUpdates(chatlist: chatlist);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ChatlistsChatlistUpdatesBase>();
  }

  /// Join Chatlist Updates.
  ///
  /// ID: `e089f8f5`.
  Future<Result<UpdatesBase>> joinChatlistUpdates({
    required InputChatlistBase chatlist,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsJoinChatlistUpdates(
      chatlist: chatlist,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Hide Chatlist Updates.
  ///
  /// ID: `66e486fb`.
  Future<Result<Boolean>> hideChatlistUpdates({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsHideChatlistUpdates(chatlist: chatlist);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Leave Chatlist Suggestions.
  ///
  /// ID: `fdbcd714`.
  Future<Result<Vector<PeerBase>>> getLeaveChatlistSuggestions({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsGetLeaveChatlistSuggestions(chatlist: chatlist);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<PeerBase>();
  }

  /// Leave Chatlist.
  ///
  /// ID: `74fae13a`.
  Future<Result<UpdatesBase>> leaveChatlist({
    required InputChatlistBase chatlist,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsLeaveChatlist(chatlist: chatlist, peers: peers);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }
}

/// Stories.
class ClientStories {
  /// Constructor.
  const ClientStories._(this._c);
  final Client _c;

  /// Can Send Story.
  ///
  /// ID: `30eb63f0`.
  Future<Result<StoriesCanSendStoryCountBase>> canSendStory({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = StoriesCanSendStory(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesCanSendStoryCountBase>();
  }

  /// Send Story.
  ///
  /// ID: `737fc2ec`.
  Future<Result<UpdatesBase>> sendStory({
    required bool pinned,
    required bool noforwards,
    required bool fwdModified,
    required InputPeerBase peer,
    required InputMediaBase media,
    List<MediaAreaBase>? mediaAreas,
    String? caption,
    List<MessageEntityBase>? entities,
    required List<InputPrivacyRuleBase> privacyRules,
    required int randomId,
    int? period,
    InputPeerBase? fwdFromId,
    int? fwdFromStory,
    List<int>? albums,
  }) async {
    // Preparing the request.
    final request = StoriesSendStory(
      pinned: pinned,
      noforwards: noforwards,
      fwdModified: fwdModified,
      peer: peer,
      media: media,
      mediaAreas: mediaAreas,
      caption: caption,
      entities: entities,
      privacyRules: privacyRules,
      randomId: randomId,
      period: period,
      fwdFromId: fwdFromId,
      fwdFromStory: fwdFromStory,
      albums: albums,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Edit Story.
  ///
  /// ID: `b583ba46`.
  Future<Result<UpdatesBase>> editStory({
    required InputPeerBase peer,
    required int id,
    InputMediaBase? media,
    List<MediaAreaBase>? mediaAreas,
    String? caption,
    List<MessageEntityBase>? entities,
    List<InputPrivacyRuleBase>? privacyRules,
  }) async {
    // Preparing the request.
    final request = StoriesEditStory(
      peer: peer,
      id: id,
      media: media,
      mediaAreas: mediaAreas,
      caption: caption,
      entities: entities,
      privacyRules: privacyRules,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Delete Stories.
  ///
  /// ID: `ae59db5f`.
  Future<Result<Vector<int>>> deleteStories({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesDeleteStories(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Toggle Pinned.
  ///
  /// ID: `9a75a1ef`.
  Future<Result<Vector<int>>> togglePinned({
    required InputPeerBase peer,
    required List<int> id,
    required bool pinned,
  }) async {
    // Preparing the request.
    final request = StoriesTogglePinned(peer: peer, id: id, pinned: pinned);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Get All Stories.
  ///
  /// ID: `eeb0d625`.
  Future<Result<StoriesAllStoriesBase>> getAllStories({
    required bool next,
    required bool hidden,
    String? state,
  }) async {
    // Preparing the request.
    final request = StoriesGetAllStories(
      next: next,
      hidden: hidden,
      state: state,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesAllStoriesBase>();
  }

  /// Get Pinned Stories.
  ///
  /// ID: `5821a5dc`.
  Future<Result<StoriesStoriesBase>> getPinnedStories({
    required InputPeerBase peer,
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesGetPinnedStories(
      peer: peer,
      offsetId: offsetId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoriesBase>();
  }

  /// Get Stories Archive.
  ///
  /// ID: `b4352016`.
  Future<Result<StoriesStoriesBase>> getStoriesArchive({
    required InputPeerBase peer,
    required int offsetId,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoriesArchive(
      peer: peer,
      offsetId: offsetId,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoriesBase>();
  }

  /// Get Stories By I D.
  ///
  /// ID: `5774ca74`.
  Future<Result<StoriesStoriesBase>> getStoriesByID({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoriesByID(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoriesBase>();
  }

  /// Toggle All Stories Hidden.
  ///
  /// ID: `7c2557c4`.
  Future<Result<Boolean>> toggleAllStoriesHidden({required bool hidden}) async {
    // Preparing the request.
    final request = StoriesToggleAllStoriesHidden(hidden: hidden);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Read Stories.
  ///
  /// ID: `a556dac8`.
  Future<Result<Vector<int>>> readStories({
    required InputPeerBase peer,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = StoriesReadStories(peer: peer, maxId: maxId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<int>();
  }

  /// Increment Story Views.
  ///
  /// ID: `b2028afb`.
  Future<Result<Boolean>> incrementStoryViews({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesIncrementStoryViews(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Story Views List.
  ///
  /// ID: `7ed23c57`.
  Future<Result<StoriesStoryViewsListBase>> getStoryViewsList({
    required bool justContacts,
    required bool reactionsFirst,
    required bool forwardsFirst,
    required InputPeerBase peer,
    String? q,
    required int id,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoryViewsList(
      justContacts: justContacts,
      reactionsFirst: reactionsFirst,
      forwardsFirst: forwardsFirst,
      peer: peer,
      q: q,
      id: id,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoryViewsListBase>();
  }

  /// Get Stories Views.
  ///
  /// ID: `28e16cc8`.
  Future<Result<StoriesStoryViewsBase>> getStoriesViews({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoriesViews(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoryViewsBase>();
  }

  /// Export Story Link.
  ///
  /// ID: `7b8def20`.
  Future<Result<ExportedStoryLinkBase>> exportStoryLink({
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = StoriesExportStoryLink(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ExportedStoryLinkBase>();
  }

  /// Report.
  ///
  /// ID: `19d8eb45`.
  Future<Result<ReportResultBase>> report({
    required InputPeerBase peer,
    required List<int> id,
    required Uint8List option,
    required String message,
  }) async {
    // Preparing the request.
    final request = StoriesReport(
      peer: peer,
      id: id,
      option: option,
      message: message,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<ReportResultBase>();
  }

  /// Activate Stealth Mode.
  ///
  /// ID: `57bbd166`.
  Future<Result<UpdatesBase>> activateStealthMode({
    required bool past,
    required bool future,
  }) async {
    // Preparing the request.
    final request = StoriesActivateStealthMode(past: past, future: future);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Send Reaction.
  ///
  /// ID: `7fd736b2`.
  Future<Result<UpdatesBase>> sendReaction({
    required bool addToRecent,
    required InputPeerBase peer,
    required int storyId,
    required ReactionBase reaction,
  }) async {
    // Preparing the request.
    final request = StoriesSendReaction(
      addToRecent: addToRecent,
      peer: peer,
      storyId: storyId,
      reaction: reaction,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Peer Stories.
  ///
  /// ID: `2c4ada50`.
  Future<Result<StoriesPeerStoriesBase>> getPeerStories({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = StoriesGetPeerStories(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesPeerStoriesBase>();
  }

  /// Get All Read Peer Stories.
  ///
  /// ID: `9b5ae7f9`.
  Future<Result<UpdatesBase>> getAllReadPeerStories() async {
    // Preparing the request.
    final request = StoriesGetAllReadPeerStories();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }

  /// Get Peer Max I Ds.
  ///
  /// ID: `78499170`.
  Future<Result<Vector<RecentStoryBase>>> getPeerMaxIDs({
    required List<InputPeerBase> id,
  }) async {
    // Preparing the request.
    final request = StoriesGetPeerMaxIDs(id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._toVector<RecentStoryBase>();
  }

  /// Get Chats To Send.
  ///
  /// ID: `a56a8b60`.
  Future<Result<MessagesChatsBase>> getChatsToSend() async {
    // Preparing the request.
    final request = StoriesGetChatsToSend();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<MessagesChatsBase>();
  }

  /// Toggle Peer Stories Hidden.
  ///
  /// ID: `bd0415c4`.
  Future<Result<Boolean>> togglePeerStoriesHidden({
    required InputPeerBase peer,
    required bool hidden,
  }) async {
    // Preparing the request.
    final request = StoriesTogglePeerStoriesHidden(peer: peer, hidden: hidden);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Story Reactions List.
  ///
  /// ID: `b9b2881f`.
  Future<Result<StoriesStoryReactionsListBase>> getStoryReactionsList({
    required bool forwardsFirst,
    required InputPeerBase peer,
    required int id,
    ReactionBase? reaction,
    String? offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoryReactionsList(
      forwardsFirst: forwardsFirst,
      peer: peer,
      id: id,
      reaction: reaction,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoryReactionsListBase>();
  }

  /// Toggle Pinned To Top.
  ///
  /// ID: `0b297e9b`.
  Future<Result<Boolean>> togglePinnedToTop({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesTogglePinnedToTop(peer: peer, id: id);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Search Posts.
  ///
  /// ID: `d1810907`.
  Future<Result<StoriesFoundStoriesBase>> searchPosts({
    String? hashtag,
    MediaAreaBase? area,
    InputPeerBase? peer,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesSearchPosts(
      hashtag: hashtag,
      area: area,
      peer: peer,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesFoundStoriesBase>();
  }

  /// Create Album.
  ///
  /// ID: `a36396e5`.
  Future<Result<StoryAlbumBase>> createAlbum({
    required InputPeerBase peer,
    required String title,
    required List<int> stories,
  }) async {
    // Preparing the request.
    final request = StoriesCreateAlbum(
      peer: peer,
      title: title,
      stories: stories,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoryAlbumBase>();
  }

  /// Update Album.
  ///
  /// ID: `5e5259b6`.
  Future<Result<StoryAlbumBase>> updateAlbum({
    required InputPeerBase peer,
    required int albumId,
    String? title,
    List<int>? deleteStories,
    List<int>? addStories,
    List<int>? order,
  }) async {
    // Preparing the request.
    final request = StoriesUpdateAlbum(
      peer: peer,
      albumId: albumId,
      title: title,
      deleteStories: deleteStories,
      addStories: addStories,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoryAlbumBase>();
  }

  /// Reorder Albums.
  ///
  /// ID: `8535fbd9`.
  Future<Result<Boolean>> reorderAlbums({
    required InputPeerBase peer,
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = StoriesReorderAlbums(peer: peer, order: order);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Delete Album.
  ///
  /// ID: `8d3456d0`.
  Future<Result<Boolean>> deleteAlbum({
    required InputPeerBase peer,
    required int albumId,
  }) async {
    // Preparing the request.
    final request = StoriesDeleteAlbum(peer: peer, albumId: albumId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Albums.
  ///
  /// ID: `25b3eac7`.
  Future<Result<StoriesAlbumsBase>> getAlbums({
    required InputPeerBase peer,
    required int hash,
  }) async {
    // Preparing the request.
    final request = StoriesGetAlbums(peer: peer, hash: hash);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesAlbumsBase>();
  }

  /// Get Album Stories.
  ///
  /// ID: `ac806d61`.
  Future<Result<StoriesStoriesBase>> getAlbumStories({
    required InputPeerBase peer,
    required int albumId,
    required int offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = StoriesGetAlbumStories(
      peer: peer,
      albumId: albumId,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<StoriesStoriesBase>();
  }

  /// Start Live.
  ///
  /// ID: `d069ccde`.
  Future<Result<UpdatesBase>> startLive({
    required bool pinned,
    required bool noforwards,
    required bool rtmpStream,
    required InputPeerBase peer,
    String? caption,
    List<MessageEntityBase>? entities,
    required List<InputPrivacyRuleBase> privacyRules,
    required int randomId,
    bool? messagesEnabled,
    int? sendPaidMessagesStars,
  }) async {
    // Preparing the request.
    final request = StoriesStartLive(
      pinned: pinned,
      noforwards: noforwards,
      rtmpStream: rtmpStream,
      peer: peer,
      caption: caption,
      entities: entities,
      privacyRules: privacyRules,
      randomId: randomId,
      messagesEnabled: messagesEnabled,
      sendPaidMessagesStars: sendPaidMessagesStars,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<UpdatesBase>();
  }
}

/// Premium.
class ClientPremium {
  /// Constructor.
  const ClientPremium._(this._c);
  final Client _c;

  /// Get Boosts List.
  ///
  /// ID: `60f67660`.
  Future<Result<PremiumBoostsListBase>> getBoostsList({
    required bool gifts,
    required InputPeerBase peer,
    required String offset,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PremiumGetBoostsList(
      gifts: gifts,
      peer: peer,
      offset: offset,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PremiumBoostsListBase>();
  }

  /// Get My Boosts.
  ///
  /// ID: `0be77b4a`.
  Future<Result<PremiumMyBoostsBase>> getMyBoosts() async {
    // Preparing the request.
    final request = PremiumGetMyBoosts();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PremiumMyBoostsBase>();
  }

  /// Apply Boost.
  ///
  /// ID: `6b7da746`.
  Future<Result<PremiumMyBoostsBase>> applyBoost({
    List<int>? slots,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PremiumApplyBoost(slots: slots, peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PremiumMyBoostsBase>();
  }

  /// Get Boosts Status.
  ///
  /// ID: `042f1f61`.
  Future<Result<PremiumBoostsStatusBase>> getBoostsStatus({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PremiumGetBoostsStatus(peer: peer);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PremiumBoostsStatusBase>();
  }

  /// Get User Boosts.
  ///
  /// ID: `39854d1f`.
  Future<Result<PremiumBoostsListBase>> getUserBoosts({
    required InputPeerBase peer,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = PremiumGetUserBoosts(peer: peer, userId: userId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<PremiumBoostsListBase>();
  }
}

/// Smsjobs.
class ClientSmsjobs {
  /// Constructor.
  const ClientSmsjobs._(this._c);
  final Client _c;

  /// Is Eligible To Join.
  ///
  /// ID: `0edc39d0`.
  Future<Result<SmsjobsEligibilityToJoinBase>> isEligibleToJoin() async {
    // Preparing the request.
    final request = SmsjobsIsEligibleToJoin();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<SmsjobsEligibilityToJoinBase>();
  }

  /// Join.
  ///
  /// ID: `a74ece2d`.
  Future<Result<Boolean>> join() async {
    // Preparing the request.
    final request = SmsjobsJoin();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Leave.
  ///
  /// ID: `9898ad73`.
  Future<Result<Boolean>> leave() async {
    // Preparing the request.
    final request = SmsjobsLeave();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Update Settings.
  ///
  /// ID: `093fa0bf`.
  Future<Result<Boolean>> updateSettings({
    required bool allowInternational,
  }) async {
    // Preparing the request.
    final request = SmsjobsUpdateSettings(
      allowInternational: allowInternational,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }

  /// Get Status.
  ///
  /// ID: `10a698e8`.
  Future<Result<SmsjobsStatusBase>> getStatus() async {
    // Preparing the request.
    final request = SmsjobsGetStatus();

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<SmsjobsStatusBase>();
  }

  /// Get Sms Job.
  ///
  /// ID: `778d902f`.
  Future<Result<SmsJobBase>> getSmsJob({required String jobId}) async {
    // Preparing the request.
    final request = SmsjobsGetSmsJob(jobId: jobId);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<SmsJobBase>();
  }

  /// Finish Job.
  ///
  /// ID: `4f1ebf24`.
  Future<Result<Boolean>> finishJob({
    required String jobId,
    String? error,
  }) async {
    // Preparing the request.
    final request = SmsjobsFinishJob(jobId: jobId, error: error);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<Boolean>();
  }
}

/// Fragment.
class ClientFragment {
  /// Constructor.
  const ClientFragment._(this._c);
  final Client _c;

  /// Get Collectible Info.
  ///
  /// ID: `be1e85ba`.
  Future<Result<FragmentCollectibleInfoBase>> getCollectibleInfo({
    required InputCollectibleBase collectible,
  }) async {
    // Preparing the request.
    final request = FragmentGetCollectibleInfo(collectible: collectible);

    // Invoke and wait for response.
    final response = await _c.invoke(request);

    // Return the result.
    return response._to<FragmentCollectibleInfoBase>();
  }
}
