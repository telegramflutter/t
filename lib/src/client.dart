part of '../t.dart';

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
  }

  /// Sends [msg] to Telegram servers.
  Future<Result> invoke(TlObject msg, bool preferEncryption);

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

  /// Invoke After Msg.
  ///
  /// ID: `cb9f372d`.
  Future<T> invokeAfterMsg<T extends TlObject>({
    required int msgId,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeAfterMsg(
      msgId: msgId,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Invoke After Msgs.
  ///
  /// ID: `3dc4b4f0`.
  Future<T> invokeAfterMsgs<T extends TlObject>({
    required List<int> msgIds,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeAfterMsgs(
      msgIds: msgIds,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Init Connection.
  ///
  /// ID: `c1cd5ea9`.
  Future<T> initConnection<T extends TlObject>({
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
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Invoke With Layer.
  ///
  /// ID: `da9b0d0d`.
  Future<T> invokeWithLayer<T extends TlObject>({
    required int layer,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithLayer(
      layer: layer,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Invoke Without Updates.
  ///
  /// ID: `bf9459b7`.
  Future<T> invokeWithoutUpdates<T extends TlObject>({
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithoutUpdates(
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Invoke With Messages Range.
  ///
  /// ID: `365275f2`.
  Future<T> invokeWithMessagesRange<T extends TlObject>({
    required MessageRangeBase range,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithMessagesRange(
      range: range,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
  }

  /// Invoke With Takeout.
  ///
  /// ID: `aca9fd2e`.
  Future<T> invokeWithTakeout<T extends TlObject>({
    required int takeoutId,
    required TlMethod query,
  }) async {
    // Preparing the request.
    final request = InvokeWithTakeout(
      takeoutId: takeoutId,
      query: query,
    );

    // Invoke and wait for response.
    final response = await invoke(request, true);

    // Return the result.
    return response._to<T>().result!;
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
  Future<AuthSentCodeBase> sendCode({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }

  /// Sign Up.
  ///
  /// ID: `80eee427`.
  Future<AuthAuthorizationBase> signUp({
    required String phoneNumber,
    required String phoneCodeHash,
    required String firstName,
    required String lastName,
  }) async {
    // Preparing the request.
    final request = AuthSignUp(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
      firstName: firstName,
      lastName: lastName,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Sign In.
  ///
  /// ID: `8d52a951`.
  Future<AuthAuthorizationBase> signIn({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Log Out.
  ///
  /// ID: `3e72ba19`.
  Future<AuthLoggedOutBase> logOut() async {
    // Preparing the request.
    final request = AuthLogOut();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthLoggedOutBase>().result!;
  }

  /// Export Authorization.
  ///
  /// ID: `e5bfffcd`.
  Future<AuthExportedAuthorizationBase> exportAuthorization({
    required int dcId,
  }) async {
    // Preparing the request.
    final request = AuthExportAuthorization(
      dcId: dcId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthExportedAuthorizationBase>().result!;
  }

  /// Import Authorization.
  ///
  /// ID: `a57a7dad`.
  Future<AuthAuthorizationBase> importAuthorization({
    required int id,
    required Uint8List bytes,
  }) async {
    // Preparing the request.
    final request = AuthImportAuthorization(
      id: id,
      bytes: bytes,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Import Bot Authorization.
  ///
  /// ID: `67a3ff2c`.
  Future<AuthAuthorizationBase> importBotAuthorization({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Check Password.
  ///
  /// ID: `d18b4d16`.
  Future<AuthAuthorizationBase> checkPassword({
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = AuthCheckPassword(
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Request Password Recovery.
  ///
  /// ID: `d897bc66`.
  Future<AuthPasswordRecoveryBase> requestPasswordRecovery() async {
    // Preparing the request.
    final request = AuthRequestPasswordRecovery();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthPasswordRecoveryBase>().result!;
  }

  /// Recover Password.
  ///
  /// ID: `37096c70`.
  Future<AuthAuthorizationBase> recoverPassword({
    required String code,
    AccountPasswordInputSettingsBase? newSettings,
  }) async {
    // Preparing the request.
    final request = AuthRecoverPassword(
      code: code,
      newSettings: newSettings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Resend Code.
  ///
  /// ID: `3ef1a9bf`.
  Future<AuthSentCodeBase> resendCode({
    required String phoneNumber,
    required String phoneCodeHash,
  }) async {
    // Preparing the request.
    final request = AuthResendCode(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }

  /// Export Login Token.
  ///
  /// ID: `b7e085fe`.
  Future<AuthLoginTokenBase> exportLoginToken({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthLoginTokenBase>().result!;
  }

  /// Import Login Token.
  ///
  /// ID: `95ac5ce4`.
  Future<AuthLoginTokenBase> importLoginToken({
    required Uint8List token,
  }) async {
    // Preparing the request.
    final request = AuthImportLoginToken(
      token: token,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthLoginTokenBase>().result!;
  }

  /// Accept Login Token.
  ///
  /// ID: `e894ad4d`.
  Future<AuthorizationBase> acceptLoginToken({
    required Uint8List token,
  }) async {
    // Preparing the request.
    final request = AuthAcceptLoginToken(
      token: token,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthorizationBase>().result!;
  }

  /// Import Web Token Authorization.
  ///
  /// ID: `2db873a9`.
  Future<AuthAuthorizationBase> importWebTokenAuthorization({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthAuthorizationBase>().result!;
  }

  /// Reset Login Email.
  ///
  /// ID: `7e960193`.
  Future<AuthSentCodeBase> resetLoginEmail({
    required String phoneNumber,
    required String phoneCodeHash,
  }) async {
    // Preparing the request.
    final request = AuthResetLoginEmail(
      phoneNumber: phoneNumber,
      phoneCodeHash: phoneCodeHash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }
}

/// Account.
class ClientAccount {
  /// Constructor.
  const ClientAccount._(this._c);
  final Client _c;

  /// Get Notify Settings.
  ///
  /// ID: `12b3ad31`.
  Future<PeerNotifySettingsBase> getNotifySettings({
    required InputNotifyPeerBase peer,
  }) async {
    // Preparing the request.
    final request = AccountGetNotifySettings(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PeerNotifySettingsBase>().result!;
  }

  /// Update Profile.
  ///
  /// ID: `78515775`.
  Future<UserBase> updateProfile({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UserBase>().result!;
  }

  /// Get Wall Papers.
  ///
  /// ID: `07967d36`.
  Future<AccountWallPapersBase> getWallPapers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetWallPapers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountWallPapersBase>().result!;
  }

  /// Update Username.
  ///
  /// ID: `3e0bdd7c`.
  Future<UserBase> updateUsername({
    required String username,
  }) async {
    // Preparing the request.
    final request = AccountUpdateUsername(
      username: username,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UserBase>().result!;
  }

  /// Get Privacy.
  ///
  /// ID: `dadbc950`.
  Future<AccountPrivacyRulesBase> getPrivacy({
    required InputPrivacyKeyBase key,
  }) async {
    // Preparing the request.
    final request = AccountGetPrivacy(
      key: key,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountPrivacyRulesBase>().result!;
  }

  /// Set Privacy.
  ///
  /// ID: `c9f81ce8`.
  Future<AccountPrivacyRulesBase> setPrivacy({
    required InputPrivacyKeyBase key,
    required List<InputPrivacyRuleBase> rules,
  }) async {
    // Preparing the request.
    final request = AccountSetPrivacy(
      key: key,
      rules: rules,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountPrivacyRulesBase>().result!;
  }

  /// Get Account T T L.
  ///
  /// ID: `08fc711d`.
  Future<AccountDaysTTLBase> getAccountTTL() async {
    // Preparing the request.
    final request = AccountGetAccountTTL();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountDaysTTLBase>().result!;
  }

  /// Send Change Phone Code.
  ///
  /// ID: `82574ae5`.
  Future<AuthSentCodeBase> sendChangePhoneCode({
    required String phoneNumber,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendChangePhoneCode(
      phoneNumber: phoneNumber,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }

  /// Change Phone.
  ///
  /// ID: `70c32edb`.
  Future<UserBase> changePhone({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UserBase>().result!;
  }

  /// Get Authorizations.
  ///
  /// ID: `e320c158`.
  Future<AccountAuthorizationsBase> getAuthorizations() async {
    // Preparing the request.
    final request = AccountGetAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountAuthorizationsBase>().result!;
  }

  /// Get Password.
  ///
  /// ID: `548a30f5`.
  Future<AccountPasswordBase> getPassword() async {
    // Preparing the request.
    final request = AccountGetPassword();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountPasswordBase>().result!;
  }

  /// Get Password Settings.
  ///
  /// ID: `9cd4eaf9`.
  Future<AccountPasswordSettingsBase> getPasswordSettings({
    required InputCheckPasswordSRPBase password,
  }) async {
    // Preparing the request.
    final request = AccountGetPasswordSettings(
      password: password,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountPasswordSettingsBase>().result!;
  }

  /// Send Confirm Phone Code.
  ///
  /// ID: `1b3faa88`.
  Future<AuthSentCodeBase> sendConfirmPhoneCode({
    required String hash,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendConfirmPhoneCode(
      hash: hash,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }

  /// Get Tmp Password.
  ///
  /// ID: `449e0b51`.
  Future<AccountTmpPasswordBase> getTmpPassword({
    required InputCheckPasswordSRPBase password,
    required int period,
  }) async {
    // Preparing the request.
    final request = AccountGetTmpPassword(
      password: password,
      period: period,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountTmpPasswordBase>().result!;
  }

  /// Get Web Authorizations.
  ///
  /// ID: `182e6d6f`.
  Future<AccountWebAuthorizationsBase> getWebAuthorizations() async {
    // Preparing the request.
    final request = AccountGetWebAuthorizations();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountWebAuthorizationsBase>().result!;
  }

  /// Save Secure Value.
  ///
  /// ID: `899fe31d`.
  Future<SecureValueBase> saveSecureValue({
    required InputSecureValueBase value,
    required int secureSecretId,
  }) async {
    // Preparing the request.
    final request = AccountSaveSecureValue(
      value: value,
      secureSecretId: secureSecretId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<SecureValueBase>().result!;
  }

  /// Get Authorization Form.
  ///
  /// ID: `a929597a`.
  Future<AccountAuthorizationFormBase> getAuthorizationForm({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountAuthorizationFormBase>().result!;
  }

  /// Send Verify Phone Code.
  ///
  /// ID: `a5a356f9`.
  Future<AuthSentCodeBase> sendVerifyPhoneCode({
    required String phoneNumber,
    required CodeSettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSendVerifyPhoneCode(
      phoneNumber: phoneNumber,
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AuthSentCodeBase>().result!;
  }

  /// Send Verify Email Code.
  ///
  /// ID: `98e037bb`.
  Future<AccountSentEmailCodeBase> sendVerifyEmailCode({
    required EmailVerifyPurposeBase purpose,
    required String email,
  }) async {
    // Preparing the request.
    final request = AccountSendVerifyEmailCode(
      purpose: purpose,
      email: email,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountSentEmailCodeBase>().result!;
  }

  /// Verify Email.
  ///
  /// ID: `032da4cf`.
  Future<AccountEmailVerifiedBase> verifyEmail({
    required EmailVerifyPurposeBase purpose,
    required EmailVerificationBase verification,
  }) async {
    // Preparing the request.
    final request = AccountVerifyEmail(
      purpose: purpose,
      verification: verification,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountEmailVerifiedBase>().result!;
  }

  /// Init Takeout Session.
  ///
  /// ID: `8ef3eab0`.
  Future<AccountTakeoutBase> initTakeoutSession({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountTakeoutBase>().result!;
  }

  /// Get Notify Exceptions.
  ///
  /// ID: `53577479`.
  Future<UpdatesBase> getNotifyExceptions({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Wall Paper.
  ///
  /// ID: `fc8ddbea`.
  Future<WallPaperBase> getWallPaper({
    required InputWallPaperBase wallpaper,
  }) async {
    // Preparing the request.
    final request = AccountGetWallPaper(
      wallpaper: wallpaper,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<WallPaperBase>().result!;
  }

  /// Upload Wall Paper.
  ///
  /// ID: `e39a8f03`.
  Future<WallPaperBase> uploadWallPaper({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<WallPaperBase>().result!;
  }

  /// Get Auto Download Settings.
  ///
  /// ID: `56da0b3f`.
  Future<AccountAutoDownloadSettingsBase> getAutoDownloadSettings() async {
    // Preparing the request.
    final request = AccountGetAutoDownloadSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountAutoDownloadSettingsBase>().result!;
  }

  /// Upload Theme.
  ///
  /// ID: `1c3db333`.
  Future<DocumentBase> uploadTheme({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DocumentBase>().result!;
  }

  /// Create Theme.
  ///
  /// ID: `652e4400`.
  Future<ThemeBase> createTheme({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ThemeBase>().result!;
  }

  /// Update Theme.
  ///
  /// ID: `2bf40ccc`.
  Future<ThemeBase> updateTheme({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ThemeBase>().result!;
  }

  /// Get Theme.
  ///
  /// ID: `3a5869ec`.
  Future<ThemeBase> getTheme({
    required String format,
    required InputThemeBase theme,
  }) async {
    // Preparing the request.
    final request = AccountGetTheme(
      format: format,
      theme: theme,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ThemeBase>().result!;
  }

  /// Get Themes.
  ///
  /// ID: `7206e458`.
  Future<AccountThemesBase> getThemes({
    required String format,
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetThemes(
      format: format,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountThemesBase>().result!;
  }

  /// Get Content Settings.
  ///
  /// ID: `8b9b4dae`.
  Future<AccountContentSettingsBase> getContentSettings() async {
    // Preparing the request.
    final request = AccountGetContentSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountContentSettingsBase>().result!;
  }

  /// Get Global Privacy Settings.
  ///
  /// ID: `eb2b4cf6`.
  Future<GlobalPrivacySettingsBase> getGlobalPrivacySettings() async {
    // Preparing the request.
    final request = AccountGetGlobalPrivacySettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<GlobalPrivacySettingsBase>().result!;
  }

  /// Set Global Privacy Settings.
  ///
  /// ID: `1edaaac2`.
  Future<GlobalPrivacySettingsBase> setGlobalPrivacySettings({
    required GlobalPrivacySettingsBase settings,
  }) async {
    // Preparing the request.
    final request = AccountSetGlobalPrivacySettings(
      settings: settings,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<GlobalPrivacySettingsBase>().result!;
  }

  /// Reset Password.
  ///
  /// ID: `9308ce1b`.
  Future<AccountResetPasswordResultBase> resetPassword() async {
    // Preparing the request.
    final request = AccountResetPassword();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountResetPasswordResultBase>().result!;
  }

  /// Get Chat Themes.
  ///
  /// ID: `d638de89`.
  Future<AccountThemesBase> getChatThemes({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetChatThemes(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountThemesBase>().result!;
  }

  /// Get Saved Ringtones.
  ///
  /// ID: `e1902288`.
  Future<AccountSavedRingtonesBase> getSavedRingtones({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetSavedRingtones(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountSavedRingtonesBase>().result!;
  }

  /// Save Ringtone.
  ///
  /// ID: `3dea5b03`.
  Future<AccountSavedRingtoneBase> saveRingtone({
    required InputDocumentBase id,
    required bool unsave,
  }) async {
    // Preparing the request.
    final request = AccountSaveRingtone(
      id: id,
      unsave: unsave,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountSavedRingtoneBase>().result!;
  }

  /// Upload Ringtone.
  ///
  /// ID: `831a83a2`.
  Future<DocumentBase> uploadRingtone({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DocumentBase>().result!;
  }

  /// Get Default Emoji Statuses.
  ///
  /// ID: `d6753386`.
  Future<AccountEmojiStatusesBase> getDefaultEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultEmojiStatuses(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>().result!;
  }

  /// Get Recent Emoji Statuses.
  ///
  /// ID: `0f578105`.
  Future<AccountEmojiStatusesBase> getRecentEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetRecentEmojiStatuses(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>().result!;
  }

  /// Get Default Profile Photo Emojis.
  ///
  /// ID: `e2750328`.
  Future<EmojiListBase> getDefaultProfilePhotoEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultProfilePhotoEmojis(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiListBase>().result!;
  }

  /// Get Default Group Photo Emojis.
  ///
  /// ID: `915860ae`.
  Future<EmojiListBase> getDefaultGroupPhotoEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultGroupPhotoEmojis(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiListBase>().result!;
  }

  /// Get Auto Save Settings.
  ///
  /// ID: `adcbbcda`.
  Future<AccountAutoSaveSettingsBase> getAutoSaveSettings() async {
    // Preparing the request.
    final request = AccountGetAutoSaveSettings();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountAutoSaveSettingsBase>().result!;
  }

  /// Get Default Background Emojis.
  ///
  /// ID: `a60ab9ce`.
  Future<EmojiListBase> getDefaultBackgroundEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetDefaultBackgroundEmojis(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiListBase>().result!;
  }

  /// Get Channel Default Emoji Statuses.
  ///
  /// ID: `7727a7d5`.
  Future<AccountEmojiStatusesBase> getChannelDefaultEmojiStatuses({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetChannelDefaultEmojiStatuses(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AccountEmojiStatusesBase>().result!;
  }

  /// Get Channel Restricted Status Emojis.
  ///
  /// ID: `35a9e0d5`.
  Future<EmojiListBase> getChannelRestrictedStatusEmojis({
    required int hash,
  }) async {
    // Preparing the request.
    final request = AccountGetChannelRestrictedStatusEmojis(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiListBase>().result!;
  }
}

/// Users.
class ClientUsers {
  /// Constructor.
  const ClientUsers._(this._c);
  final Client _c;

  /// Get Full User.
  ///
  /// ID: `b60f5918`.
  Future<UsersUserFullBase> getFullUser({
    required InputUserBase id,
  }) async {
    // Preparing the request.
    final request = UsersGetFullUser(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UsersUserFullBase>().result!;
  }
}

/// Contacts.
class ClientContacts {
  /// Constructor.
  const ClientContacts._(this._c);
  final Client _c;

  /// Get Contacts.
  ///
  /// ID: `5dd69e12`.
  Future<ContactsContactsBase> getContacts({
    required int hash,
  }) async {
    // Preparing the request.
    final request = ContactsGetContacts(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsContactsBase>().result!;
  }

  /// Import Contacts.
  ///
  /// ID: `2c800be5`.
  Future<ContactsImportedContactsBase> importContacts({
    required List<InputContactBase> contacts,
  }) async {
    // Preparing the request.
    final request = ContactsImportContacts(
      contacts: contacts,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsImportedContactsBase>().result!;
  }

  /// Delete Contacts.
  ///
  /// ID: `096a0e00`.
  Future<UpdatesBase> deleteContacts({
    required List<InputUserBase> id,
  }) async {
    // Preparing the request.
    final request = ContactsDeleteContacts(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Blocked.
  ///
  /// ID: `9a868f80`.
  Future<ContactsBlockedBase> getBlocked({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsBlockedBase>().result!;
  }

  /// Search.
  ///
  /// ID: `11f812d8`.
  Future<ContactsFoundBase> search({
    required String q,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ContactsSearch(
      q: q,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsFoundBase>().result!;
  }

  /// Resolve Username.
  ///
  /// ID: `f93ccba3`.
  Future<ContactsResolvedPeerBase> resolveUsername({
    required String username,
  }) async {
    // Preparing the request.
    final request = ContactsResolveUsername(
      username: username,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsResolvedPeerBase>().result!;
  }

  /// Get Top Peers.
  ///
  /// ID: `973478b6`.
  Future<ContactsTopPeersBase> getTopPeers({
    required bool correspondents,
    required bool botsPm,
    required bool botsInline,
    required bool phoneCalls,
    required bool forwardUsers,
    required bool forwardChats,
    required bool groups,
    required bool channels,
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
      offset: offset,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsTopPeersBase>().result!;
  }

  /// Add Contact.
  ///
  /// ID: `e8f463d0`.
  Future<UpdatesBase> addContact({
    required bool addPhonePrivacyException,
    required InputUserBase id,
    required String firstName,
    required String lastName,
    required String phone,
  }) async {
    // Preparing the request.
    final request = ContactsAddContact(
      addPhonePrivacyException: addPhonePrivacyException,
      id: id,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Accept Contact.
  ///
  /// ID: `f831a20f`.
  Future<UpdatesBase> acceptContact({
    required InputUserBase id,
  }) async {
    // Preparing the request.
    final request = ContactsAcceptContact(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Located.
  ///
  /// ID: `d348bc44`.
  Future<UpdatesBase> getLocated({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Block From Replies.
  ///
  /// ID: `29a8962c`.
  Future<UpdatesBase> blockFromReplies({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Resolve Phone.
  ///
  /// ID: `8af94344`.
  Future<ContactsResolvedPeerBase> resolvePhone({
    required String phone,
  }) async {
    // Preparing the request.
    final request = ContactsResolvePhone(
      phone: phone,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ContactsResolvedPeerBase>().result!;
  }

  /// Export Contact Token.
  ///
  /// ID: `f8654027`.
  Future<ExportedContactTokenBase> exportContactToken() async {
    // Preparing the request.
    final request = ContactsExportContactToken();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ExportedContactTokenBase>().result!;
  }

  /// Import Contact Token.
  ///
  /// ID: `13005788`.
  Future<UserBase> importContactToken({
    required String token,
  }) async {
    // Preparing the request.
    final request = ContactsImportContactToken(
      token: token,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UserBase>().result!;
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
  Future<MessagesMessagesBase> getMessages({
    required List<InputMessageBase> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessages(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Dialogs.
  ///
  /// ID: `a0f4cb4f`.
  Future<MessagesDialogsBase> getDialogs({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesDialogsBase>().result!;
  }

  /// Get History.
  ///
  /// ID: `4423e6c5`.
  Future<MessagesMessagesBase> getHistory({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Search.
  ///
  /// ID: `a7b4e929`.
  Future<MessagesMessagesBase> search({
    required InputPeerBase peer,
    required String q,
    InputPeerBase? fromId,
    InputPeerBase? savedPeerId,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Read History.
  ///
  /// ID: `0e306d3a`.
  Future<MessagesAffectedMessagesBase> readHistory({
    required InputPeerBase peer,
    required int maxId,
  }) async {
    // Preparing the request.
    final request = MessagesReadHistory(
      peer: peer,
      maxId: maxId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>().result!;
  }

  /// Delete History.
  ///
  /// ID: `b08f922a`.
  Future<MessagesAffectedHistoryBase> deleteHistory({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Delete Messages.
  ///
  /// ID: `e58e95d2`.
  Future<MessagesAffectedMessagesBase> deleteMessages({
    required bool revoke,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteMessages(
      revoke: revoke,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>().result!;
  }

  /// Send Message.
  ///
  /// ID: `280d096f`.
  Future<UpdatesBase> sendMessage({
    required bool noWebpage,
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required String message,
    required int randomId,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
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
      peer: peer,
      replyTo: replyTo,
      message: message,
      randomId: randomId,
      replyMarkup: replyMarkup,
      entities: entities,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Send Media.
  ///
  /// ID: `72ccc23d`.
  Future<UpdatesBase> sendMedia({
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required InputMediaBase media,
    required String message,
    required int randomId,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesSendMedia(
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      noforwards: noforwards,
      updateStickersetsOrder: updateStickersetsOrder,
      invertMedia: invertMedia,
      peer: peer,
      replyTo: replyTo,
      media: media,
      message: message,
      randomId: randomId,
      replyMarkup: replyMarkup,
      entities: entities,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Forward Messages.
  ///
  /// ID: `c661bbc4`.
  Future<UpdatesBase> forwardMessages({
    required bool silent,
    required bool background,
    required bool withMyScore,
    required bool dropAuthor,
    required bool dropMediaCaptions,
    required bool noforwards,
    required InputPeerBase fromPeer,
    required List<int> id,
    required List<int> randomId,
    required InputPeerBase toPeer,
    int? topMsgId,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesForwardMessages(
      silent: silent,
      background: background,
      withMyScore: withMyScore,
      dropAuthor: dropAuthor,
      dropMediaCaptions: dropMediaCaptions,
      noforwards: noforwards,
      fromPeer: fromPeer,
      id: id,
      randomId: randomId,
      toPeer: toPeer,
      topMsgId: topMsgId,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Peer Settings.
  ///
  /// ID: `efd9a6a2`.
  Future<MessagesPeerSettingsBase> getPeerSettings({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetPeerSettings(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesPeerSettingsBase>().result!;
  }

  /// Get Chats.
  ///
  /// ID: `49e9528f`.
  Future<MessagesChatsBase> getChats({
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetChats(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Get Full Chat.
  ///
  /// ID: `aeb00b34`.
  Future<MessagesChatFullBase> getFullChat({
    required int chatId,
  }) async {
    // Preparing the request.
    final request = MessagesGetFullChat(
      chatId: chatId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatFullBase>().result!;
  }

  /// Edit Chat Title.
  ///
  /// ID: `73783ffd`.
  Future<UpdatesBase> editChatTitle({
    required int chatId,
    required String title,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatTitle(
      chatId: chatId,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Chat Photo.
  ///
  /// ID: `35ddd674`.
  Future<UpdatesBase> editChatPhoto({
    required int chatId,
    required InputChatPhotoBase photo,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatPhoto(
      chatId: chatId,
      photo: photo,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Add Chat User.
  ///
  /// ID: `f24753e3`.
  Future<UpdatesBase> addChatUser({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Delete Chat User.
  ///
  /// ID: `a2185cab`.
  Future<UpdatesBase> deleteChatUser({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Create Chat.
  ///
  /// ID: `0034a818`.
  Future<UpdatesBase> createChat({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Dh Config.
  ///
  /// ID: `26cf8950`.
  Future<MessagesDhConfigBase> getDhConfig({
    required int version,
    required int randomLength,
  }) async {
    // Preparing the request.
    final request = MessagesGetDhConfig(
      version: version,
      randomLength: randomLength,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesDhConfigBase>().result!;
  }

  /// Request Encryption.
  ///
  /// ID: `f64daf43`.
  Future<EncryptedChatBase> requestEncryption({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EncryptedChatBase>().result!;
  }

  /// Accept Encryption.
  ///
  /// ID: `3dbc0415`.
  Future<EncryptedChatBase> acceptEncryption({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EncryptedChatBase>().result!;
  }

  /// Send Encrypted.
  ///
  /// ID: `44fa7a15`.
  Future<MessagesSentEncryptedMessageBase> sendEncrypted({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>().result!;
  }

  /// Send Encrypted File.
  ///
  /// ID: `5559481d`.
  Future<MessagesSentEncryptedMessageBase> sendEncryptedFile({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>().result!;
  }

  /// Send Encrypted Service.
  ///
  /// ID: `32d439a4`.
  Future<MessagesSentEncryptedMessageBase> sendEncryptedService({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSentEncryptedMessageBase>().result!;
  }

  /// Read Message Contents.
  ///
  /// ID: `36a73f77`.
  Future<MessagesAffectedMessagesBase> readMessageContents({
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesReadMessageContents(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>().result!;
  }

  /// Get Stickers.
  ///
  /// ID: `d5a5d3a1`.
  Future<MessagesStickersBase> getStickers({
    required String emoticon,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetStickers(
      emoticon: emoticon,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickersBase>().result!;
  }

  /// Get All Stickers.
  ///
  /// ID: `b8a0a1a8`.
  Future<MessagesAllStickersBase> getAllStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAllStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAllStickersBase>().result!;
  }

  /// Get Web Page Preview.
  ///
  /// ID: `8b68b0cc`.
  Future<MessageMediaBase> getWebPagePreview({
    required String message,
    List<MessageEntityBase>? entities,
  }) async {
    // Preparing the request.
    final request = MessagesGetWebPagePreview(
      message: message,
      entities: entities,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessageMediaBase>().result!;
  }

  /// Export Chat Invite.
  ///
  /// ID: `a02ce5d5`.
  Future<ExportedChatInviteBase> exportChatInvite({
    required bool legacyRevokePermanent,
    required bool requestNeeded,
    required InputPeerBase peer,
    DateTime? expireDate,
    int? usageLimit,
    String? title,
  }) async {
    // Preparing the request.
    final request = MessagesExportChatInvite(
      legacyRevokePermanent: legacyRevokePermanent,
      requestNeeded: requestNeeded,
      peer: peer,
      expireDate: expireDate,
      usageLimit: usageLimit,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ExportedChatInviteBase>().result!;
  }

  /// Check Chat Invite.
  ///
  /// ID: `3eadb1bb`.
  Future<ChatInviteBase> checkChatInvite({
    required String hash,
  }) async {
    // Preparing the request.
    final request = MessagesCheckChatInvite(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatInviteBase>().result!;
  }

  /// Import Chat Invite.
  ///
  /// ID: `6c50051c`.
  Future<UpdatesBase> importChatInvite({
    required String hash,
  }) async {
    // Preparing the request.
    final request = MessagesImportChatInvite(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Sticker Set.
  ///
  /// ID: `c8a0ec74`.
  Future<MessagesStickerSetBase> getStickerSet({
    required InputStickerSetBase stickerset,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetStickerSet(
      stickerset: stickerset,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Install Sticker Set.
  ///
  /// ID: `c78fe460`.
  Future<MessagesStickerSetInstallResultBase> installStickerSet({
    required InputStickerSetBase stickerset,
    required bool archived,
  }) async {
    // Preparing the request.
    final request = MessagesInstallStickerSet(
      stickerset: stickerset,
      archived: archived,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetInstallResultBase>().result!;
  }

  /// Start Bot.
  ///
  /// ID: `e6df7378`.
  Future<UpdatesBase> startBot({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Messages Views.
  ///
  /// ID: `5784d3e1`.
  Future<MessagesMessageViewsBase> getMessagesViews({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessageViewsBase>().result!;
  }

  /// Migrate Chat.
  ///
  /// ID: `a2875319`.
  Future<UpdatesBase> migrateChat({
    required int chatId,
  }) async {
    // Preparing the request.
    final request = MessagesMigrateChat(
      chatId: chatId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Search Global.
  ///
  /// ID: `4bc6589a`.
  Future<MessagesMessagesBase> searchGlobal({
    required bool broadcastsOnly,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Document By Hash.
  ///
  /// ID: `b1f2061f`.
  Future<DocumentBase> getDocumentByHash({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DocumentBase>().result!;
  }

  /// Get Saved Gifs.
  ///
  /// ID: `5cf09635`.
  Future<MessagesSavedGifsBase> getSavedGifs({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedGifs(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSavedGifsBase>().result!;
  }

  /// Get Inline Bot Results.
  ///
  /// ID: `514e999d`.
  Future<MessagesBotResultsBase> getInlineBotResults({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesBotResultsBase>().result!;
  }

  /// Send Inline Bot Result.
  ///
  /// ID: `f7bc68ba`.
  Future<UpdatesBase> sendInlineBotResult({
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
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Message Edit Data.
  ///
  /// ID: `fda68d36`.
  Future<MessagesMessageEditDataBase> getMessageEditData({
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessageEditData(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessageEditDataBase>().result!;
  }

  /// Edit Message.
  ///
  /// ID: `48f71778`.
  Future<UpdatesBase> editMessage({
    required bool noWebpage,
    required bool invertMedia,
    required InputPeerBase peer,
    required int id,
    String? message,
    InputMediaBase? media,
    ReplyMarkupBase? replyMarkup,
    List<MessageEntityBase>? entities,
    DateTime? scheduleDate,
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
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Bot Callback Answer.
  ///
  /// ID: `9342ca07`.
  Future<MessagesBotCallbackAnswerBase> getBotCallbackAnswer({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesBotCallbackAnswerBase>().result!;
  }

  /// Get Peer Dialogs.
  ///
  /// ID: `e470bcfd`.
  Future<MessagesPeerDialogsBase> getPeerDialogs({
    required List<InputDialogPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = MessagesGetPeerDialogs(
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesPeerDialogsBase>().result!;
  }

  /// Get All Drafts.
  ///
  /// ID: `6a3f8d65`.
  Future<UpdatesBase> getAllDrafts() async {
    // Preparing the request.
    final request = MessagesGetAllDrafts();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Featured Stickers.
  ///
  /// ID: `64780b14`.
  Future<MessagesFeaturedStickersBase> getFeaturedStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFeaturedStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>().result!;
  }

  /// Get Recent Stickers.
  ///
  /// ID: `9da9403b`.
  Future<MessagesRecentStickersBase> getRecentStickers({
    required bool attached,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetRecentStickers(
      attached: attached,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesRecentStickersBase>().result!;
  }

  /// Get Archived Stickers.
  ///
  /// ID: `57f17692`.
  Future<MessagesArchivedStickersBase> getArchivedStickers({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesArchivedStickersBase>().result!;
  }

  /// Get Mask Stickers.
  ///
  /// ID: `640f82b8`.
  Future<MessagesAllStickersBase> getMaskStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetMaskStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAllStickersBase>().result!;
  }

  /// Set Game Score.
  ///
  /// ID: `8ef8ecc0`.
  Future<UpdatesBase> setGameScore({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Game High Scores.
  ///
  /// ID: `e822649d`.
  Future<MessagesHighScoresBase> getGameHighScores({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesHighScoresBase>().result!;
  }

  /// Get Inline Game High Scores.
  ///
  /// ID: `0f635e1b`.
  Future<MessagesHighScoresBase> getInlineGameHighScores({
    required InputBotInlineMessageIDBase id,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = MessagesGetInlineGameHighScores(
      id: id,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesHighScoresBase>().result!;
  }

  /// Get Common Chats.
  ///
  /// ID: `e40ca104`.
  Future<MessagesChatsBase> getCommonChats({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Get Web Page.
  ///
  /// ID: `8d9692a3`.
  Future<MessagesWebPageBase> getWebPage({
    required String url,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetWebPage(
      url: url,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesWebPageBase>().result!;
  }

  /// Get Pinned Dialogs.
  ///
  /// ID: `d6b94df2`.
  Future<MessagesPeerDialogsBase> getPinnedDialogs({
    required int folderId,
  }) async {
    // Preparing the request.
    final request = MessagesGetPinnedDialogs(
      folderId: folderId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesPeerDialogsBase>().result!;
  }

  /// Upload Media.
  ///
  /// ID: `519bc2b1`.
  Future<MessageMediaBase> uploadMedia({
    required InputPeerBase peer,
    required InputMediaBase media,
  }) async {
    // Preparing the request.
    final request = MessagesUploadMedia(
      peer: peer,
      media: media,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessageMediaBase>().result!;
  }

  /// Send Screenshot Notification.
  ///
  /// ID: `a1405817`.
  Future<UpdatesBase> sendScreenshotNotification({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Faved Stickers.
  ///
  /// ID: `04f1aaa9`.
  Future<MessagesFavedStickersBase> getFavedStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFavedStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFavedStickersBase>().result!;
  }

  /// Get Unread Mentions.
  ///
  /// ID: `f107e790`.
  Future<MessagesMessagesBase> getUnreadMentions({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Read Mentions.
  ///
  /// ID: `36e5bf4d`.
  Future<MessagesAffectedHistoryBase> readMentions({
    required InputPeerBase peer,
    int? topMsgId,
  }) async {
    // Preparing the request.
    final request = MessagesReadMentions(
      peer: peer,
      topMsgId: topMsgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Get Recent Locations.
  ///
  /// ID: `702a40e0`.
  Future<MessagesMessagesBase> getRecentLocations({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Send Multi Media.
  ///
  /// ID: `456e8987`.
  Future<UpdatesBase> sendMultiMedia({
    required bool silent,
    required bool background,
    required bool clearDraft,
    required bool noforwards,
    required bool updateStickersetsOrder,
    required bool invertMedia,
    required InputPeerBase peer,
    InputReplyToBase? replyTo,
    required List<InputSingleMediaBase> multiMedia,
    DateTime? scheduleDate,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = MessagesSendMultiMedia(
      silent: silent,
      background: background,
      clearDraft: clearDraft,
      noforwards: noforwards,
      updateStickersetsOrder: updateStickersetsOrder,
      invertMedia: invertMedia,
      peer: peer,
      replyTo: replyTo,
      multiMedia: multiMedia,
      scheduleDate: scheduleDate,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Upload Encrypted File.
  ///
  /// ID: `5057c497`.
  Future<EncryptedFileBase> uploadEncryptedFile({
    required InputEncryptedChatBase peer,
    required InputEncryptedFileBase file,
  }) async {
    // Preparing the request.
    final request = MessagesUploadEncryptedFile(
      peer: peer,
      file: file,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EncryptedFileBase>().result!;
  }

  /// Search Sticker Sets.
  ///
  /// ID: `35705b8a`.
  Future<MessagesFoundStickerSetsBase> searchStickerSets({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFoundStickerSetsBase>().result!;
  }

  /// Update Pinned Message.
  ///
  /// ID: `d2aaf7ec`.
  Future<UpdatesBase> updatePinnedMessage({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Send Vote.
  ///
  /// ID: `10ea6184`.
  Future<UpdatesBase> sendVote({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Poll Results.
  ///
  /// ID: `73bb643b`.
  Future<UpdatesBase> getPollResults({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetPollResults(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Onlines.
  ///
  /// ID: `6e2be050`.
  Future<ChatOnlinesBase> getOnlines({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetOnlines(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatOnlinesBase>().result!;
  }

  /// Edit Chat Default Banned Rights.
  ///
  /// ID: `a5866b41`.
  Future<UpdatesBase> editChatDefaultBannedRights({
    required InputPeerBase peer,
    required ChatBannedRightsBase bannedRights,
  }) async {
    // Preparing the request.
    final request = MessagesEditChatDefaultBannedRights(
      peer: peer,
      bannedRights: bannedRights,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Emoji Keywords.
  ///
  /// ID: `35a0e062`.
  Future<EmojiKeywordsDifferenceBase> getEmojiKeywords({
    required String langCode,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiKeywords(
      langCode: langCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiKeywordsDifferenceBase>().result!;
  }

  /// Get Emoji Keywords Difference.
  ///
  /// ID: `1508b6af`.
  Future<EmojiKeywordsDifferenceBase> getEmojiKeywordsDifference({
    required String langCode,
    required int fromVersion,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiKeywordsDifference(
      langCode: langCode,
      fromVersion: fromVersion,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiKeywordsDifferenceBase>().result!;
  }

  /// Get Emoji U R L.
  ///
  /// ID: `d5b10c26`.
  Future<EmojiURLBase> getEmojiURL({
    required String langCode,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiURL(
      langCode: langCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiURLBase>().result!;
  }

  /// Request Url Auth.
  ///
  /// ID: `198fb446`.
  Future<UrlAuthResultBase> requestUrlAuth({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UrlAuthResultBase>().result!;
  }

  /// Accept Url Auth.
  ///
  /// ID: `b12c7125`.
  Future<UrlAuthResultBase> acceptUrlAuth({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UrlAuthResultBase>().result!;
  }

  /// Get Scheduled History.
  ///
  /// ID: `f516760b`.
  Future<MessagesMessagesBase> getScheduledHistory({
    required InputPeerBase peer,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetScheduledHistory(
      peer: peer,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Scheduled Messages.
  ///
  /// ID: `bdbb0464`.
  Future<MessagesMessagesBase> getScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetScheduledMessages(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Send Scheduled Messages.
  ///
  /// ID: `bd38850a`.
  Future<UpdatesBase> sendScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesSendScheduledMessages(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Delete Scheduled Messages.
  ///
  /// ID: `59ae2b16`.
  Future<UpdatesBase> deleteScheduledMessages({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteScheduledMessages(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Poll Votes.
  ///
  /// ID: `b86e380e`.
  Future<MessagesVotesListBase> getPollVotes({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesVotesListBase>().result!;
  }

  /// Get Old Featured Stickers.
  ///
  /// ID: `7ed094a1`.
  Future<MessagesFeaturedStickersBase> getOldFeaturedStickers({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>().result!;
  }

  /// Get Replies.
  ///
  /// ID: `22ddd30c`.
  Future<MessagesMessagesBase> getReplies({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Discussion Message.
  ///
  /// ID: `446972fd`.
  Future<MessagesDiscussionMessageBase> getDiscussionMessage({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesGetDiscussionMessage(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesDiscussionMessageBase>().result!;
  }

  /// Unpin All Messages.
  ///
  /// ID: `ee22b9a8`.
  Future<MessagesAffectedHistoryBase> unpinAllMessages({
    required InputPeerBase peer,
    int? topMsgId,
  }) async {
    // Preparing the request.
    final request = MessagesUnpinAllMessages(
      peer: peer,
      topMsgId: topMsgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Delete Phone Call History.
  ///
  /// ID: `f9cbe409`.
  Future<MessagesAffectedFoundMessagesBase> deletePhoneCallHistory({
    required bool revoke,
  }) async {
    // Preparing the request.
    final request = MessagesDeletePhoneCallHistory(
      revoke: revoke,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedFoundMessagesBase>().result!;
  }

  /// Check History Import.
  ///
  /// ID: `43fe19f3`.
  Future<MessagesHistoryImportParsedBase> checkHistoryImport({
    required String importHead,
  }) async {
    // Preparing the request.
    final request = MessagesCheckHistoryImport(
      importHead: importHead,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesHistoryImportParsedBase>().result!;
  }

  /// Init History Import.
  ///
  /// ID: `34090c3b`.
  Future<MessagesHistoryImportBase> initHistoryImport({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesHistoryImportBase>().result!;
  }

  /// Upload Imported Media.
  ///
  /// ID: `2a862092`.
  Future<MessageMediaBase> uploadImportedMedia({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessageMediaBase>().result!;
  }

  /// Get Exported Chat Invites.
  ///
  /// ID: `a2b5a3f6`.
  Future<MessagesExportedChatInvitesBase> getExportedChatInvites({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesExportedChatInvitesBase>().result!;
  }

  /// Get Exported Chat Invite.
  ///
  /// ID: `73746f5c`.
  Future<MessagesExportedChatInviteBase> getExportedChatInvite({
    required InputPeerBase peer,
    required String link,
  }) async {
    // Preparing the request.
    final request = MessagesGetExportedChatInvite(
      peer: peer,
      link: link,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesExportedChatInviteBase>().result!;
  }

  /// Edit Exported Chat Invite.
  ///
  /// ID: `bdca2f75`.
  Future<MessagesExportedChatInviteBase> editExportedChatInvite({
    required bool revoked,
    required InputPeerBase peer,
    required String link,
    DateTime? expireDate,
    int? usageLimit,
    required bool requestNeeded,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesExportedChatInviteBase>().result!;
  }

  /// Get Admins With Invites.
  ///
  /// ID: `3920e6ef`.
  Future<MessagesChatAdminsWithInvitesBase> getAdminsWithInvites({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesGetAdminsWithInvites(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatAdminsWithInvitesBase>().result!;
  }

  /// Get Chat Invite Importers.
  ///
  /// ID: `df04dd4e`.
  Future<MessagesChatInviteImportersBase> getChatInviteImporters({
    required bool requested,
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
      peer: peer,
      link: link,
      q: q,
      offsetDate: offsetDate,
      offsetUser: offsetUser,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatInviteImportersBase>().result!;
  }

  /// Set History T T L.
  ///
  /// ID: `b80e5fe4`.
  Future<UpdatesBase> setHistoryTTL({
    required InputPeerBase peer,
    required int period,
  }) async {
    // Preparing the request.
    final request = MessagesSetHistoryTTL(
      peer: peer,
      period: period,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Check History Import Peer.
  ///
  /// ID: `5dc60f03`.
  Future<MessagesCheckedHistoryImportPeerBase> checkHistoryImportPeer({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = MessagesCheckHistoryImportPeer(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesCheckedHistoryImportPeerBase>().result!;
  }

  /// Set Chat Theme.
  ///
  /// ID: `e63be13f`.
  Future<UpdatesBase> setChatTheme({
    required InputPeerBase peer,
    required String emoticon,
  }) async {
    // Preparing the request.
    final request = MessagesSetChatTheme(
      peer: peer,
      emoticon: emoticon,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Search Results Calendar.
  ///
  /// ID: `6aa3f6bd`.
  Future<MessagesSearchResultsCalendarBase> getSearchResultsCalendar({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSearchResultsCalendarBase>().result!;
  }

  /// Get Search Results Positions.
  ///
  /// ID: `9c7f2f10`.
  Future<MessagesSearchResultsPositionsBase> getSearchResultsPositions({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSearchResultsPositionsBase>().result!;
  }

  /// Hide Chat Join Request.
  ///
  /// ID: `7fe7e815`.
  Future<UpdatesBase> hideChatJoinRequest({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Hide All Chat Join Requests.
  ///
  /// ID: `e085f4ea`.
  Future<UpdatesBase> hideAllChatJoinRequests({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle No Forwards.
  ///
  /// ID: `b11eafa2`.
  Future<UpdatesBase> toggleNoForwards({
    required InputPeerBase peer,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = MessagesToggleNoForwards(
      peer: peer,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Send Reaction.
  ///
  /// ID: `d30d78d4`.
  Future<UpdatesBase> sendReaction({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Messages Reactions.
  ///
  /// ID: `8bba90e6`.
  Future<UpdatesBase> getMessagesReactions({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetMessagesReactions(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Message Reactions List.
  ///
  /// ID: `461b3f48`.
  Future<MessagesMessageReactionsListBase> getMessageReactionsList({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessageReactionsListBase>().result!;
  }

  /// Set Chat Available Reactions.
  ///
  /// ID: `feb16771`.
  Future<UpdatesBase> setChatAvailableReactions({
    required InputPeerBase peer,
    required ChatReactionsBase availableReactions,
  }) async {
    // Preparing the request.
    final request = MessagesSetChatAvailableReactions(
      peer: peer,
      availableReactions: availableReactions,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Available Reactions.
  ///
  /// ID: `18dea0ac`.
  Future<MessagesAvailableReactionsBase> getAvailableReactions({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAvailableReactions(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAvailableReactionsBase>().result!;
  }

  /// Translate Text.
  ///
  /// ID: `63183030`.
  Future<MessagesTranslatedTextBase> translateText({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesTranslatedTextBase>().result!;
  }

  /// Get Unread Reactions.
  ///
  /// ID: `3223495b`.
  Future<MessagesMessagesBase> getUnreadReactions({
    required InputPeerBase peer,
    int? topMsgId,
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
      offsetId: offsetId,
      addOffset: addOffset,
      limit: limit,
      maxId: maxId,
      minId: minId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Read Reactions.
  ///
  /// ID: `54aa7f8e`.
  Future<MessagesAffectedHistoryBase> readReactions({
    required InputPeerBase peer,
    int? topMsgId,
  }) async {
    // Preparing the request.
    final request = MessagesReadReactions(
      peer: peer,
      topMsgId: topMsgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Search Sent Media.
  ///
  /// ID: `107e31a0`.
  Future<MessagesMessagesBase> searchSentMedia({
    required String q,
    required MessagesFilterBase filter,
    required int limit,
  }) async {
    // Preparing the request.
    final request = MessagesSearchSentMedia(
      q: q,
      filter: filter,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Attach Menu Bots.
  ///
  /// ID: `16fcc2cb`.
  Future<AttachMenuBotsBase> getAttachMenuBots({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetAttachMenuBots(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AttachMenuBotsBase>().result!;
  }

  /// Get Attach Menu Bot.
  ///
  /// ID: `77216192`.
  Future<AttachMenuBotsBotBase> getAttachMenuBot({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = MessagesGetAttachMenuBot(
      bot: bot,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AttachMenuBotsBotBase>().result!;
  }

  /// Request Web View.
  ///
  /// ID: `269dc2c1`.
  Future<WebViewResultBase> requestWebView({
    required bool fromBotMenu,
    required bool silent,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<WebViewResultBase>().result!;
  }

  /// Request Simple Web View.
  ///
  /// ID: `1a46500a`.
  Future<SimpleWebViewResultBase> requestSimpleWebView({
    required bool fromSwitchWebview,
    required bool fromSideMenu,
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
      bot: bot,
      url: url,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<SimpleWebViewResultBase>().result!;
  }

  /// Send Web View Result Message.
  ///
  /// ID: `0a4314f5`.
  Future<WebViewMessageSentBase> sendWebViewResultMessage({
    required String botQueryId,
    required InputBotInlineResultBase result,
  }) async {
    // Preparing the request.
    final request = MessagesSendWebViewResultMessage(
      botQueryId: botQueryId,
      result: result,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<WebViewMessageSentBase>().result!;
  }

  /// Send Web View Data.
  ///
  /// ID: `dc0242c8`.
  Future<UpdatesBase> sendWebViewData({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Transcribe Audio.
  ///
  /// ID: `269e9a49`.
  Future<MessagesTranscribedAudioBase> transcribeAudio({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = MessagesTranscribeAudio(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesTranscribedAudioBase>().result!;
  }

  /// Get Emoji Stickers.
  ///
  /// ID: `fbfca18f`.
  Future<MessagesAllStickersBase> getEmojiStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAllStickersBase>().result!;
  }

  /// Get Featured Emoji Stickers.
  ///
  /// ID: `0ecf6736`.
  Future<MessagesFeaturedStickersBase> getFeaturedEmojiStickers({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetFeaturedEmojiStickers(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFeaturedStickersBase>().result!;
  }

  /// Get Top Reactions.
  ///
  /// ID: `bb8125ba`.
  Future<MessagesReactionsBase> getTopReactions({
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetTopReactions(
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesReactionsBase>().result!;
  }

  /// Get Recent Reactions.
  ///
  /// ID: `39461db2`.
  Future<MessagesReactionsBase> getRecentReactions({
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetRecentReactions(
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesReactionsBase>().result!;
  }

  /// Get Extended Media.
  ///
  /// ID: `84f80814`.
  Future<UpdatesBase> getExtendedMedia({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = MessagesGetExtendedMedia(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Default History T T L.
  ///
  /// ID: `658b7188`.
  Future<DefaultHistoryTTLBase> getDefaultHistoryTTL() async {
    // Preparing the request.
    final request = MessagesGetDefaultHistoryTTL();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DefaultHistoryTTLBase>().result!;
  }

  /// Send Bot Requested Peer.
  ///
  /// ID: `91b2d060`.
  Future<UpdatesBase> sendBotRequestedPeer({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Emoji Groups.
  ///
  /// ID: `7488ce5b`.
  Future<MessagesEmojiGroupsBase> getEmojiGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiGroups(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>().result!;
  }

  /// Get Emoji Status Groups.
  ///
  /// ID: `2ecd56cd`.
  Future<MessagesEmojiGroupsBase> getEmojiStatusGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiStatusGroups(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>().result!;
  }

  /// Get Emoji Profile Photo Groups.
  ///
  /// ID: `21a548f3`.
  Future<MessagesEmojiGroupsBase> getEmojiProfilePhotoGroups({
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetEmojiProfilePhotoGroups(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesEmojiGroupsBase>().result!;
  }

  /// Search Custom Emoji.
  ///
  /// ID: `2c11c0d7`.
  Future<EmojiListBase> searchCustomEmoji({
    required String emoticon,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesSearchCustomEmoji(
      emoticon: emoticon,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<EmojiListBase>().result!;
  }

  /// Get Bot App.
  ///
  /// ID: `34fdc5c3`.
  Future<MessagesBotAppBase> getBotApp({
    required InputBotAppBase app,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetBotApp(
      app: app,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesBotAppBase>().result!;
  }

  /// Request App Web View.
  ///
  /// ID: `8c5a3b3c`.
  Future<AppWebViewResultBase> requestAppWebView({
    required bool writeAllowed,
    required InputPeerBase peer,
    required InputBotAppBase app,
    String? startParam,
    DataJSONBase? themeParams,
    required String platform,
  }) async {
    // Preparing the request.
    final request = MessagesRequestAppWebView(
      writeAllowed: writeAllowed,
      peer: peer,
      app: app,
      startParam: startParam,
      themeParams: themeParams,
      platform: platform,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<AppWebViewResultBase>().result!;
  }

  /// Set Chat Wall Paper.
  ///
  /// ID: `8ffacae1`.
  Future<UpdatesBase> setChatWallPaper({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Search Emoji Sticker Sets.
  ///
  /// ID: `92b4494c`.
  Future<MessagesFoundStickerSetsBase> searchEmojiStickerSets({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesFoundStickerSetsBase>().result!;
  }

  /// Get Saved Dialogs.
  ///
  /// ID: `5381d21a`.
  Future<MessagesSavedDialogsBase> getSavedDialogs({
    required bool excludePinned,
    required DateTime offsetDate,
    required int offsetId,
    required InputPeerBase offsetPeer,
    required int limit,
    required int hash,
  }) async {
    // Preparing the request.
    final request = MessagesGetSavedDialogs(
      excludePinned: excludePinned,
      offsetDate: offsetDate,
      offsetId: offsetId,
      offsetPeer: offsetPeer,
      limit: limit,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSavedDialogsBase>().result!;
  }

  /// Get Saved History.
  ///
  /// ID: `3d9a414d`.
  Future<MessagesMessagesBase> getSavedHistory({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Delete Saved History.
  ///
  /// ID: `6e98102b`.
  Future<MessagesAffectedHistoryBase> deleteSavedHistory({
    required InputPeerBase peer,
    required int maxId,
    DateTime? minDate,
    DateTime? maxDate,
  }) async {
    // Preparing the request.
    final request = MessagesDeleteSavedHistory(
      peer: peer,
      maxId: maxId,
      minDate: minDate,
      maxDate: maxDate,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Get Pinned Saved Dialogs.
  ///
  /// ID: `d63d94e0`.
  Future<MessagesSavedDialogsBase> getPinnedSavedDialogs() async {
    // Preparing the request.
    final request = MessagesGetPinnedSavedDialogs();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSavedDialogsBase>().result!;
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
  Future<UpdatesStateBase> getState() async {
    // Preparing the request.
    final request = UpdatesGetState();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesStateBase>().result!;
  }

  /// Get Difference.
  ///
  /// ID: `19c2f763`.
  Future<UpdatesDifferenceBase> getDifference({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesDifferenceBase>().result!;
  }

  /// Get Channel Difference.
  ///
  /// ID: `03173d78`.
  Future<UpdatesChannelDifferenceBase> getChannelDifference({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesChannelDifferenceBase>().result!;
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
  Future<PhotosPhotoBase> updateProfilePhoto({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhotosPhotoBase>().result!;
  }

  /// Upload Profile Photo.
  ///
  /// ID: `0388a3b5`.
  Future<PhotosPhotoBase> uploadProfilePhoto({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhotosPhotoBase>().result!;
  }

  /// Get User Photos.
  ///
  /// ID: `91cd32a8`.
  Future<PhotosPhotosBase> getUserPhotos({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhotosPhotosBase>().result!;
  }

  /// Upload Contact Profile Photo.
  ///
  /// ID: `e14c4a71`.
  Future<PhotosPhotoBase> uploadContactProfilePhoto({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhotosPhotoBase>().result!;
  }
}

/// Upload.
class ClientUpload {
  /// Constructor.
  const ClientUpload._(this._c);
  final Client _c;

  /// Get File.
  ///
  /// ID: `be5335be`.
  Future<UploadFileBase> getFile({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UploadFileBase>().result!;
  }

  /// Get Web File.
  ///
  /// ID: `24e6818d`.
  Future<UploadWebFileBase> getWebFile({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UploadWebFileBase>().result!;
  }

  /// Get Cdn File.
  ///
  /// ID: `395f69da`.
  Future<UploadCdnFileBase> getCdnFile({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UploadCdnFileBase>().result!;
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
  Future<ConfigBase> getConfig() async {
    // Preparing the request.
    final request = HelpGetConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ConfigBase>().result!;
  }

  /// Get Nearest Dc.
  ///
  /// ID: `1fb33026`.
  Future<NearestDcBase> getNearestDc() async {
    // Preparing the request.
    final request = HelpGetNearestDc();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<NearestDcBase>().result!;
  }

  /// Get App Update.
  ///
  /// ID: `522d5a7d`.
  Future<HelpAppUpdateBase> getAppUpdate({
    required String source,
  }) async {
    // Preparing the request.
    final request = HelpGetAppUpdate(
      source: source,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpAppUpdateBase>().result!;
  }

  /// Get Invite Text.
  ///
  /// ID: `4d392343`.
  Future<HelpInviteTextBase> getInviteText() async {
    // Preparing the request.
    final request = HelpGetInviteText();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpInviteTextBase>().result!;
  }

  /// Get Support.
  ///
  /// ID: `9cdf08cd`.
  Future<HelpSupportBase> getSupport() async {
    // Preparing the request.
    final request = HelpGetSupport();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpSupportBase>().result!;
  }

  /// Get Cdn Config.
  ///
  /// ID: `52029342`.
  Future<CdnConfigBase> getCdnConfig() async {
    // Preparing the request.
    final request = HelpGetCdnConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<CdnConfigBase>().result!;
  }

  /// Get Recent Me Urls.
  ///
  /// ID: `3dc0f114`.
  Future<HelpRecentMeUrlsBase> getRecentMeUrls({
    required String referer,
  }) async {
    // Preparing the request.
    final request = HelpGetRecentMeUrls(
      referer: referer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpRecentMeUrlsBase>().result!;
  }

  /// Get Terms Of Service Update.
  ///
  /// ID: `2ca51fd1`.
  Future<HelpTermsOfServiceUpdateBase> getTermsOfServiceUpdate() async {
    // Preparing the request.
    final request = HelpGetTermsOfServiceUpdate();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpTermsOfServiceUpdateBase>().result!;
  }

  /// Get Deep Link Info.
  ///
  /// ID: `3fedc75f`.
  Future<HelpDeepLinkInfoBase> getDeepLinkInfo({
    required String path,
  }) async {
    // Preparing the request.
    final request = HelpGetDeepLinkInfo(
      path: path,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpDeepLinkInfoBase>().result!;
  }

  /// Get App Config.
  ///
  /// ID: `61e3f854`.
  Future<HelpAppConfigBase> getAppConfig({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetAppConfig(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpAppConfigBase>().result!;
  }

  /// Get Passport Config.
  ///
  /// ID: `c661ad08`.
  Future<HelpPassportConfigBase> getPassportConfig({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetPassportConfig(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpPassportConfigBase>().result!;
  }

  /// Get Support Name.
  ///
  /// ID: `d360e72c`.
  Future<HelpSupportNameBase> getSupportName() async {
    // Preparing the request.
    final request = HelpGetSupportName();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpSupportNameBase>().result!;
  }

  /// Get User Info.
  ///
  /// ID: `038a08d3`.
  Future<HelpUserInfoBase> getUserInfo({
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = HelpGetUserInfo(
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpUserInfoBase>().result!;
  }

  /// Edit User Info.
  ///
  /// ID: `66b91b70`.
  Future<HelpUserInfoBase> editUserInfo({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpUserInfoBase>().result!;
  }

  /// Get Promo Data.
  ///
  /// ID: `c0977421`.
  Future<HelpPromoDataBase> getPromoData() async {
    // Preparing the request.
    final request = HelpGetPromoData();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpPromoDataBase>().result!;
  }

  /// Get Countries List.
  ///
  /// ID: `735787a8`.
  Future<HelpCountriesListBase> getCountriesList({
    required String langCode,
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetCountriesList(
      langCode: langCode,
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpCountriesListBase>().result!;
  }

  /// Get Premium Promo.
  ///
  /// ID: `b81b93d4`.
  Future<HelpPremiumPromoBase> getPremiumPromo() async {
    // Preparing the request.
    final request = HelpGetPremiumPromo();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpPremiumPromoBase>().result!;
  }

  /// Get Peer Colors.
  ///
  /// ID: `da80f42f`.
  Future<HelpPeerColorsBase> getPeerColors({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetPeerColors(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpPeerColorsBase>().result!;
  }

  /// Get Peer Profile Colors.
  ///
  /// ID: `abcfa9fd`.
  Future<HelpPeerColorsBase> getPeerProfileColors({
    required int hash,
  }) async {
    // Preparing the request.
    final request = HelpGetPeerProfileColors(
      hash: hash,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<HelpPeerColorsBase>().result!;
  }
}

/// Channels.
class ClientChannels {
  /// Constructor.
  const ClientChannels._(this._c);
  final Client _c;

  /// Delete Messages.
  ///
  /// ID: `84c1fd4e`.
  Future<MessagesAffectedMessagesBase> deleteMessages({
    required InputChannelBase channel,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteMessages(
      channel: channel,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedMessagesBase>().result!;
  }

  /// Get Messages.
  ///
  /// ID: `ad8c9a23`.
  Future<MessagesMessagesBase> getMessages({
    required InputChannelBase channel,
    required List<InputMessageBase> id,
  }) async {
    // Preparing the request.
    final request = ChannelsGetMessages(
      channel: channel,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesMessagesBase>().result!;
  }

  /// Get Participants.
  ///
  /// ID: `77ced9d0`.
  Future<ChannelsChannelParticipantsBase> getParticipants({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChannelsChannelParticipantsBase>().result!;
  }

  /// Get Participant.
  ///
  /// ID: `a0ab6cc6`.
  Future<ChannelsChannelParticipantBase> getParticipant({
    required InputChannelBase channel,
    required InputPeerBase participant,
  }) async {
    // Preparing the request.
    final request = ChannelsGetParticipant(
      channel: channel,
      participant: participant,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChannelsChannelParticipantBase>().result!;
  }

  /// Get Channels.
  ///
  /// ID: `0a7f6bbb`.
  Future<MessagesChatsBase> getChannels({
    required List<InputChannelBase> id,
  }) async {
    // Preparing the request.
    final request = ChannelsGetChannels(
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Get Full Channel.
  ///
  /// ID: `08736a09`.
  Future<MessagesChatFullBase> getFullChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsGetFullChannel(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatFullBase>().result!;
  }

  /// Create Channel.
  ///
  /// ID: `91006707`.
  Future<UpdatesBase> createChannel({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Admin.
  ///
  /// ID: `d33c8902`.
  Future<UpdatesBase> editAdmin({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Title.
  ///
  /// ID: `566decd0`.
  Future<UpdatesBase> editTitle({
    required InputChannelBase channel,
    required String title,
  }) async {
    // Preparing the request.
    final request = ChannelsEditTitle(
      channel: channel,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Photo.
  ///
  /// ID: `f12e57c9`.
  Future<UpdatesBase> editPhoto({
    required InputChannelBase channel,
    required InputChatPhotoBase photo,
  }) async {
    // Preparing the request.
    final request = ChannelsEditPhoto(
      channel: channel,
      photo: photo,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Join Channel.
  ///
  /// ID: `24b524c5`.
  Future<UpdatesBase> joinChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsJoinChannel(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Leave Channel.
  ///
  /// ID: `f836aa95`.
  Future<UpdatesBase> leaveChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsLeaveChannel(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Invite To Channel.
  ///
  /// ID: `199f3a6c`.
  Future<UpdatesBase> inviteToChannel({
    required InputChannelBase channel,
    required List<InputUserBase> users,
  }) async {
    // Preparing the request.
    final request = ChannelsInviteToChannel(
      channel: channel,
      users: users,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Delete Channel.
  ///
  /// ID: `c0111fe3`.
  Future<UpdatesBase> deleteChannel({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteChannel(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Export Message Link.
  ///
  /// ID: `e63fadeb`.
  Future<ExportedMessageLinkBase> exportMessageLink({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ExportedMessageLinkBase>().result!;
  }

  /// Toggle Signatures.
  ///
  /// ID: `1f69b606`.
  Future<UpdatesBase> toggleSignatures({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleSignatures(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Admined Public Channels.
  ///
  /// ID: `f8b036af`.
  Future<MessagesChatsBase> getAdminedPublicChannels({
    required bool byLocation,
    required bool checkLimit,
  }) async {
    // Preparing the request.
    final request = ChannelsGetAdminedPublicChannels(
      byLocation: byLocation,
      checkLimit: checkLimit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Edit Banned.
  ///
  /// ID: `96e6cd81`.
  Future<UpdatesBase> editBanned({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Admin Log.
  ///
  /// ID: `33ddf480`.
  Future<ChannelsAdminLogResultsBase> getAdminLog({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChannelsAdminLogResultsBase>().result!;
  }

  /// Delete History.
  ///
  /// ID: `9baa9647`.
  Future<UpdatesBase> deleteHistory({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Pre History Hidden.
  ///
  /// ID: `eabbb94c`.
  Future<UpdatesBase> togglePreHistoryHidden({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsTogglePreHistoryHidden(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Left Channels.
  ///
  /// ID: `8341ecc0`.
  Future<MessagesChatsBase> getLeftChannels({
    required int offset,
  }) async {
    // Preparing the request.
    final request = ChannelsGetLeftChannels(
      offset: offset,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Get Groups For Discussion.
  ///
  /// ID: `f5dad378`.
  Future<MessagesChatsBase> getGroupsForDiscussion() async {
    // Preparing the request.
    final request = ChannelsGetGroupsForDiscussion();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Edit Creator.
  ///
  /// ID: `8f38cd1f`.
  Future<UpdatesBase> editCreator({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Slow Mode.
  ///
  /// ID: `edd49ef0`.
  Future<UpdatesBase> toggleSlowMode({
    required InputChannelBase channel,
    required int seconds,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleSlowMode(
      channel: channel,
      seconds: seconds,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Inactive Channels.
  ///
  /// ID: `11e831ee`.
  Future<MessagesInactiveChatsBase> getInactiveChannels() async {
    // Preparing the request.
    final request = ChannelsGetInactiveChannels();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesInactiveChatsBase>().result!;
  }

  /// Convert To Gigagroup.
  ///
  /// ID: `0b290c69`.
  Future<UpdatesBase> convertToGigagroup({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsConvertToGigagroup(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Sponsored Messages.
  ///
  /// ID: `ec210fbf`.
  Future<MessagesSponsoredMessagesBase> getSponsoredMessages({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsGetSponsoredMessages(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesSponsoredMessagesBase>().result!;
  }

  /// Get Send As.
  ///
  /// ID: `0dc770ee`.
  Future<ChannelsSendAsPeersBase> getSendAs({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = ChannelsGetSendAs(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChannelsSendAsPeersBase>().result!;
  }

  /// Delete Participant History.
  ///
  /// ID: `367544db`.
  Future<MessagesAffectedHistoryBase> deleteParticipantHistory({
    required InputChannelBase channel,
    required InputPeerBase participant,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteParticipantHistory(
      channel: channel,
      participant: participant,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Toggle Join To Send.
  ///
  /// ID: `e4cb9580`.
  Future<UpdatesBase> toggleJoinToSend({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleJoinToSend(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Join Request.
  ///
  /// ID: `4c2985b6`.
  Future<UpdatesBase> toggleJoinRequest({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleJoinRequest(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Forum.
  ///
  /// ID: `a4298b29`.
  Future<UpdatesBase> toggleForum({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleForum(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Create Forum Topic.
  ///
  /// ID: `f40c0224`.
  Future<UpdatesBase> createForumTopic({
    required InputChannelBase channel,
    required String title,
    int? iconColor,
    int? iconEmojiId,
    required int randomId,
    InputPeerBase? sendAs,
  }) async {
    // Preparing the request.
    final request = ChannelsCreateForumTopic(
      channel: channel,
      title: title,
      iconColor: iconColor,
      iconEmojiId: iconEmojiId,
      randomId: randomId,
      sendAs: sendAs,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Forum Topics.
  ///
  /// ID: `0de560d1`.
  Future<MessagesForumTopicsBase> getForumTopics({
    required InputChannelBase channel,
    String? q,
    required DateTime offsetDate,
    required int offsetId,
    required int offsetTopic,
    required int limit,
  }) async {
    // Preparing the request.
    final request = ChannelsGetForumTopics(
      channel: channel,
      q: q,
      offsetDate: offsetDate,
      offsetId: offsetId,
      offsetTopic: offsetTopic,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesForumTopicsBase>().result!;
  }

  /// Get Forum Topics By I D.
  ///
  /// ID: `b0831eb9`.
  Future<MessagesForumTopicsBase> getForumTopicsByID({
    required InputChannelBase channel,
    required List<int> topics,
  }) async {
    // Preparing the request.
    final request = ChannelsGetForumTopicsByID(
      channel: channel,
      topics: topics,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesForumTopicsBase>().result!;
  }

  /// Edit Forum Topic.
  ///
  /// ID: `f4dfa185`.
  Future<UpdatesBase> editForumTopic({
    required InputChannelBase channel,
    required int topicId,
    String? title,
    int? iconEmojiId,
    required bool closed,
    required bool hidden,
  }) async {
    // Preparing the request.
    final request = ChannelsEditForumTopic(
      channel: channel,
      topicId: topicId,
      title: title,
      iconEmojiId: iconEmojiId,
      closed: closed,
      hidden: hidden,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Update Pinned Forum Topic.
  ///
  /// ID: `6c2d9026`.
  Future<UpdatesBase> updatePinnedForumTopic({
    required InputChannelBase channel,
    required int topicId,
    required bool pinned,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdatePinnedForumTopic(
      channel: channel,
      topicId: topicId,
      pinned: pinned,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Delete Topic History.
  ///
  /// ID: `34435f2d`.
  Future<MessagesAffectedHistoryBase> deleteTopicHistory({
    required InputChannelBase channel,
    required int topMsgId,
  }) async {
    // Preparing the request.
    final request = ChannelsDeleteTopicHistory(
      channel: channel,
      topMsgId: topMsgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesAffectedHistoryBase>().result!;
  }

  /// Reorder Pinned Forum Topics.
  ///
  /// ID: `2950a18f`.
  Future<UpdatesBase> reorderPinnedForumTopics({
    required bool force,
    required InputChannelBase channel,
    required List<int> order,
  }) async {
    // Preparing the request.
    final request = ChannelsReorderPinnedForumTopics(
      force: force,
      channel: channel,
      order: order,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Anti Spam.
  ///
  /// ID: `68f3e4eb`.
  Future<UpdatesBase> toggleAntiSpam({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleAntiSpam(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Participants Hidden.
  ///
  /// ID: `6a6e7854`.
  Future<UpdatesBase> toggleParticipantsHidden({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleParticipantsHidden(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Update Color.
  ///
  /// ID: `d8aa3671`.
  Future<UpdatesBase> updateColor({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle View Forum As Messages.
  ///
  /// ID: `9738bb15`.
  Future<UpdatesBase> toggleViewForumAsMessages({
    required InputChannelBase channel,
    required bool enabled,
  }) async {
    // Preparing the request.
    final request = ChannelsToggleViewForumAsMessages(
      channel: channel,
      enabled: enabled,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Channel Recommendations.
  ///
  /// ID: `83b70d97`.
  Future<MessagesChatsBase> getChannelRecommendations({
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = ChannelsGetChannelRecommendations(
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Update Emoji Status.
  ///
  /// ID: `f0d3e6a8`.
  Future<UpdatesBase> updateEmojiStatus({
    required InputChannelBase channel,
    required EmojiStatusBase emojiStatus,
  }) async {
    // Preparing the request.
    final request = ChannelsUpdateEmojiStatus(
      channel: channel,
      emojiStatus: emojiStatus,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
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
  Future<DataJSONBase> sendCustomRequest({
    required String customMethod,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = BotsSendCustomRequest(
      customMethod: customMethod,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DataJSONBase>().result!;
  }

  /// Get Bot Menu Button.
  ///
  /// ID: `9c60eb28`.
  Future<BotMenuButtonBase> getBotMenuButton({
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = BotsGetBotMenuButton(
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<BotMenuButtonBase>().result!;
  }

  /// Get Bot Info.
  ///
  /// ID: `dcd914fd`.
  Future<BotsBotInfoBase> getBotInfo({
    InputUserBase? bot,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = BotsGetBotInfo(
      bot: bot,
      langCode: langCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<BotsBotInfoBase>().result!;
  }

  /// Allow Send Message.
  ///
  /// ID: `f132e3ef`.
  Future<UpdatesBase> allowSendMessage({
    required InputUserBase bot,
  }) async {
    // Preparing the request.
    final request = BotsAllowSendMessage(
      bot: bot,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Invoke Web View Custom Method.
  ///
  /// ID: `087fc5e7`.
  Future<DataJSONBase> invokeWebViewCustomMethod({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DataJSONBase>().result!;
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
  Future<PaymentsPaymentFormBase> getPaymentForm({
    required InputInvoiceBase invoice,
    DataJSONBase? themeParams,
  }) async {
    // Preparing the request.
    final request = PaymentsGetPaymentForm(
      invoice: invoice,
      themeParams: themeParams,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsPaymentFormBase>().result!;
  }

  /// Get Payment Receipt.
  ///
  /// ID: `2478d1cc`.
  Future<PaymentsPaymentReceiptBase> getPaymentReceipt({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetPaymentReceipt(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsPaymentReceiptBase>().result!;
  }

  /// Validate Requested Info.
  ///
  /// ID: `b6c8f12b`.
  Future<PaymentsValidatedRequestedInfoBase> validateRequestedInfo({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsValidatedRequestedInfoBase>().result!;
  }

  /// Send Payment Form.
  ///
  /// ID: `2d03522f`.
  Future<PaymentsPaymentResultBase> sendPaymentForm({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsPaymentResultBase>().result!;
  }

  /// Get Saved Info.
  ///
  /// ID: `227d824b`.
  Future<PaymentsSavedInfoBase> getSavedInfo() async {
    // Preparing the request.
    final request = PaymentsGetSavedInfo();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsSavedInfoBase>().result!;
  }

  /// Get Bank Card Data.
  ///
  /// ID: `2e79d779`.
  Future<PaymentsBankCardDataBase> getBankCardData({
    required String number,
  }) async {
    // Preparing the request.
    final request = PaymentsGetBankCardData(
      number: number,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsBankCardDataBase>().result!;
  }

  /// Export Invoice.
  ///
  /// ID: `0f91b065`.
  Future<PaymentsExportedInvoiceBase> exportInvoice({
    required InputMediaBase invoiceMedia,
  }) async {
    // Preparing the request.
    final request = PaymentsExportInvoice(
      invoiceMedia: invoiceMedia,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsExportedInvoiceBase>().result!;
  }

  /// Assign App Store Transaction.
  ///
  /// ID: `80ed747d`.
  Future<UpdatesBase> assignAppStoreTransaction({
    required Uint8List receipt,
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsAssignAppStoreTransaction(
      receipt: receipt,
      purpose: purpose,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Assign Play Market Transaction.
  ///
  /// ID: `dffd50d3`.
  Future<UpdatesBase> assignPlayMarketTransaction({
    required DataJSONBase receipt,
    required InputStorePaymentPurposeBase purpose,
  }) async {
    // Preparing the request.
    final request = PaymentsAssignPlayMarketTransaction(
      receipt: receipt,
      purpose: purpose,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Check Gift Code.
  ///
  /// ID: `8e51b4c1`.
  Future<PaymentsCheckedGiftCodeBase> checkGiftCode({
    required String slug,
  }) async {
    // Preparing the request.
    final request = PaymentsCheckGiftCode(
      slug: slug,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsCheckedGiftCodeBase>().result!;
  }

  /// Apply Gift Code.
  ///
  /// ID: `f6e26854`.
  Future<UpdatesBase> applyGiftCode({
    required String slug,
  }) async {
    // Preparing the request.
    final request = PaymentsApplyGiftCode(
      slug: slug,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Giveaway Info.
  ///
  /// ID: `f4239425`.
  Future<PaymentsGiveawayInfoBase> getGiveawayInfo({
    required InputPeerBase peer,
    required int msgId,
  }) async {
    // Preparing the request.
    final request = PaymentsGetGiveawayInfo(
      peer: peer,
      msgId: msgId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PaymentsGiveawayInfoBase>().result!;
  }

  /// Launch Prepaid Giveaway.
  ///
  /// ID: `5ff58f20`.
  Future<UpdatesBase> launchPrepaidGiveaway({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
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
  Future<MessagesStickerSetBase> createStickerSet({
    required bool masks,
    required bool animated,
    required bool videos,
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
      animated: animated,
      videos: videos,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Remove Sticker From Set.
  ///
  /// ID: `f7760f51`.
  Future<MessagesStickerSetBase> removeStickerFromSet({
    required InputDocumentBase sticker,
  }) async {
    // Preparing the request.
    final request = StickersRemoveStickerFromSet(
      sticker: sticker,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Change Sticker Position.
  ///
  /// ID: `ffb6d4ca`.
  Future<MessagesStickerSetBase> changeStickerPosition({
    required InputDocumentBase sticker,
    required int position,
  }) async {
    // Preparing the request.
    final request = StickersChangeStickerPosition(
      sticker: sticker,
      position: position,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Add Sticker To Set.
  ///
  /// ID: `8653febe`.
  Future<MessagesStickerSetBase> addStickerToSet({
    required InputStickerSetBase stickerset,
    required InputStickerSetItemBase sticker,
  }) async {
    // Preparing the request.
    final request = StickersAddStickerToSet(
      stickerset: stickerset,
      sticker: sticker,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Set Sticker Set Thumb.
  ///
  /// ID: `a76a5392`.
  Future<MessagesStickerSetBase> setStickerSetThumb({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Suggest Short Name.
  ///
  /// ID: `4dafc503`.
  Future<StickersSuggestedShortNameBase> suggestShortName({
    required String title,
  }) async {
    // Preparing the request.
    final request = StickersSuggestShortName(
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StickersSuggestedShortNameBase>().result!;
  }

  /// Change Sticker.
  ///
  /// ID: `f5537ebc`.
  Future<MessagesStickerSetBase> changeSticker({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
  }

  /// Rename Sticker Set.
  ///
  /// ID: `124b1c00`.
  Future<MessagesStickerSetBase> renameStickerSet({
    required InputStickerSetBase stickerset,
    required String title,
  }) async {
    // Preparing the request.
    final request = StickersRenameStickerSet(
      stickerset: stickerset,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesStickerSetBase>().result!;
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
  Future<DataJSONBase> getCallConfig() async {
    // Preparing the request.
    final request = PhoneGetCallConfig();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<DataJSONBase>().result!;
  }

  /// Request Call.
  ///
  /// ID: `42ff96ed`.
  Future<PhonePhoneCallBase> requestCall({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhonePhoneCallBase>().result!;
  }

  /// Accept Call.
  ///
  /// ID: `3bd2b4a0`.
  Future<PhonePhoneCallBase> acceptCall({
    required InputPhoneCallBase peer,
    required Uint8List gB,
    required PhoneCallProtocolBase protocol,
  }) async {
    // Preparing the request.
    final request = PhoneAcceptCall(
      peer: peer,
      gB: gB,
      protocol: protocol,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhonePhoneCallBase>().result!;
  }

  /// Confirm Call.
  ///
  /// ID: `2efe1722`.
  Future<PhonePhoneCallBase> confirmCall({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhonePhoneCallBase>().result!;
  }

  /// Discard Call.
  ///
  /// ID: `b2cbc1c0`.
  Future<UpdatesBase> discardCall({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Set Call Rating.
  ///
  /// ID: `59ead627`.
  Future<UpdatesBase> setCallRating({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Create Group Call.
  ///
  /// ID: `48cdc6d8`.
  Future<UpdatesBase> createGroupCall({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Join Group Call.
  ///
  /// ID: `b132ff7b`.
  Future<UpdatesBase> joinGroupCall({
    required bool muted,
    required bool videoStopped,
    required InputGroupCallBase call,
    required InputPeerBase joinAs,
    String? inviteHash,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = PhoneJoinGroupCall(
      muted: muted,
      videoStopped: videoStopped,
      call: call,
      joinAs: joinAs,
      inviteHash: inviteHash,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Leave Group Call.
  ///
  /// ID: `500377f9`.
  Future<UpdatesBase> leaveGroupCall({
    required InputGroupCallBase call,
    required int source,
  }) async {
    // Preparing the request.
    final request = PhoneLeaveGroupCall(
      call: call,
      source: source,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Invite To Group Call.
  ///
  /// ID: `7b393160`.
  Future<UpdatesBase> inviteToGroupCall({
    required InputGroupCallBase call,
    required List<InputUserBase> users,
  }) async {
    // Preparing the request.
    final request = PhoneInviteToGroupCall(
      call: call,
      users: users,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Discard Group Call.
  ///
  /// ID: `7a777135`.
  Future<UpdatesBase> discardGroupCall({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneDiscardGroupCall(
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Toggle Group Call Settings.
  ///
  /// ID: `74bbb43d`.
  Future<UpdatesBase> toggleGroupCallSettings({
    required bool resetInviteHash,
    required InputGroupCallBase call,
    required bool joinMuted,
  }) async {
    // Preparing the request.
    final request = PhoneToggleGroupCallSettings(
      resetInviteHash: resetInviteHash,
      call: call,
      joinMuted: joinMuted,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Group Call.
  ///
  /// ID: `041845db`.
  Future<PhoneGroupCallBase> getGroupCall({
    required InputGroupCallBase call,
    required int limit,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCall(
      call: call,
      limit: limit,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneGroupCallBase>().result!;
  }

  /// Get Group Participants.
  ///
  /// ID: `c558d8ab`.
  Future<PhoneGroupParticipantsBase> getGroupParticipants({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneGroupParticipantsBase>().result!;
  }

  /// Toggle Group Call Record.
  ///
  /// ID: `f128c708`.
  Future<UpdatesBase> toggleGroupCallRecord({
    required bool start,
    required bool video,
    required InputGroupCallBase call,
    String? title,
    required bool videoPortrait,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Group Call Participant.
  ///
  /// ID: `a5273abf`.
  Future<UpdatesBase> editGroupCallParticipant({
    required InputGroupCallBase call,
    required InputPeerBase participant,
    required bool muted,
    int? volume,
    required bool raiseHand,
    required bool videoStopped,
    required bool videoPaused,
    required bool presentationPaused,
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Group Call Title.
  ///
  /// ID: `1ca6ac0a`.
  Future<UpdatesBase> editGroupCallTitle({
    required InputGroupCallBase call,
    required String title,
  }) async {
    // Preparing the request.
    final request = PhoneEditGroupCallTitle(
      call: call,
      title: title,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Group Call Join As.
  ///
  /// ID: `ef7c213a`.
  Future<PhoneJoinAsPeersBase> getGroupCallJoinAs({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallJoinAs(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneJoinAsPeersBase>().result!;
  }

  /// Export Group Call Invite.
  ///
  /// ID: `e6aa647f`.
  Future<PhoneExportedGroupCallInviteBase> exportGroupCallInvite({
    required bool canSelfUnmute,
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneExportGroupCallInvite(
      canSelfUnmute: canSelfUnmute,
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneExportedGroupCallInviteBase>().result!;
  }

  /// Toggle Group Call Start Subscription.
  ///
  /// ID: `219c34e6`.
  Future<UpdatesBase> toggleGroupCallStartSubscription({
    required InputGroupCallBase call,
    required bool subscribed,
  }) async {
    // Preparing the request.
    final request = PhoneToggleGroupCallStartSubscription(
      call: call,
      subscribed: subscribed,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Start Scheduled Group Call.
  ///
  /// ID: `5680e342`.
  Future<UpdatesBase> startScheduledGroupCall({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneStartScheduledGroupCall(
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Join Group Call Presentation.
  ///
  /// ID: `cbea6bc4`.
  Future<UpdatesBase> joinGroupCallPresentation({
    required InputGroupCallBase call,
    required DataJSONBase params,
  }) async {
    // Preparing the request.
    final request = PhoneJoinGroupCallPresentation(
      call: call,
      params: params,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Leave Group Call Presentation.
  ///
  /// ID: `1c50d144`.
  Future<UpdatesBase> leaveGroupCallPresentation({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneLeaveGroupCallPresentation(
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Group Call Stream Channels.
  ///
  /// ID: `1ab21940`.
  Future<PhoneGroupCallStreamChannelsBase> getGroupCallStreamChannels({
    required InputGroupCallBase call,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallStreamChannels(
      call: call,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneGroupCallStreamChannelsBase>().result!;
  }

  /// Get Group Call Stream Rtmp Url.
  ///
  /// ID: `deb3abbf`.
  Future<PhoneGroupCallStreamRtmpUrlBase> getGroupCallStreamRtmpUrl({
    required InputPeerBase peer,
    required bool revoke,
  }) async {
    // Preparing the request.
    final request = PhoneGetGroupCallStreamRtmpUrl(
      peer: peer,
      revoke: revoke,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PhoneGroupCallStreamRtmpUrlBase>().result!;
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
  Future<LangPackDifferenceBase> getLangPack({
    required String langPack,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = LangpackGetLangPack(
      langPack: langPack,
      langCode: langCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<LangPackDifferenceBase>().result!;
  }

  /// Get Difference.
  ///
  /// ID: `cd984aa5`.
  Future<LangPackDifferenceBase> getDifference({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<LangPackDifferenceBase>().result!;
  }

  /// Get Language.
  ///
  /// ID: `6a596502`.
  Future<LangPackLanguageBase> getLanguage({
    required String langPack,
    required String langCode,
  }) async {
    // Preparing the request.
    final request = LangpackGetLanguage(
      langPack: langPack,
      langCode: langCode,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<LangPackLanguageBase>().result!;
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
  Future<UpdatesBase> editPeerFolders({
    required List<InputFolderPeerBase> folderPeers,
  }) async {
    // Preparing the request.
    final request = FoldersEditPeerFolders(
      folderPeers: folderPeers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
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
  Future<StatsBroadcastStatsBase> getBroadcastStats({
    required bool dark,
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = StatsGetBroadcastStats(
      dark: dark,
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsBroadcastStatsBase>().result!;
  }

  /// Load Async Graph.
  ///
  /// ID: `621d5fa0`.
  Future<StatsGraphBase> loadAsyncGraph({
    required String token,
    int? x,
  }) async {
    // Preparing the request.
    final request = StatsLoadAsyncGraph(
      token: token,
      x: x,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsGraphBase>().result!;
  }

  /// Get Megagroup Stats.
  ///
  /// ID: `dcdf8607`.
  Future<StatsMegagroupStatsBase> getMegagroupStats({
    required bool dark,
    required InputChannelBase channel,
  }) async {
    // Preparing the request.
    final request = StatsGetMegagroupStats(
      dark: dark,
      channel: channel,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsMegagroupStatsBase>().result!;
  }

  /// Get Message Public Forwards.
  ///
  /// ID: `5f150144`.
  Future<StatsPublicForwardsBase> getMessagePublicForwards({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsPublicForwardsBase>().result!;
  }

  /// Get Message Stats.
  ///
  /// ID: `b6e0a3f5`.
  Future<StatsMessageStatsBase> getMessageStats({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsMessageStatsBase>().result!;
  }

  /// Get Story Stats.
  ///
  /// ID: `374fef40`.
  Future<StatsStoryStatsBase> getStoryStats({
    required bool dark,
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = StatsGetStoryStats(
      dark: dark,
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsStoryStatsBase>().result!;
  }

  /// Get Story Public Forwards.
  ///
  /// ID: `a6437ef6`.
  Future<StatsPublicForwardsBase> getStoryPublicForwards({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StatsPublicForwardsBase>().result!;
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
  Future<ChatlistsExportedChatlistInviteBase> exportChatlistInvite({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatlistsExportedChatlistInviteBase>().result!;
  }

  /// Edit Exported Invite.
  ///
  /// ID: `653db63d`.
  Future<ExportedChatlistInviteBase> editExportedInvite({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ExportedChatlistInviteBase>().result!;
  }

  /// Get Exported Invites.
  ///
  /// ID: `ce03da83`.
  Future<ChatlistsExportedInvitesBase> getExportedInvites({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsGetExportedInvites(
      chatlist: chatlist,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatlistsExportedInvitesBase>().result!;
  }

  /// Check Chatlist Invite.
  ///
  /// ID: `41c10fff`.
  Future<ChatlistsChatlistInviteBase> checkChatlistInvite({
    required String slug,
  }) async {
    // Preparing the request.
    final request = ChatlistsCheckChatlistInvite(
      slug: slug,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatlistsChatlistInviteBase>().result!;
  }

  /// Join Chatlist Invite.
  ///
  /// ID: `a6b1e39a`.
  Future<UpdatesBase> joinChatlistInvite({
    required String slug,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsJoinChatlistInvite(
      slug: slug,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Chatlist Updates.
  ///
  /// ID: `89419521`.
  Future<ChatlistsChatlistUpdatesBase> getChatlistUpdates({
    required InputChatlistBase chatlist,
  }) async {
    // Preparing the request.
    final request = ChatlistsGetChatlistUpdates(
      chatlist: chatlist,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ChatlistsChatlistUpdatesBase>().result!;
  }

  /// Join Chatlist Updates.
  ///
  /// ID: `e089f8f5`.
  Future<UpdatesBase> joinChatlistUpdates({
    required InputChatlistBase chatlist,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsJoinChatlistUpdates(
      chatlist: chatlist,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Leave Chatlist.
  ///
  /// ID: `74fae13a`.
  Future<UpdatesBase> leaveChatlist({
    required InputChatlistBase chatlist,
    required List<InputPeerBase> peers,
  }) async {
    // Preparing the request.
    final request = ChatlistsLeaveChatlist(
      chatlist: chatlist,
      peers: peers,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }
}

/// Stories.
class ClientStories {
  /// Constructor.
  const ClientStories._(this._c);
  final Client _c;

  /// Send Story.
  ///
  /// ID: `e4e6694b`.
  Future<UpdatesBase> sendStory({
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
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Edit Story.
  ///
  /// ID: `b583ba46`.
  Future<UpdatesBase> editStory({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get All Stories.
  ///
  /// ID: `eeb0d625`.
  Future<StoriesAllStoriesBase> getAllStories({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesAllStoriesBase>().result!;
  }

  /// Get Pinned Stories.
  ///
  /// ID: `5821a5dc`.
  Future<StoriesStoriesBase> getPinnedStories({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoriesBase>().result!;
  }

  /// Get Stories Archive.
  ///
  /// ID: `b4352016`.
  Future<StoriesStoriesBase> getStoriesArchive({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoriesBase>().result!;
  }

  /// Get Stories By I D.
  ///
  /// ID: `5774ca74`.
  Future<StoriesStoriesBase> getStoriesByID({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoriesByID(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoriesBase>().result!;
  }

  /// Get Story Views List.
  ///
  /// ID: `7ed23c57`.
  Future<StoriesStoryViewsListBase> getStoryViewsList({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoryViewsListBase>().result!;
  }

  /// Get Stories Views.
  ///
  /// ID: `28e16cc8`.
  Future<StoriesStoryViewsBase> getStoriesViews({
    required InputPeerBase peer,
    required List<int> id,
  }) async {
    // Preparing the request.
    final request = StoriesGetStoriesViews(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoryViewsBase>().result!;
  }

  /// Export Story Link.
  ///
  /// ID: `7b8def20`.
  Future<ExportedStoryLinkBase> exportStoryLink({
    required InputPeerBase peer,
    required int id,
  }) async {
    // Preparing the request.
    final request = StoriesExportStoryLink(
      peer: peer,
      id: id,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<ExportedStoryLinkBase>().result!;
  }

  /// Activate Stealth Mode.
  ///
  /// ID: `57bbd166`.
  Future<UpdatesBase> activateStealthMode({
    required bool past,
    required bool future,
  }) async {
    // Preparing the request.
    final request = StoriesActivateStealthMode(
      past: past,
      future: future,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Send Reaction.
  ///
  /// ID: `7fd736b2`.
  Future<UpdatesBase> sendReaction({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Peer Stories.
  ///
  /// ID: `2c4ada50`.
  Future<StoriesPeerStoriesBase> getPeerStories({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = StoriesGetPeerStories(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesPeerStoriesBase>().result!;
  }

  /// Get All Read Peer Stories.
  ///
  /// ID: `9b5ae7f9`.
  Future<UpdatesBase> getAllReadPeerStories() async {
    // Preparing the request.
    final request = StoriesGetAllReadPeerStories();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<UpdatesBase>().result!;
  }

  /// Get Chats To Send.
  ///
  /// ID: `a56a8b60`.
  Future<MessagesChatsBase> getChatsToSend() async {
    // Preparing the request.
    final request = StoriesGetChatsToSend();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<MessagesChatsBase>().result!;
  }

  /// Get Story Reactions List.
  ///
  /// ID: `b9b2881f`.
  Future<StoriesStoryReactionsListBase> getStoryReactionsList({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<StoriesStoryReactionsListBase>().result!;
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
  Future<PremiumBoostsListBase> getBoostsList({
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
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PremiumBoostsListBase>().result!;
  }

  /// Get My Boosts.
  ///
  /// ID: `0be77b4a`.
  Future<PremiumMyBoostsBase> getMyBoosts() async {
    // Preparing the request.
    final request = PremiumGetMyBoosts();

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PremiumMyBoostsBase>().result!;
  }

  /// Apply Boost.
  ///
  /// ID: `6b7da746`.
  Future<PremiumMyBoostsBase> applyBoost({
    List<int>? slots,
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PremiumApplyBoost(
      slots: slots,
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PremiumMyBoostsBase>().result!;
  }

  /// Get Boosts Status.
  ///
  /// ID: `042f1f61`.
  Future<PremiumBoostsStatusBase> getBoostsStatus({
    required InputPeerBase peer,
  }) async {
    // Preparing the request.
    final request = PremiumGetBoostsStatus(
      peer: peer,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PremiumBoostsStatusBase>().result!;
  }

  /// Get User Boosts.
  ///
  /// ID: `39854d1f`.
  Future<PremiumBoostsListBase> getUserBoosts({
    required InputPeerBase peer,
    required InputUserBase userId,
  }) async {
    // Preparing the request.
    final request = PremiumGetUserBoosts(
      peer: peer,
      userId: userId,
    );

    // Invoke and wait for response.
    final response = await _c.invoke(request, true);

    // Return the result.
    return response._to<PremiumBoostsListBase>().result!;
  }
}
