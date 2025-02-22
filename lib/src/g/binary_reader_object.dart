part of '../../t.dart';

TlObject _readObject(BinaryReader reader) {
  final id = reader.readInt32();
  // From mtproto.tl

  if (id == 0x1cb5c415) {
    throw Exception(
        'This is a bug. Please report at https://github.com/telegramflutter/tg/issues.');
  }

  if (id == 0x05162463) {
    return ResPQ.deserialize(reader);
  }

  if (id == 0xa9f55f95) {
    return PQInnerDataDc.deserialize(reader);
  }

  if (id == 0x56fddf88) {
    return PQInnerDataTempDc.deserialize(reader);
  }

  if (id == 0xd0e8075c) {
    return ServerDHParamsOk.deserialize(reader);
  }

  if (id == 0xb5890dba) {
    return ServerDHInnerData.deserialize(reader);
  }

  if (id == 0x6643b654) {
    return ClientDHInnerData.deserialize(reader);
  }

  if (id == 0x3bcbf734) {
    return DhGenOk.deserialize(reader);
  }

  if (id == 0x46dc1fb9) {
    return DhGenRetry.deserialize(reader);
  }

  if (id == 0xa69dae02) {
    return DhGenFail.deserialize(reader);
  }

  if (id == 0x75a3f765) {
    return BindAuthKeyInner.deserialize(reader);
  }

  if (id == 0xf35c6d01) {
    return RpcResult.deserialize(reader);
  }

  if (id == 0x2144ca19) {
    return RpcError.deserialize(reader);
  }

  if (id == 0x5e2ad36e) {
    return RpcAnswerUnknown.deserialize(reader);
  }

  if (id == 0xcd78e586) {
    return RpcAnswerDroppedRunning.deserialize(reader);
  }

  if (id == 0xa43ad8b7) {
    return RpcAnswerDropped.deserialize(reader);
  }

  if (id == 0x0949d9dc) {
    return FutureSalt.deserialize(reader);
  }

  if (id == 0xae500895) {
    return FutureSalts.deserialize(reader);
  }

  if (id == 0x347773c5) {
    return Pong.deserialize(reader);
  }

  if (id == 0xe22045fc) {
    return DestroySessionOk.deserialize(reader);
  }

  if (id == 0x62d350c9) {
    return DestroySessionNone.deserialize(reader);
  }

  if (id == 0x9ec20908) {
    return NewSessionCreated.deserialize(reader);
  }

  if (id == 0x73f1f8dc) {
    return MsgContainer.deserialize(reader);
  }

  if (id == 0x5bb8e511) {
    return Msg.deserialize(reader);
  }

  if (id == 0xe06046b2) {
    return MsgCopy.deserialize(reader);
  }

  if (id == 0x3072cfa1) {
    return GzipPacked.deserialize(reader);
  }

  if (id == 0x62d6b459) {
    return MsgsAck.deserialize(reader);
  }

  if (id == 0xa7eff811) {
    return BadMsgNotification.deserialize(reader);
  }

  if (id == 0xedab447b) {
    return BadServerSalt.deserialize(reader);
  }

  if (id == 0x7d861a08) {
    return MsgResendReq.deserialize(reader);
  }

  if (id == 0xda69fb52) {
    return MsgsStateReq.deserialize(reader);
  }

  if (id == 0x04deb57d) {
    return MsgsStateInfo.deserialize(reader);
  }

  if (id == 0x8cc0d131) {
    return MsgsAllInfo.deserialize(reader);
  }

  if (id == 0x276d3ec6) {
    return MsgDetailedInfo.deserialize(reader);
  }

  if (id == 0x809db6df) {
    return MsgNewDetailedInfo.deserialize(reader);
  }

  if (id == 0xf660e1d4) {
    return DestroyAuthKeyOk.deserialize(reader);
  }

  if (id == 0x0a9f2259) {
    return DestroyAuthKeyNone.deserialize(reader);
  }

  if (id == 0xea109b13) {
    return DestroyAuthKeyFail.deserialize(reader);
  }

  if (id == 0xbe7e8ef1) {
    return ReqPqMulti.deserialize(reader);
  }

  if (id == 0xd712e4be) {
    return ReqDHParams.deserialize(reader);
  }

  if (id == 0xf5045f1f) {
    return SetClientDHParams.deserialize(reader);
  }

  if (id == 0x58e4a740) {
    return RpcDropAnswer.deserialize(reader);
  }

  if (id == 0xb921bd04) {
    return GetFutureSalts.deserialize(reader);
  }

  if (id == 0x7abe77ec) {
    return Ping.deserialize(reader);
  }

  if (id == 0xf3427b8c) {
    return PingDelayDisconnect.deserialize(reader);
  }

  if (id == 0xe7512126) {
    return DestroySession.deserialize(reader);
  }

  if (id == 0x9299359f) {
    return HttpWait.deserialize(reader);
  }

  if (id == 0xd1435160) {
    return DestroyAuthKey.deserialize(reader);
  }

  // From schema.tl

  if (id == 0xbc799737) {
    return Boolean(false);
  }

  if (id == 0x997275b5) {
    return Boolean(true);
  }

  if (id == 0x3fedd339) {
    return True.deserialize(reader);
  }

  if (id == 0x1cb5c415) {
    throw Exception(
        'This is a bug. Please report at https://github.com/telegramflutter/tg/issues.');
  }

  if (id == 0xc4b9f9bb) {
    return Error.deserialize(reader);
  }

  if (id == 0x56730bcc) {
    return Null.deserialize(reader);
  }

  if (id == 0x7f3b18ea) {
    return InputPeerEmpty.deserialize(reader);
  }

  if (id == 0x7da07ec9) {
    return InputPeerSelf.deserialize(reader);
  }

  if (id == 0x35a95cb9) {
    return InputPeerChat.deserialize(reader);
  }

  if (id == 0xb98886cf) {
    return InputUserEmpty.deserialize(reader);
  }

  if (id == 0xf7c1b13f) {
    return InputUserSelf.deserialize(reader);
  }

  if (id == 0xf392b7f4) {
    return InputPhoneContact.deserialize(reader);
  }

  if (id == 0xf52ff27f) {
    return InputFile.deserialize(reader);
  }

  if (id == 0x9664f57f) {
    return InputMediaEmpty.deserialize(reader);
  }

  if (id == 0x1e287d04) {
    return InputMediaUploadedPhoto.deserialize(reader);
  }

  if (id == 0xb3ba0635) {
    return InputMediaPhoto.deserialize(reader);
  }

  if (id == 0xf9c44144) {
    return InputMediaGeoPoint.deserialize(reader);
  }

  if (id == 0xf8ab7dfb) {
    return InputMediaContact.deserialize(reader);
  }

  if (id == 0x1ca48f57) {
    return InputChatPhotoEmpty.deserialize(reader);
  }

  if (id == 0xbdcdaec0) {
    return InputChatUploadedPhoto.deserialize(reader);
  }

  if (id == 0x8953ad37) {
    return InputChatPhoto.deserialize(reader);
  }

  if (id == 0xe4c123d6) {
    return InputGeoPointEmpty.deserialize(reader);
  }

  if (id == 0x48222faf) {
    return InputGeoPoint.deserialize(reader);
  }

  if (id == 0x1cd7bf0d) {
    return InputPhotoEmpty.deserialize(reader);
  }

  if (id == 0x3bb3b94a) {
    return InputPhoto.deserialize(reader);
  }

  if (id == 0xdfdaabe1) {
    return InputFileLocation.deserialize(reader);
  }

  if (id == 0x59511722) {
    return PeerUser.deserialize(reader);
  }

  if (id == 0x36c6019a) {
    return PeerChat.deserialize(reader);
  }

  if (id == 0xaa963b05) {
    return StorageFileUnknown.deserialize(reader);
  }

  if (id == 0x40bc6f52) {
    return StorageFilePartial.deserialize(reader);
  }

  if (id == 0x007efe0e) {
    return StorageFileJpeg.deserialize(reader);
  }

  if (id == 0xcae1aadf) {
    return StorageFileGif.deserialize(reader);
  }

  if (id == 0x0a4f63c0) {
    return StorageFilePng.deserialize(reader);
  }

  if (id == 0xae1e508d) {
    return StorageFilePdf.deserialize(reader);
  }

  if (id == 0x528a0677) {
    return StorageFileMp3.deserialize(reader);
  }

  if (id == 0x4b09ebbc) {
    return StorageFileMov.deserialize(reader);
  }

  if (id == 0xb3cea0e4) {
    return StorageFileMp4.deserialize(reader);
  }

  if (id == 0x1081464c) {
    return StorageFileWebp.deserialize(reader);
  }

  if (id == 0xd3bc4b7a) {
    return UserEmpty.deserialize(reader);
  }

  if (id == 0x4f11bae1) {
    return UserProfilePhotoEmpty.deserialize(reader);
  }

  if (id == 0x82d1f706) {
    return UserProfilePhoto.deserialize(reader);
  }

  if (id == 0x09d05049) {
    return UserStatusEmpty.deserialize(reader);
  }

  if (id == 0xedb93949) {
    return UserStatusOnline.deserialize(reader);
  }

  if (id == 0x008c703f) {
    return UserStatusOffline.deserialize(reader);
  }

  if (id == 0x29562865) {
    return ChatEmpty.deserialize(reader);
  }

  if (id == 0x41cbf256) {
    return Chat.deserialize(reader);
  }

  if (id == 0x6592a1a7) {
    return ChatForbidden.deserialize(reader);
  }

  if (id == 0x2633421b) {
    return ChatFull.deserialize(reader);
  }

  if (id == 0xc02d4007) {
    return ChatParticipant.deserialize(reader);
  }

  if (id == 0x8763d3e1) {
    return ChatParticipantsForbidden.deserialize(reader);
  }

  if (id == 0x3cbc93f8) {
    return ChatParticipants.deserialize(reader);
  }

  if (id == 0x37c1011c) {
    return ChatPhotoEmpty.deserialize(reader);
  }

  if (id == 0x1c6e1c11) {
    return ChatPhoto.deserialize(reader);
  }

  if (id == 0x90a6ca84) {
    return MessageEmpty.deserialize(reader);
  }

  if (id == 0x94345242) {
    return Message.deserialize(reader);
  }

  if (id == 0x2b085862) {
    return MessageService.deserialize(reader);
  }

  if (id == 0x3ded6320) {
    return MessageMediaEmpty.deserialize(reader);
  }

  if (id == 0x695150d7) {
    return MessageMediaPhoto.deserialize(reader);
  }

  if (id == 0x56e0d474) {
    return MessageMediaGeo.deserialize(reader);
  }

  if (id == 0x70322949) {
    return MessageMediaContact.deserialize(reader);
  }

  if (id == 0x9f84f49e) {
    return MessageMediaUnsupported.deserialize(reader);
  }

  if (id == 0xb6aef7b0) {
    return MessageActionEmpty.deserialize(reader);
  }

  if (id == 0xbd47cbad) {
    return MessageActionChatCreate.deserialize(reader);
  }

  if (id == 0xb5a1ce5a) {
    return MessageActionChatEditTitle.deserialize(reader);
  }

  if (id == 0x7fcb13a8) {
    return MessageActionChatEditPhoto.deserialize(reader);
  }

  if (id == 0x95e3fbef) {
    return MessageActionChatDeletePhoto.deserialize(reader);
  }

  if (id == 0x15cefd00) {
    return MessageActionChatAddUser.deserialize(reader);
  }

  if (id == 0xa43f30cc) {
    return MessageActionChatDeleteUser.deserialize(reader);
  }

  if (id == 0xd58a08c6) {
    return Dialog.deserialize(reader);
  }

  if (id == 0x2331b22d) {
    return PhotoEmpty.deserialize(reader);
  }

  if (id == 0xfb197a65) {
    return Photo.deserialize(reader);
  }

  if (id == 0x0e17e23c) {
    return PhotoSizeEmpty.deserialize(reader);
  }

  if (id == 0x75c78e60) {
    return PhotoSize.deserialize(reader);
  }

  if (id == 0x021e1ad6) {
    return PhotoCachedSize.deserialize(reader);
  }

  if (id == 0x1117dd5f) {
    return GeoPointEmpty.deserialize(reader);
  }

  if (id == 0xb2a2f663) {
    return GeoPoint.deserialize(reader);
  }

  if (id == 0x5e002502) {
    return AuthSentCode.deserialize(reader);
  }

  if (id == 0x2ea2c0d4) {
    return AuthAuthorization.deserialize(reader);
  }

  if (id == 0xb434e2b8) {
    return AuthExportedAuthorization.deserialize(reader);
  }

  if (id == 0xb8bc5b0c) {
    return InputNotifyPeer.deserialize(reader);
  }

  if (id == 0x193b4417) {
    return InputNotifyUsers.deserialize(reader);
  }

  if (id == 0x4a95e84e) {
    return InputNotifyChats.deserialize(reader);
  }

  if (id == 0xcacb6ae2) {
    return InputPeerNotifySettings.deserialize(reader);
  }

  if (id == 0x99622c0c) {
    return PeerNotifySettings.deserialize(reader);
  }

  if (id == 0xacd66c5e) {
    return PeerSettings.deserialize(reader);
  }

  if (id == 0xa437c3ed) {
    return WallPaper.deserialize(reader);
  }

  if (id == 0x58dbcab8) {
    return InputReportReasonSpam.deserialize(reader);
  }

  if (id == 0x1e22c78d) {
    return InputReportReasonViolence.deserialize(reader);
  }

  if (id == 0x2e59d922) {
    return InputReportReasonPornography.deserialize(reader);
  }

  if (id == 0xadf44ee3) {
    return InputReportReasonChildAbuse.deserialize(reader);
  }

  if (id == 0xc1e4a2b1) {
    return InputReportReasonOther.deserialize(reader);
  }

  if (id == 0x979d2376) {
    return UserFull.deserialize(reader);
  }

  if (id == 0x145ade0b) {
    return Contact.deserialize(reader);
  }

  if (id == 0xc13e3c50) {
    return ImportedContact.deserialize(reader);
  }

  if (id == 0x16d9703b) {
    return ContactStatus.deserialize(reader);
  }

  if (id == 0xb74ba9d2) {
    return ContactsContactsNotModified.deserialize(reader);
  }

  if (id == 0xeae87e42) {
    return ContactsContacts.deserialize(reader);
  }

  if (id == 0x77d01c3b) {
    return ContactsImportedContacts.deserialize(reader);
  }

  if (id == 0x0ade1591) {
    return ContactsBlocked.deserialize(reader);
  }

  if (id == 0xe1664194) {
    return ContactsBlockedSlice.deserialize(reader);
  }

  if (id == 0x15ba6c40) {
    return MessagesDialogs.deserialize(reader);
  }

  if (id == 0x71e094f3) {
    return MessagesDialogsSlice.deserialize(reader);
  }

  if (id == 0x8c718e87) {
    return MessagesMessages.deserialize(reader);
  }

  if (id == 0x3a54685e) {
    return MessagesMessagesSlice.deserialize(reader);
  }

  if (id == 0x64ff9fd5) {
    return MessagesChats.deserialize(reader);
  }

  if (id == 0xe5d7d19c) {
    return MessagesChatFull.deserialize(reader);
  }

  if (id == 0xb45c69d1) {
    return MessagesAffectedHistory.deserialize(reader);
  }

  if (id == 0x57e2f66c) {
    return InputMessagesFilterEmpty.deserialize(reader);
  }

  if (id == 0x9609a51c) {
    return InputMessagesFilterPhotos.deserialize(reader);
  }

  if (id == 0x9fc00e65) {
    return InputMessagesFilterVideo.deserialize(reader);
  }

  if (id == 0x56e9f0e4) {
    return InputMessagesFilterPhotoVideo.deserialize(reader);
  }

  if (id == 0x9eddf188) {
    return InputMessagesFilterDocument.deserialize(reader);
  }

  if (id == 0x7ef0dd87) {
    return InputMessagesFilterUrl.deserialize(reader);
  }

  if (id == 0xffc86587) {
    return InputMessagesFilterGif.deserialize(reader);
  }

  if (id == 0x1f2b0afd) {
    return UpdateNewMessage.deserialize(reader);
  }

  if (id == 0x4e90bfd6) {
    return UpdateMessageID.deserialize(reader);
  }

  if (id == 0xa20db0e5) {
    return UpdateDeleteMessages.deserialize(reader);
  }

  if (id == 0xc01e857f) {
    return UpdateUserTyping.deserialize(reader);
  }

  if (id == 0x83487af0) {
    return UpdateChatUserTyping.deserialize(reader);
  }

  if (id == 0x07761198) {
    return UpdateChatParticipants.deserialize(reader);
  }

  if (id == 0xe5bdf8de) {
    return UpdateUserStatus.deserialize(reader);
  }

  if (id == 0xa7848924) {
    return UpdateUserName.deserialize(reader);
  }

  if (id == 0x8951abef) {
    return UpdateNewAuthorization.deserialize(reader);
  }

  if (id == 0xa56c2a3e) {
    return UpdatesState.deserialize(reader);
  }

  if (id == 0x5d75a138) {
    return UpdatesDifferenceEmpty.deserialize(reader);
  }

  if (id == 0x00f49ca0) {
    return UpdatesDifference.deserialize(reader);
  }

  if (id == 0xa8fb1981) {
    return UpdatesDifferenceSlice.deserialize(reader);
  }

  if (id == 0xe317af7e) {
    return UpdatesTooLong.deserialize(reader);
  }

  if (id == 0x313bc7f8) {
    return UpdateShortMessage.deserialize(reader);
  }

  if (id == 0x4d6deea5) {
    return UpdateShortChatMessage.deserialize(reader);
  }

  if (id == 0x78d4dec1) {
    return UpdateShort.deserialize(reader);
  }

  if (id == 0x725b04c3) {
    return UpdatesCombined.deserialize(reader);
  }

  if (id == 0x74ae4240) {
    return Updates.deserialize(reader);
  }

  if (id == 0x8dca6aa5) {
    return PhotosPhotos.deserialize(reader);
  }

  if (id == 0x15051f54) {
    return PhotosPhotosSlice.deserialize(reader);
  }

  if (id == 0x20212ca8) {
    return PhotosPhoto.deserialize(reader);
  }

  if (id == 0x096a18d5) {
    return UploadFile.deserialize(reader);
  }

  if (id == 0x18b7a10d) {
    return DcOption.deserialize(reader);
  }

  if (id == 0xcc1a241e) {
    return Config.deserialize(reader);
  }

  if (id == 0x8e1a1775) {
    return NearestDc.deserialize(reader);
  }

  if (id == 0xccbbce30) {
    return HelpAppUpdate.deserialize(reader);
  }

  if (id == 0xc45a6536) {
    return HelpNoAppUpdate.deserialize(reader);
  }

  if (id == 0x18cb9f78) {
    return HelpInviteText.deserialize(reader);
  }

  if (id == 0x12bcbd9a) {
    return UpdateNewEncryptedMessage.deserialize(reader);
  }

  if (id == 0x1710f156) {
    return UpdateEncryptedChatTyping.deserialize(reader);
  }

  if (id == 0xb4a2e88d) {
    return UpdateEncryption.deserialize(reader);
  }

  if (id == 0x38fe25b7) {
    return UpdateEncryptedMessagesRead.deserialize(reader);
  }

  if (id == 0xab7ec0a0) {
    return EncryptedChatEmpty.deserialize(reader);
  }

  if (id == 0x66b25953) {
    return EncryptedChatWaiting.deserialize(reader);
  }

  if (id == 0x48f1d94c) {
    return EncryptedChatRequested.deserialize(reader);
  }

  if (id == 0x61f0d4c7) {
    return EncryptedChat.deserialize(reader);
  }

  if (id == 0x1e1c7c45) {
    return EncryptedChatDiscarded.deserialize(reader);
  }

  if (id == 0xf141b5e1) {
    return InputEncryptedChat.deserialize(reader);
  }

  if (id == 0xc21f497e) {
    return EncryptedFileEmpty.deserialize(reader);
  }

  if (id == 0xa8008cd8) {
    return EncryptedFile.deserialize(reader);
  }

  if (id == 0x1837c364) {
    return InputEncryptedFileEmpty.deserialize(reader);
  }

  if (id == 0x64bd0306) {
    return InputEncryptedFileUploaded.deserialize(reader);
  }

  if (id == 0x5a17b5e5) {
    return InputEncryptedFile.deserialize(reader);
  }

  if (id == 0xf5235d55) {
    return InputEncryptedFileLocation.deserialize(reader);
  }

  if (id == 0xed18c118) {
    return EncryptedMessage.deserialize(reader);
  }

  if (id == 0x23734b06) {
    return EncryptedMessageService.deserialize(reader);
  }

  if (id == 0xc0e24635) {
    return MessagesDhConfigNotModified.deserialize(reader);
  }

  if (id == 0x2c221edd) {
    return MessagesDhConfig.deserialize(reader);
  }

  if (id == 0x560f8935) {
    return MessagesSentEncryptedMessage.deserialize(reader);
  }

  if (id == 0x9493ff32) {
    return MessagesSentEncryptedFile.deserialize(reader);
  }

  if (id == 0xfa4f0bb5) {
    return InputFileBig.deserialize(reader);
  }

  if (id == 0x2dc173c8) {
    return InputEncryptedFileBigUploaded.deserialize(reader);
  }

  if (id == 0x3dda5451) {
    return UpdateChatParticipantAdd.deserialize(reader);
  }

  if (id == 0xe32f3d77) {
    return UpdateChatParticipantDelete.deserialize(reader);
  }

  if (id == 0x8e5e9873) {
    return UpdateDcOptions.deserialize(reader);
  }

  if (id == 0x5b38c6c1) {
    return InputMediaUploadedDocument.deserialize(reader);
  }

  if (id == 0x33473058) {
    return InputMediaDocument.deserialize(reader);
  }

  if (id == 0xdd570bd5) {
    return MessageMediaDocument.deserialize(reader);
  }

  if (id == 0x72f0eaae) {
    return InputDocumentEmpty.deserialize(reader);
  }

  if (id == 0x1abfb575) {
    return InputDocument.deserialize(reader);
  }

  if (id == 0xbad07584) {
    return InputDocumentFileLocation.deserialize(reader);
  }

  if (id == 0x36f8c871) {
    return DocumentEmpty.deserialize(reader);
  }

  if (id == 0x8fd4c4d8) {
    return Document.deserialize(reader);
  }

  if (id == 0x17c6b5f6) {
    return HelpSupport.deserialize(reader);
  }

  if (id == 0x9fd40bd8) {
    return NotifyPeer.deserialize(reader);
  }

  if (id == 0xb4c83b4c) {
    return NotifyUsers.deserialize(reader);
  }

  if (id == 0xc007cec3) {
    return NotifyChats.deserialize(reader);
  }

  if (id == 0xbec268ef) {
    return UpdateNotifySettings.deserialize(reader);
  }

  if (id == 0x16bf744e) {
    return SendMessageTypingAction.deserialize(reader);
  }

  if (id == 0xfd5ec8f5) {
    return SendMessageCancelAction.deserialize(reader);
  }

  if (id == 0xa187d66f) {
    return SendMessageRecordVideoAction.deserialize(reader);
  }

  if (id == 0xe9763aec) {
    return SendMessageUploadVideoAction.deserialize(reader);
  }

  if (id == 0xd52f73f7) {
    return SendMessageRecordAudioAction.deserialize(reader);
  }

  if (id == 0xf351d7ab) {
    return SendMessageUploadAudioAction.deserialize(reader);
  }

  if (id == 0xd1d34a26) {
    return SendMessageUploadPhotoAction.deserialize(reader);
  }

  if (id == 0xaa0cd9e4) {
    return SendMessageUploadDocumentAction.deserialize(reader);
  }

  if (id == 0x176f8ba1) {
    return SendMessageGeoLocationAction.deserialize(reader);
  }

  if (id == 0x628cbc6f) {
    return SendMessageChooseContactAction.deserialize(reader);
  }

  if (id == 0xb3134d9d) {
    return ContactsFound.deserialize(reader);
  }

  if (id == 0xebe46819) {
    return UpdateServiceNotification.deserialize(reader);
  }

  if (id == 0x7b197dc8) {
    return UserStatusRecently.deserialize(reader);
  }

  if (id == 0x541a1d1a) {
    return UserStatusLastWeek.deserialize(reader);
  }

  if (id == 0x65899777) {
    return UserStatusLastMonth.deserialize(reader);
  }

  if (id == 0xee3b272a) {
    return UpdatePrivacy.deserialize(reader);
  }

  if (id == 0x4f96cb18) {
    return InputPrivacyKeyStatusTimestamp.deserialize(reader);
  }

  if (id == 0xbc2eab30) {
    return PrivacyKeyStatusTimestamp.deserialize(reader);
  }

  if (id == 0x0d09e07b) {
    return InputPrivacyValueAllowContacts.deserialize(reader);
  }

  if (id == 0x184b35ce) {
    return InputPrivacyValueAllowAll.deserialize(reader);
  }

  if (id == 0x131cc67f) {
    return InputPrivacyValueAllowUsers.deserialize(reader);
  }

  if (id == 0x0ba52007) {
    return InputPrivacyValueDisallowContacts.deserialize(reader);
  }

  if (id == 0xd66b66c9) {
    return InputPrivacyValueDisallowAll.deserialize(reader);
  }

  if (id == 0x90110467) {
    return InputPrivacyValueDisallowUsers.deserialize(reader);
  }

  if (id == 0xfffe1bac) {
    return PrivacyValueAllowContacts.deserialize(reader);
  }

  if (id == 0x65427b82) {
    return PrivacyValueAllowAll.deserialize(reader);
  }

  if (id == 0xb8905fb2) {
    return PrivacyValueAllowUsers.deserialize(reader);
  }

  if (id == 0xf888fa1a) {
    return PrivacyValueDisallowContacts.deserialize(reader);
  }

  if (id == 0x8b73e763) {
    return PrivacyValueDisallowAll.deserialize(reader);
  }

  if (id == 0xe4621141) {
    return PrivacyValueDisallowUsers.deserialize(reader);
  }

  if (id == 0x50a04e45) {
    return AccountPrivacyRules.deserialize(reader);
  }

  if (id == 0xb8d0afdf) {
    return AccountDaysTTL.deserialize(reader);
  }

  if (id == 0x05492a13) {
    return UpdateUserPhone.deserialize(reader);
  }

  if (id == 0x6c37c15c) {
    return DocumentAttributeImageSize.deserialize(reader);
  }

  if (id == 0x11b58939) {
    return DocumentAttributeAnimated.deserialize(reader);
  }

  if (id == 0x6319d612) {
    return DocumentAttributeSticker.deserialize(reader);
  }

  if (id == 0x43c57c48) {
    return DocumentAttributeVideo.deserialize(reader);
  }

  if (id == 0x9852f9c6) {
    return DocumentAttributeAudio.deserialize(reader);
  }

  if (id == 0x15590068) {
    return DocumentAttributeFilename.deserialize(reader);
  }

  if (id == 0xf1749a22) {
    return MessagesStickersNotModified.deserialize(reader);
  }

  if (id == 0x30a6ec7e) {
    return MessagesStickers.deserialize(reader);
  }

  if (id == 0x12b299d4) {
    return StickerPack.deserialize(reader);
  }

  if (id == 0xe86602c3) {
    return MessagesAllStickersNotModified.deserialize(reader);
  }

  if (id == 0xcdbbcebb) {
    return MessagesAllStickers.deserialize(reader);
  }

  if (id == 0x9c974fdf) {
    return UpdateReadHistoryInbox.deserialize(reader);
  }

  if (id == 0x2f2f21bf) {
    return UpdateReadHistoryOutbox.deserialize(reader);
  }

  if (id == 0x84d19185) {
    return MessagesAffectedMessages.deserialize(reader);
  }

  if (id == 0x7f891213) {
    return UpdateWebPage.deserialize(reader);
  }

  if (id == 0x211a1788) {
    return WebPageEmpty.deserialize(reader);
  }

  if (id == 0xb0d13e47) {
    return WebPagePending.deserialize(reader);
  }

  if (id == 0xe89c45b2) {
    return WebPage.deserialize(reader);
  }

  if (id == 0xddf10c3b) {
    return MessageMediaWebPage.deserialize(reader);
  }

  if (id == 0xad01d61d) {
    return Authorization.deserialize(reader);
  }

  if (id == 0x4bff8ea0) {
    return AccountAuthorizations.deserialize(reader);
  }

  if (id == 0x957b50fb) {
    return AccountPassword.deserialize(reader);
  }

  if (id == 0x9a5c33e5) {
    return AccountPasswordSettings.deserialize(reader);
  }

  if (id == 0xc23727c9) {
    return AccountPasswordInputSettings.deserialize(reader);
  }

  if (id == 0x137948a5) {
    return AuthPasswordRecovery.deserialize(reader);
  }

  if (id == 0xc13d1c11) {
    return InputMediaVenue.deserialize(reader);
  }

  if (id == 0x2ec0533f) {
    return MessageMediaVenue.deserialize(reader);
  }

  if (id == 0xa384b779) {
    return ReceivedNotifyMessage.deserialize(reader);
  }

  if (id == 0xa22cbd96) {
    return ChatInviteExported.deserialize(reader);
  }

  if (id == 0x5a686d7c) {
    return ChatInviteAlready.deserialize(reader);
  }

  if (id == 0xfe65389d) {
    return ChatInvite.deserialize(reader);
  }

  if (id == 0x031224c3) {
    return MessageActionChatJoinedByLink.deserialize(reader);
  }

  if (id == 0xf8227181) {
    return UpdateReadMessagesContents.deserialize(reader);
  }

  if (id == 0xffb62b95) {
    return InputStickerSetEmpty.deserialize(reader);
  }

  if (id == 0x9de7a269) {
    return InputStickerSetID.deserialize(reader);
  }

  if (id == 0x861cc8a0) {
    return InputStickerSetShortName.deserialize(reader);
  }

  if (id == 0x2dd14edc) {
    return StickerSet.deserialize(reader);
  }

  if (id == 0x6e153f16) {
    return MessagesStickerSet.deserialize(reader);
  }

  if (id == 0x83314fca) {
    return User.deserialize(reader);
  }

  if (id == 0xc27ac8c7) {
    return BotCommand.deserialize(reader);
  }

  if (id == 0x36607333) {
    return BotInfo.deserialize(reader);
  }

  if (id == 0xa2fa4880) {
    return KeyboardButton.deserialize(reader);
  }

  if (id == 0x77608b83) {
    return KeyboardButtonRow.deserialize(reader);
  }

  if (id == 0xa03e5b85) {
    return ReplyKeyboardHide.deserialize(reader);
  }

  if (id == 0x86b40b08) {
    return ReplyKeyboardForceReply.deserialize(reader);
  }

  if (id == 0x85dd99d1) {
    return ReplyKeyboardMarkup.deserialize(reader);
  }

  if (id == 0xdde8a54c) {
    return InputPeerUser.deserialize(reader);
  }

  if (id == 0xf21158c6) {
    return InputUser.deserialize(reader);
  }

  if (id == 0xbb92ba95) {
    return MessageEntityUnknown.deserialize(reader);
  }

  if (id == 0xfa04579d) {
    return MessageEntityMention.deserialize(reader);
  }

  if (id == 0x6f635b0d) {
    return MessageEntityHashtag.deserialize(reader);
  }

  if (id == 0x6cef8ac7) {
    return MessageEntityBotCommand.deserialize(reader);
  }

  if (id == 0x6ed02538) {
    return MessageEntityUrl.deserialize(reader);
  }

  if (id == 0x64e475c2) {
    return MessageEntityEmail.deserialize(reader);
  }

  if (id == 0xbd610bc9) {
    return MessageEntityBold.deserialize(reader);
  }

  if (id == 0x826f8b60) {
    return MessageEntityItalic.deserialize(reader);
  }

  if (id == 0x28a20571) {
    return MessageEntityCode.deserialize(reader);
  }

  if (id == 0x73924be0) {
    return MessageEntityPre.deserialize(reader);
  }

  if (id == 0x76a6d327) {
    return MessageEntityTextUrl.deserialize(reader);
  }

  if (id == 0x9015e101) {
    return UpdateShortSentMessage.deserialize(reader);
  }

  if (id == 0xee8c1e86) {
    return InputChannelEmpty.deserialize(reader);
  }

  if (id == 0xf35aec28) {
    return InputChannel.deserialize(reader);
  }

  if (id == 0xa2a5371e) {
    return PeerChannel.deserialize(reader);
  }

  if (id == 0x27bcbbfc) {
    return InputPeerChannel.deserialize(reader);
  }

  if (id == 0xfe4478bd) {
    return Channel.deserialize(reader);
  }

  if (id == 0x17d493d5) {
    return ChannelForbidden.deserialize(reader);
  }

  if (id == 0x7f077ad9) {
    return ContactsResolvedPeer.deserialize(reader);
  }

  if (id == 0xbbab348d) {
    return ChannelFull.deserialize(reader);
  }

  if (id == 0x0ae30253) {
    return MessageRange.deserialize(reader);
  }

  if (id == 0xc776ba4e) {
    return MessagesChannelMessages.deserialize(reader);
  }

  if (id == 0x95d2ac92) {
    return MessageActionChannelCreate.deserialize(reader);
  }

  if (id == 0x108d941f) {
    return UpdateChannelTooLong.deserialize(reader);
  }

  if (id == 0x635b4c09) {
    return UpdateChannel.deserialize(reader);
  }

  if (id == 0x62ba04d9) {
    return UpdateNewChannelMessage.deserialize(reader);
  }

  if (id == 0x922e6e10) {
    return UpdateReadChannelInbox.deserialize(reader);
  }

  if (id == 0xc32d5b12) {
    return UpdateDeleteChannelMessages.deserialize(reader);
  }

  if (id == 0xf226ac08) {
    return UpdateChannelMessageViews.deserialize(reader);
  }

  if (id == 0x3e11affb) {
    return UpdatesChannelDifferenceEmpty.deserialize(reader);
  }

  if (id == 0xa4bcc6fe) {
    return UpdatesChannelDifferenceTooLong.deserialize(reader);
  }

  if (id == 0x2064674e) {
    return UpdatesChannelDifference.deserialize(reader);
  }

  if (id == 0x94d42ee7) {
    return ChannelMessagesFilterEmpty.deserialize(reader);
  }

  if (id == 0xcd77d957) {
    return ChannelMessagesFilter.deserialize(reader);
  }

  if (id == 0xcb397619) {
    return ChannelParticipant.deserialize(reader);
  }

  if (id == 0x4f607bef) {
    return ChannelParticipantSelf.deserialize(reader);
  }

  if (id == 0x2fe601d3) {
    return ChannelParticipantCreator.deserialize(reader);
  }

  if (id == 0xde3f3c79) {
    return ChannelParticipantsRecent.deserialize(reader);
  }

  if (id == 0xb4608969) {
    return ChannelParticipantsAdmins.deserialize(reader);
  }

  if (id == 0xa3b54985) {
    return ChannelParticipantsKicked.deserialize(reader);
  }

  if (id == 0x9ab0feaf) {
    return ChannelsChannelParticipants.deserialize(reader);
  }

  if (id == 0xdfb80317) {
    return ChannelsChannelParticipant.deserialize(reader);
  }

  if (id == 0xe46bcee4) {
    return ChatParticipantCreator.deserialize(reader);
  }

  if (id == 0xa0933f5b) {
    return ChatParticipantAdmin.deserialize(reader);
  }

  if (id == 0xd7ca61a2) {
    return UpdateChatParticipantAdmin.deserialize(reader);
  }

  if (id == 0xe1037f92) {
    return MessageActionChatMigrateTo.deserialize(reader);
  }

  if (id == 0xea3948e9) {
    return MessageActionChannelMigrateFrom.deserialize(reader);
  }

  if (id == 0xb0d1865b) {
    return ChannelParticipantsBots.deserialize(reader);
  }

  if (id == 0x780a0310) {
    return HelpTermsOfService.deserialize(reader);
  }

  if (id == 0x688a30aa) {
    return UpdateNewStickerSet.deserialize(reader);
  }

  if (id == 0x0bb2d201) {
    return UpdateStickerSetsOrder.deserialize(reader);
  }

  if (id == 0x31c24808) {
    return UpdateStickerSets.deserialize(reader);
  }

  if (id == 0xe8025ca2) {
    return MessagesSavedGifsNotModified.deserialize(reader);
  }

  if (id == 0x84a02a0d) {
    return MessagesSavedGifs.deserialize(reader);
  }

  if (id == 0x9375341e) {
    return UpdateSavedGifs.deserialize(reader);
  }

  if (id == 0x3380c786) {
    return InputBotInlineMessageMediaAuto.deserialize(reader);
  }

  if (id == 0x3dcd7a87) {
    return InputBotInlineMessageText.deserialize(reader);
  }

  if (id == 0x88bf9319) {
    return InputBotInlineResult.deserialize(reader);
  }

  if (id == 0x764cf810) {
    return BotInlineMessageMediaAuto.deserialize(reader);
  }

  if (id == 0x8c7f65e2) {
    return BotInlineMessageText.deserialize(reader);
  }

  if (id == 0x11965f3a) {
    return BotInlineResult.deserialize(reader);
  }

  if (id == 0xe021f2f6) {
    return MessagesBotResults.deserialize(reader);
  }

  if (id == 0x496f379c) {
    return UpdateBotInlineQuery.deserialize(reader);
  }

  if (id == 0x12f12a07) {
    return UpdateBotInlineSend.deserialize(reader);
  }

  if (id == 0x50f5c392) {
    return InputMessagesFilterVoice.deserialize(reader);
  }

  if (id == 0x3751b49e) {
    return InputMessagesFilterMusic.deserialize(reader);
  }

  if (id == 0xbdfb0426) {
    return InputPrivacyKeyChatInvite.deserialize(reader);
  }

  if (id == 0x500e6dfa) {
    return PrivacyKeyChatInvite.deserialize(reader);
  }

  if (id == 0x5dab1af4) {
    return ExportedMessageLink.deserialize(reader);
  }

  if (id == 0x4e4df4bb) {
    return MessageFwdHeader.deserialize(reader);
  }

  if (id == 0x1b3f4df7) {
    return UpdateEditChannelMessage.deserialize(reader);
  }

  if (id == 0x94bd38ed) {
    return MessageActionPinMessage.deserialize(reader);
  }

  if (id == 0x72a3158c) {
    return AuthCodeTypeSms.deserialize(reader);
  }

  if (id == 0x741cd3e3) {
    return AuthCodeTypeCall.deserialize(reader);
  }

  if (id == 0x226ccefb) {
    return AuthCodeTypeFlashCall.deserialize(reader);
  }

  if (id == 0x3dbb5986) {
    return AuthSentCodeTypeApp.deserialize(reader);
  }

  if (id == 0xc000bba2) {
    return AuthSentCodeTypeSms.deserialize(reader);
  }

  if (id == 0x5353e5a7) {
    return AuthSentCodeTypeCall.deserialize(reader);
  }

  if (id == 0xab03c6d9) {
    return AuthSentCodeTypeFlashCall.deserialize(reader);
  }

  if (id == 0x258aff05) {
    return KeyboardButtonUrl.deserialize(reader);
  }

  if (id == 0x35bbdb6b) {
    return KeyboardButtonCallback.deserialize(reader);
  }

  if (id == 0xb16a6c29) {
    return KeyboardButtonRequestPhone.deserialize(reader);
  }

  if (id == 0xfc796b3f) {
    return KeyboardButtonRequestGeoLocation.deserialize(reader);
  }

  if (id == 0x93b9fbb5) {
    return KeyboardButtonSwitchInline.deserialize(reader);
  }

  if (id == 0x48a30254) {
    return ReplyInlineMarkup.deserialize(reader);
  }

  if (id == 0x36585ea4) {
    return MessagesBotCallbackAnswer.deserialize(reader);
  }

  if (id == 0xb9cfc48d) {
    return UpdateBotCallbackQuery.deserialize(reader);
  }

  if (id == 0x26b5dde6) {
    return MessagesMessageEditData.deserialize(reader);
  }

  if (id == 0xe40370a3) {
    return UpdateEditMessage.deserialize(reader);
  }

  if (id == 0x96929a85) {
    return InputBotInlineMessageMediaGeo.deserialize(reader);
  }

  if (id == 0x417bbf11) {
    return InputBotInlineMessageMediaVenue.deserialize(reader);
  }

  if (id == 0xa6edbffd) {
    return InputBotInlineMessageMediaContact.deserialize(reader);
  }

  if (id == 0x051846fd) {
    return BotInlineMessageMediaGeo.deserialize(reader);
  }

  if (id == 0x8a86659c) {
    return BotInlineMessageMediaVenue.deserialize(reader);
  }

  if (id == 0x18d1cdc2) {
    return BotInlineMessageMediaContact.deserialize(reader);
  }

  if (id == 0xa8d864a7) {
    return InputBotInlineResultPhoto.deserialize(reader);
  }

  if (id == 0xfff8fdc4) {
    return InputBotInlineResultDocument.deserialize(reader);
  }

  if (id == 0x17db940b) {
    return BotInlineMediaResult.deserialize(reader);
  }

  if (id == 0x890c3d89) {
    return InputBotInlineMessageID.deserialize(reader);
  }

  if (id == 0x691e9052) {
    return UpdateInlineBotCallbackQuery.deserialize(reader);
  }

  if (id == 0x3c20629f) {
    return InlineBotSwitchPM.deserialize(reader);
  }

  if (id == 0x3371c354) {
    return MessagesPeerDialogs.deserialize(reader);
  }

  if (id == 0xedcdc05b) {
    return TopPeer.deserialize(reader);
  }

  if (id == 0xab661b5b) {
    return TopPeerCategoryBotsPM.deserialize(reader);
  }

  if (id == 0x148677e2) {
    return TopPeerCategoryBotsInline.deserialize(reader);
  }

  if (id == 0x0637b7ed) {
    return TopPeerCategoryCorrespondents.deserialize(reader);
  }

  if (id == 0xbd17a14a) {
    return TopPeerCategoryGroups.deserialize(reader);
  }

  if (id == 0x161d9628) {
    return TopPeerCategoryChannels.deserialize(reader);
  }

  if (id == 0xfb834291) {
    return TopPeerCategoryPeers.deserialize(reader);
  }

  if (id == 0xde266ef5) {
    return ContactsTopPeersNotModified.deserialize(reader);
  }

  if (id == 0x70b772a8) {
    return ContactsTopPeers.deserialize(reader);
  }

  if (id == 0xdc7b1140) {
    return MessageEntityMentionName.deserialize(reader);
  }

  if (id == 0x208e68c9) {
    return InputMessageEntityMentionName.deserialize(reader);
  }

  if (id == 0x3a20ecb8) {
    return InputMessagesFilterChatPhotos.deserialize(reader);
  }

  if (id == 0xb75f99a9) {
    return UpdateReadChannelOutbox.deserialize(reader);
  }

  if (id == 0x1b49ec6d) {
    return UpdateDraftMessage.deserialize(reader);
  }

  if (id == 0x1b0c841a) {
    return DraftMessageEmpty.deserialize(reader);
  }

  if (id == 0x2d65321f) {
    return DraftMessage.deserialize(reader);
  }

  if (id == 0x9fbab604) {
    return MessageActionHistoryClear.deserialize(reader);
  }

  if (id == 0xc6dc0c66) {
    return MessagesFeaturedStickersNotModified.deserialize(reader);
  }

  if (id == 0xbe382906) {
    return MessagesFeaturedStickers.deserialize(reader);
  }

  if (id == 0x571d2742) {
    return UpdateReadFeaturedStickers.deserialize(reader);
  }

  if (id == 0x0b17f890) {
    return MessagesRecentStickersNotModified.deserialize(reader);
  }

  if (id == 0x88d37c56) {
    return MessagesRecentStickers.deserialize(reader);
  }

  if (id == 0x9a422c20) {
    return UpdateRecentStickers.deserialize(reader);
  }

  if (id == 0x4fcba9c8) {
    return MessagesArchivedStickers.deserialize(reader);
  }

  if (id == 0x38641628) {
    return MessagesStickerSetInstallResultSuccess.deserialize(reader);
  }

  if (id == 0x35e410a8) {
    return MessagesStickerSetInstallResultArchive.deserialize(reader);
  }

  if (id == 0x6410a5d2) {
    return StickerSetCovered.deserialize(reader);
  }

  if (id == 0xa229dd06) {
    return UpdateConfig.deserialize(reader);
  }

  if (id == 0x3354678f) {
    return UpdatePtsChanged.deserialize(reader);
  }

  if (id == 0xe5bbfe1a) {
    return InputMediaPhotoExternal.deserialize(reader);
  }

  if (id == 0xfb52dc99) {
    return InputMediaDocumentExternal.deserialize(reader);
  }

  if (id == 0x3407e51b) {
    return StickerSetMultiCovered.deserialize(reader);
  }

  if (id == 0xaed6dbb2) {
    return MaskCoords.deserialize(reader);
  }

  if (id == 0x9801d2f7) {
    return DocumentAttributeHasStickers.deserialize(reader);
  }

  if (id == 0x4a992157) {
    return InputStickeredMediaPhoto.deserialize(reader);
  }

  if (id == 0x0438865b) {
    return InputStickeredMediaDocument.deserialize(reader);
  }

  if (id == 0xbdf9653b) {
    return Game.deserialize(reader);
  }

  if (id == 0x4fa417f2) {
    return InputBotInlineResultGame.deserialize(reader);
  }

  if (id == 0x4b425864) {
    return InputBotInlineMessageGame.deserialize(reader);
  }

  if (id == 0xfdb19008) {
    return MessageMediaGame.deserialize(reader);
  }

  if (id == 0xd33f43f3) {
    return InputMediaGame.deserialize(reader);
  }

  if (id == 0x032c3e77) {
    return InputGameID.deserialize(reader);
  }

  if (id == 0xc331e80a) {
    return InputGameShortName.deserialize(reader);
  }

  if (id == 0x50f41ccf) {
    return KeyboardButtonGame.deserialize(reader);
  }

  if (id == 0x92a72876) {
    return MessageActionGameScore.deserialize(reader);
  }

  if (id == 0x73a379eb) {
    return HighScore.deserialize(reader);
  }

  if (id == 0x9a3bfd99) {
    return MessagesHighScores.deserialize(reader);
  }

  if (id == 0x4afe8f6d) {
    return UpdatesDifferenceTooLong.deserialize(reader);
  }

  if (id == 0x2f2ba99f) {
    return UpdateChannelWebPage.deserialize(reader);
  }

  if (id == 0x9cd81144) {
    return MessagesChatsSlice.deserialize(reader);
  }

  if (id == 0xdc3d824f) {
    return TextEmpty.deserialize(reader);
  }

  if (id == 0x744694e0) {
    return TextPlain.deserialize(reader);
  }

  if (id == 0x6724abc4) {
    return TextBold.deserialize(reader);
  }

  if (id == 0xd912a59c) {
    return TextItalic.deserialize(reader);
  }

  if (id == 0xc12622c4) {
    return TextUnderline.deserialize(reader);
  }

  if (id == 0x9bf8bb95) {
    return TextStrike.deserialize(reader);
  }

  if (id == 0x6c3f19b9) {
    return TextFixed.deserialize(reader);
  }

  if (id == 0x3c2884c1) {
    return TextUrl.deserialize(reader);
  }

  if (id == 0xde5a0dd6) {
    return TextEmail.deserialize(reader);
  }

  if (id == 0x7e6260d7) {
    return TextConcat.deserialize(reader);
  }

  if (id == 0x13567e8a) {
    return PageBlockUnsupported.deserialize(reader);
  }

  if (id == 0x70abc3fd) {
    return PageBlockTitle.deserialize(reader);
  }

  if (id == 0x8ffa9a1f) {
    return PageBlockSubtitle.deserialize(reader);
  }

  if (id == 0xbaafe5e0) {
    return PageBlockAuthorDate.deserialize(reader);
  }

  if (id == 0xbfd064ec) {
    return PageBlockHeader.deserialize(reader);
  }

  if (id == 0xf12bb6e1) {
    return PageBlockSubheader.deserialize(reader);
  }

  if (id == 0x467a0766) {
    return PageBlockParagraph.deserialize(reader);
  }

  if (id == 0xc070d93e) {
    return PageBlockPreformatted.deserialize(reader);
  }

  if (id == 0x48870999) {
    return PageBlockFooter.deserialize(reader);
  }

  if (id == 0xdb20b188) {
    return PageBlockDivider.deserialize(reader);
  }

  if (id == 0xce0d37b0) {
    return PageBlockAnchor.deserialize(reader);
  }

  if (id == 0xe4e88011) {
    return PageBlockList.deserialize(reader);
  }

  if (id == 0x263d7c26) {
    return PageBlockBlockquote.deserialize(reader);
  }

  if (id == 0x4f4456d3) {
    return PageBlockPullquote.deserialize(reader);
  }

  if (id == 0x1759c560) {
    return PageBlockPhoto.deserialize(reader);
  }

  if (id == 0x7c8fe7b6) {
    return PageBlockVideo.deserialize(reader);
  }

  if (id == 0x39f23300) {
    return PageBlockCover.deserialize(reader);
  }

  if (id == 0xa8718dc5) {
    return PageBlockEmbed.deserialize(reader);
  }

  if (id == 0xf259a80b) {
    return PageBlockEmbedPost.deserialize(reader);
  }

  if (id == 0x65a0fa4d) {
    return PageBlockCollage.deserialize(reader);
  }

  if (id == 0x031f9590) {
    return PageBlockSlideshow.deserialize(reader);
  }

  if (id == 0x7311ca11) {
    return WebPageNotModified.deserialize(reader);
  }

  if (id == 0xfabadc5f) {
    return InputPrivacyKeyPhoneCall.deserialize(reader);
  }

  if (id == 0x3d662b7b) {
    return PrivacyKeyPhoneCall.deserialize(reader);
  }

  if (id == 0xdd6a8f48) {
    return SendMessageGamePlayAction.deserialize(reader);
  }

  if (id == 0x85e42301) {
    return PhoneCallDiscardReasonMissed.deserialize(reader);
  }

  if (id == 0xe095c1a0) {
    return PhoneCallDiscardReasonDisconnect.deserialize(reader);
  }

  if (id == 0x57adc690) {
    return PhoneCallDiscardReasonHangup.deserialize(reader);
  }

  if (id == 0xfaf7e8c9) {
    return PhoneCallDiscardReasonBusy.deserialize(reader);
  }

  if (id == 0x6e6fe51c) {
    return UpdateDialogPinned.deserialize(reader);
  }

  if (id == 0xfa0f3ca2) {
    return UpdatePinnedDialogs.deserialize(reader);
  }

  if (id == 0x7d748d04) {
    return DataJSON.deserialize(reader);
  }

  if (id == 0x8317c0c3) {
    return UpdateBotWebhookJSON.deserialize(reader);
  }

  if (id == 0x9b9240a6) {
    return UpdateBotWebhookJSONQuery.deserialize(reader);
  }

  if (id == 0xcb296bf8) {
    return LabeledPrice.deserialize(reader);
  }

  if (id == 0x049ee584) {
    return Invoice.deserialize(reader);
  }

  if (id == 0x405fef0d) {
    return InputMediaInvoice.deserialize(reader);
  }

  if (id == 0xea02c27e) {
    return PaymentCharge.deserialize(reader);
  }

  if (id == 0xffa00ccc) {
    return MessageActionPaymentSentMe.deserialize(reader);
  }

  if (id == 0xf6a548d3) {
    return MessageMediaInvoice.deserialize(reader);
  }

  if (id == 0x1e8caaeb) {
    return PostAddress.deserialize(reader);
  }

  if (id == 0x909c3f94) {
    return PaymentRequestedInfo.deserialize(reader);
  }

  if (id == 0xafd93fbb) {
    return KeyboardButtonBuy.deserialize(reader);
  }

  if (id == 0xc624b16e) {
    return MessageActionPaymentSent.deserialize(reader);
  }

  if (id == 0xcdc27a1f) {
    return PaymentSavedCredentialsCard.deserialize(reader);
  }

  if (id == 0x1c570ed1) {
    return WebDocument.deserialize(reader);
  }

  if (id == 0x9bed434d) {
    return InputWebDocument.deserialize(reader);
  }

  if (id == 0xc239d686) {
    return InputWebFileLocation.deserialize(reader);
  }

  if (id == 0x21e753bc) {
    return UploadWebFile.deserialize(reader);
  }

  if (id == 0xa0058751) {
    return PaymentsPaymentForm.deserialize(reader);
  }

  if (id == 0xd1451883) {
    return PaymentsValidatedRequestedInfo.deserialize(reader);
  }

  if (id == 0x4e5f810d) {
    return PaymentsPaymentResult.deserialize(reader);
  }

  if (id == 0x70c4fe03) {
    return PaymentsPaymentReceipt.deserialize(reader);
  }

  if (id == 0xfb8fe43c) {
    return PaymentsSavedInfo.deserialize(reader);
  }

  if (id == 0xc10eb2cf) {
    return InputPaymentCredentialsSaved.deserialize(reader);
  }

  if (id == 0x3417d728) {
    return InputPaymentCredentials.deserialize(reader);
  }

  if (id == 0xdb64fd34) {
    return AccountTmpPassword.deserialize(reader);
  }

  if (id == 0xb6213cdf) {
    return ShippingOption.deserialize(reader);
  }

  if (id == 0xb5aefd7d) {
    return UpdateBotShippingQuery.deserialize(reader);
  }

  if (id == 0x8caa9a96) {
    return UpdateBotPrecheckoutQuery.deserialize(reader);
  }

  if (id == 0x32da9e9c) {
    return InputStickerSetItem.deserialize(reader);
  }

  if (id == 0xab0f6b1e) {
    return UpdatePhoneCall.deserialize(reader);
  }

  if (id == 0x1e36fded) {
    return InputPhoneCall.deserialize(reader);
  }

  if (id == 0x5366c915) {
    return PhoneCallEmpty.deserialize(reader);
  }

  if (id == 0xc5226f17) {
    return PhoneCallWaiting.deserialize(reader);
  }

  if (id == 0x14b0ed0c) {
    return PhoneCallRequested.deserialize(reader);
  }

  if (id == 0x3660c311) {
    return PhoneCallAccepted.deserialize(reader);
  }

  if (id == 0x30535af5) {
    return PhoneCall.deserialize(reader);
  }

  if (id == 0x50ca4de1) {
    return PhoneCallDiscarded.deserialize(reader);
  }

  if (id == 0x9cc123c7) {
    return PhoneConnection.deserialize(reader);
  }

  if (id == 0xfc878fc8) {
    return PhoneCallProtocol.deserialize(reader);
  }

  if (id == 0xec82e140) {
    return PhonePhoneCall.deserialize(reader);
  }

  if (id == 0x80c99768) {
    return InputMessagesFilterPhoneCalls.deserialize(reader);
  }

  if (id == 0x80e11a7f) {
    return MessageActionPhoneCall.deserialize(reader);
  }

  if (id == 0x7a7c17a4) {
    return InputMessagesFilterRoundVoice.deserialize(reader);
  }

  if (id == 0xb549da53) {
    return InputMessagesFilterRoundVideo.deserialize(reader);
  }

  if (id == 0x88f27fbc) {
    return SendMessageRecordRoundAction.deserialize(reader);
  }

  if (id == 0x243e1c66) {
    return SendMessageUploadRoundAction.deserialize(reader);
  }

  if (id == 0xf18cda44) {
    return UploadFileCdnRedirect.deserialize(reader);
  }

  if (id == 0xeea8e46e) {
    return UploadCdnFileReuploadNeeded.deserialize(reader);
  }

  if (id == 0xa99fca4f) {
    return UploadCdnFile.deserialize(reader);
  }

  if (id == 0xc982eaba) {
    return CdnPublicKey.deserialize(reader);
  }

  if (id == 0x5725e40a) {
    return CdnConfig.deserialize(reader);
  }

  if (id == 0xef1751b5) {
    return PageBlockChannel.deserialize(reader);
  }

  if (id == 0xcad181f6) {
    return LangPackString.deserialize(reader);
  }

  if (id == 0x6c47ac9f) {
    return LangPackStringPluralized.deserialize(reader);
  }

  if (id == 0x2979eeb2) {
    return LangPackStringDeleted.deserialize(reader);
  }

  if (id == 0xf385c1f6) {
    return LangPackDifference.deserialize(reader);
  }

  if (id == 0xeeca5ce3) {
    return LangPackLanguage.deserialize(reader);
  }

  if (id == 0x46560264) {
    return UpdateLangPackTooLong.deserialize(reader);
  }

  if (id == 0x56022f4d) {
    return UpdateLangPack.deserialize(reader);
  }

  if (id == 0x34c3bb53) {
    return ChannelParticipantAdmin.deserialize(reader);
  }

  if (id == 0x6df8014e) {
    return ChannelParticipantBanned.deserialize(reader);
  }

  if (id == 0x1427a5e1) {
    return ChannelParticipantsBanned.deserialize(reader);
  }

  if (id == 0x0656ac4b) {
    return ChannelParticipantsSearch.deserialize(reader);
  }

  if (id == 0xe6dfb825) {
    return ChannelAdminLogEventActionChangeTitle.deserialize(reader);
  }

  if (id == 0x55188a2e) {
    return ChannelAdminLogEventActionChangeAbout.deserialize(reader);
  }

  if (id == 0x6a4afc38) {
    return ChannelAdminLogEventActionChangeUsername.deserialize(reader);
  }

  if (id == 0x434bd2af) {
    return ChannelAdminLogEventActionChangePhoto.deserialize(reader);
  }

  if (id == 0x1b7907ae) {
    return ChannelAdminLogEventActionToggleInvites.deserialize(reader);
  }

  if (id == 0x26ae0971) {
    return ChannelAdminLogEventActionToggleSignatures.deserialize(reader);
  }

  if (id == 0xe9e82c18) {
    return ChannelAdminLogEventActionUpdatePinned.deserialize(reader);
  }

  if (id == 0x709b2405) {
    return ChannelAdminLogEventActionEditMessage.deserialize(reader);
  }

  if (id == 0x42e047bb) {
    return ChannelAdminLogEventActionDeleteMessage.deserialize(reader);
  }

  if (id == 0x183040d3) {
    return ChannelAdminLogEventActionParticipantJoin.deserialize(reader);
  }

  if (id == 0xf89777f2) {
    return ChannelAdminLogEventActionParticipantLeave.deserialize(reader);
  }

  if (id == 0xe31c34d8) {
    return ChannelAdminLogEventActionParticipantInvite.deserialize(reader);
  }

  if (id == 0xe6d83d7e) {
    return ChannelAdminLogEventActionParticipantToggleBan.deserialize(reader);
  }

  if (id == 0xd5676710) {
    return ChannelAdminLogEventActionParticipantToggleAdmin.deserialize(reader);
  }

  if (id == 0x1fad68cd) {
    return ChannelAdminLogEvent.deserialize(reader);
  }

  if (id == 0xed8af74d) {
    return ChannelsAdminLogResults.deserialize(reader);
  }

  if (id == 0xea107ae4) {
    return ChannelAdminLogEventsFilter.deserialize(reader);
  }

  if (id == 0x1e76a78c) {
    return TopPeerCategoryPhoneCalls.deserialize(reader);
  }

  if (id == 0x804361ea) {
    return PageBlockAudio.deserialize(reader);
  }

  if (id == 0x5ce14175) {
    return PopularContact.deserialize(reader);
  }

  if (id == 0x4792929b) {
    return MessageActionScreenshotTaken.deserialize(reader);
  }

  if (id == 0x9e8fa6d3) {
    return MessagesFavedStickersNotModified.deserialize(reader);
  }

  if (id == 0x2cb51097) {
    return MessagesFavedStickers.deserialize(reader);
  }

  if (id == 0xe511996d) {
    return UpdateFavedStickers.deserialize(reader);
  }

  if (id == 0xea29055d) {
    return UpdateChannelReadMessagesContents.deserialize(reader);
  }

  if (id == 0xc1f8e69a) {
    return InputMessagesFilterMyMentions.deserialize(reader);
  }

  if (id == 0x7084a7be) {
    return UpdateContactsReset.deserialize(reader);
  }

  if (id == 0xb1c3caa7) {
    return ChannelAdminLogEventActionChangeStickerSet.deserialize(reader);
  }

  if (id == 0xfae69f56) {
    return MessageActionCustomAction.deserialize(reader);
  }

  if (id == 0x0aa1c39f) {
    return InputPaymentCredentialsApplePay.deserialize(reader);
  }

  if (id == 0xe7026d0d) {
    return InputMessagesFilterGeo.deserialize(reader);
  }

  if (id == 0xe062db83) {
    return InputMessagesFilterContacts.deserialize(reader);
  }

  if (id == 0xb23fc698) {
    return UpdateChannelAvailableMessages.deserialize(reader);
  }

  if (id == 0x5f5c95f1) {
    return ChannelAdminLogEventActionTogglePreHistoryHidden.deserialize(reader);
  }

  if (id == 0x971fa843) {
    return InputMediaGeoLive.deserialize(reader);
  }

  if (id == 0xb940c666) {
    return MessageMediaGeoLive.deserialize(reader);
  }

  if (id == 0x46e1d13d) {
    return RecentMeUrlUnknown.deserialize(reader);
  }

  if (id == 0xb92c09e2) {
    return RecentMeUrlUser.deserialize(reader);
  }

  if (id == 0xb2da71d2) {
    return RecentMeUrlChat.deserialize(reader);
  }

  if (id == 0xeb49081d) {
    return RecentMeUrlChatInvite.deserialize(reader);
  }

  if (id == 0xbc0a57dc) {
    return RecentMeUrlStickerSet.deserialize(reader);
  }

  if (id == 0x0e0310d7) {
    return HelpRecentMeUrls.deserialize(reader);
  }

  if (id == 0xf0173fe9) {
    return ChannelsChannelParticipantsNotModified.deserialize(reader);
  }

  if (id == 0x74535f21) {
    return MessagesMessagesNotModified.deserialize(reader);
  }

  if (id == 0x1cc6e91f) {
    return InputSingleMedia.deserialize(reader);
  }

  if (id == 0xa6f8f452) {
    return WebAuthorization.deserialize(reader);
  }

  if (id == 0xed56c9fc) {
    return AccountWebAuthorizations.deserialize(reader);
  }

  if (id == 0xa676a322) {
    return InputMessageID.deserialize(reader);
  }

  if (id == 0xbad88395) {
    return InputMessageReplyTo.deserialize(reader);
  }

  if (id == 0x86872538) {
    return InputMessagePinned.deserialize(reader);
  }

  if (id == 0x9b69e34b) {
    return MessageEntityPhone.deserialize(reader);
  }

  if (id == 0x4c4e743f) {
    return MessageEntityCashtag.deserialize(reader);
  }

  if (id == 0xc516d679) {
    return MessageActionBotAllowed.deserialize(reader);
  }

  if (id == 0xfcaafeb7) {
    return InputDialogPeer.deserialize(reader);
  }

  if (id == 0xe56dbf05) {
    return DialogPeer.deserialize(reader);
  }

  if (id == 0x0d54b65d) {
    return MessagesFoundStickerSetsNotModified.deserialize(reader);
  }

  if (id == 0x8af09dd2) {
    return MessagesFoundStickerSets.deserialize(reader);
  }

  if (id == 0xf39b035c) {
    return FileHash.deserialize(reader);
  }

  if (id == 0xf9c8bcc6) {
    return WebDocumentNoProxy.deserialize(reader);
  }

  if (id == 0x75588b3f) {
    return InputClientProxy.deserialize(reader);
  }

  if (id == 0xe3309f7f) {
    return HelpTermsOfServiceUpdateEmpty.deserialize(reader);
  }

  if (id == 0x28ecf961) {
    return HelpTermsOfServiceUpdate.deserialize(reader);
  }

  if (id == 0x3334b0f0) {
    return InputSecureFileUploaded.deserialize(reader);
  }

  if (id == 0x5367e5be) {
    return InputSecureFile.deserialize(reader);
  }

  if (id == 0xcbc7ee28) {
    return InputSecureFileLocation.deserialize(reader);
  }

  if (id == 0x64199744) {
    return SecureFileEmpty.deserialize(reader);
  }

  if (id == 0x7d09c27e) {
    return SecureFile.deserialize(reader);
  }

  if (id == 0x8aeabec3) {
    return SecureData.deserialize(reader);
  }

  if (id == 0x7d6099dd) {
    return SecurePlainPhone.deserialize(reader);
  }

  if (id == 0x21ec5a5f) {
    return SecurePlainEmail.deserialize(reader);
  }

  if (id == 0x9d2a81e3) {
    return SecureValueTypePersonalDetails.deserialize(reader);
  }

  if (id == 0x3dac6a00) {
    return SecureValueTypePassport.deserialize(reader);
  }

  if (id == 0x06e425c4) {
    return SecureValueTypeDriverLicense.deserialize(reader);
  }

  if (id == 0xa0d0744b) {
    return SecureValueTypeIdentityCard.deserialize(reader);
  }

  if (id == 0x99a48f23) {
    return SecureValueTypeInternalPassport.deserialize(reader);
  }

  if (id == 0xcbe31e26) {
    return SecureValueTypeAddress.deserialize(reader);
  }

  if (id == 0xfc36954e) {
    return SecureValueTypeUtilityBill.deserialize(reader);
  }

  if (id == 0x89137c0d) {
    return SecureValueTypeBankStatement.deserialize(reader);
  }

  if (id == 0x8b883488) {
    return SecureValueTypeRentalAgreement.deserialize(reader);
  }

  if (id == 0x99e3806a) {
    return SecureValueTypePassportRegistration.deserialize(reader);
  }

  if (id == 0xea02ec33) {
    return SecureValueTypeTemporaryRegistration.deserialize(reader);
  }

  if (id == 0xb320aadb) {
    return SecureValueTypePhone.deserialize(reader);
  }

  if (id == 0x8e3ca7ee) {
    return SecureValueTypeEmail.deserialize(reader);
  }

  if (id == 0x187fa0ca) {
    return SecureValue.deserialize(reader);
  }

  if (id == 0xdb21d0a7) {
    return InputSecureValue.deserialize(reader);
  }

  if (id == 0xed1ecdb0) {
    return SecureValueHash.deserialize(reader);
  }

  if (id == 0xe8a40bd9) {
    return SecureValueErrorData.deserialize(reader);
  }

  if (id == 0x00be3dfa) {
    return SecureValueErrorFrontSide.deserialize(reader);
  }

  if (id == 0x868a2aa5) {
    return SecureValueErrorReverseSide.deserialize(reader);
  }

  if (id == 0xe537ced6) {
    return SecureValueErrorSelfie.deserialize(reader);
  }

  if (id == 0x7a700873) {
    return SecureValueErrorFile.deserialize(reader);
  }

  if (id == 0x666220e9) {
    return SecureValueErrorFiles.deserialize(reader);
  }

  if (id == 0x33f0ea47) {
    return SecureCredentialsEncrypted.deserialize(reader);
  }

  if (id == 0xad2e1cd8) {
    return AccountAuthorizationForm.deserialize(reader);
  }

  if (id == 0x811f854f) {
    return AccountSentEmailCode.deserialize(reader);
  }

  if (id == 0x1b287353) {
    return MessageActionSecureValuesSentMe.deserialize(reader);
  }

  if (id == 0xd95c6154) {
    return MessageActionSecureValuesSent.deserialize(reader);
  }

  if (id == 0x66afa166) {
    return HelpDeepLinkInfoEmpty.deserialize(reader);
  }

  if (id == 0x6a4ee832) {
    return HelpDeepLinkInfo.deserialize(reader);
  }

  if (id == 0x1142bd56) {
    return SavedPhoneContact.deserialize(reader);
  }

  if (id == 0x4dba4501) {
    return AccountTakeout.deserialize(reader);
  }

  if (id == 0x29be5899) {
    return InputTakeoutFileLocation.deserialize(reader);
  }

  if (id == 0xe16459c3) {
    return UpdateDialogUnreadMark.deserialize(reader);
  }

  if (id == 0xf0e3e596) {
    return MessagesDialogsNotModified.deserialize(reader);
  }

  if (id == 0x9f2221c9) {
    return InputWebFileGeoPointLocation.deserialize(reader);
  }

  if (id == 0xb52c939d) {
    return ContactsTopPeersDisabled.deserialize(reader);
  }

  if (id == 0x9b89f93a) {
    return InputReportReasonCopyright.deserialize(reader);
  }

  if (id == 0xd45ab096) {
    return PasswordKdfAlgoUnknown.deserialize(reader);
  }

  if (id == 0x004a8537) {
    return SecurePasswordKdfAlgoUnknown.deserialize(reader);
  }

  if (id == 0xbbf2dda0) {
    return SecurePasswordKdfAlgoPBKDF2HMACSHA512iter100000.deserialize(reader);
  }

  if (id == 0x86471d92) {
    return SecurePasswordKdfAlgoSHA512.deserialize(reader);
  }

  if (id == 0x1527bcac) {
    return SecureSecretSettings.deserialize(reader);
  }

  if (id == 0x3a912d4a) {
    return PasswordKdfAlgoSHA256SHA256PBKDF2HMACSHA512iter100000SHA256ModPow
        .deserialize(reader);
  }

  if (id == 0x9880f658) {
    return InputCheckPasswordEmpty.deserialize(reader);
  }

  if (id == 0xd27ff082) {
    return InputCheckPasswordSRP.deserialize(reader);
  }

  if (id == 0x869d758f) {
    return SecureValueError.deserialize(reader);
  }

  if (id == 0xa1144770) {
    return SecureValueErrorTranslationFile.deserialize(reader);
  }

  if (id == 0x34636dd8) {
    return SecureValueErrorTranslationFiles.deserialize(reader);
  }

  if (id == 0x829d99da) {
    return SecureRequiredType.deserialize(reader);
  }

  if (id == 0x027477b4) {
    return SecureRequiredTypeOneOf.deserialize(reader);
  }

  if (id == 0xbfb9f457) {
    return HelpPassportConfigNotModified.deserialize(reader);
  }

  if (id == 0xa098d6af) {
    return HelpPassportConfig.deserialize(reader);
  }

  if (id == 0x1d1b1245) {
    return InputAppEvent.deserialize(reader);
  }

  if (id == 0xc0de1bd9) {
    return JsonObjectValue.deserialize(reader);
  }

  if (id == 0x3f6d7b68) {
    return JsonNull.deserialize(reader);
  }

  if (id == 0xc7345e6a) {
    return JsonBool.deserialize(reader);
  }

  if (id == 0x2be0dfa4) {
    return JsonNumber.deserialize(reader);
  }

  if (id == 0xb71e767a) {
    return JsonString.deserialize(reader);
  }

  if (id == 0xf7444763) {
    return JsonArray.deserialize(reader);
  }

  if (id == 0x99c1d49d) {
    return JsonObject.deserialize(reader);
  }

  if (id == 0xb1db7c7e) {
    return InputNotifyBroadcasts.deserialize(reader);
  }

  if (id == 0xd612e8ef) {
    return NotifyBroadcasts.deserialize(reader);
  }

  if (id == 0xed6a8504) {
    return TextSubscript.deserialize(reader);
  }

  if (id == 0xc7fb5e01) {
    return TextSuperscript.deserialize(reader);
  }

  if (id == 0x034b8621) {
    return TextMarked.deserialize(reader);
  }

  if (id == 0x1ccb966a) {
    return TextPhone.deserialize(reader);
  }

  if (id == 0x081ccf4f) {
    return TextImage.deserialize(reader);
  }

  if (id == 0x1e148390) {
    return PageBlockKicker.deserialize(reader);
  }

  if (id == 0x34566b6a) {
    return PageTableCell.deserialize(reader);
  }

  if (id == 0xe0c0c5e5) {
    return PageTableRow.deserialize(reader);
  }

  if (id == 0xbf4dea82) {
    return PageBlockTable.deserialize(reader);
  }

  if (id == 0x6f747657) {
    return PageCaption.deserialize(reader);
  }

  if (id == 0xb92fb6cd) {
    return PageListItemText.deserialize(reader);
  }

  if (id == 0x25e073fc) {
    return PageListItemBlocks.deserialize(reader);
  }

  if (id == 0x5e068047) {
    return PageListOrderedItemText.deserialize(reader);
  }

  if (id == 0x98dd8936) {
    return PageListOrderedItemBlocks.deserialize(reader);
  }

  if (id == 0x9a8ae1e1) {
    return PageBlockOrderedList.deserialize(reader);
  }

  if (id == 0x76768bed) {
    return PageBlockDetails.deserialize(reader);
  }

  if (id == 0xb390dc08) {
    return PageRelatedArticle.deserialize(reader);
  }

  if (id == 0x16115a96) {
    return PageBlockRelatedArticles.deserialize(reader);
  }

  if (id == 0xa44f3ef6) {
    return PageBlockMap.deserialize(reader);
  }

  if (id == 0x98657f0d) {
    return Page.deserialize(reader);
  }

  if (id == 0xdb9e70d2) {
    return InputPrivacyKeyPhoneP2P.deserialize(reader);
  }

  if (id == 0x39491cc8) {
    return PrivacyKeyPhoneP2P.deserialize(reader);
  }

  if (id == 0x35553762) {
    return TextAnchor.deserialize(reader);
  }

  if (id == 0x8c05f1c9) {
    return HelpSupportName.deserialize(reader);
  }

  if (id == 0xf3ae2eed) {
    return HelpUserInfoEmpty.deserialize(reader);
  }

  if (id == 0x01eb3758) {
    return HelpUserInfo.deserialize(reader);
  }

  if (id == 0xf3f25f76) {
    return MessageActionContactSignUp.deserialize(reader);
  }

  if (id == 0xaca1657b) {
    return UpdateMessagePoll.deserialize(reader);
  }

  if (id == 0xff16e2ca) {
    return PollAnswer.deserialize(reader);
  }

  if (id == 0x58747131) {
    return Poll.deserialize(reader);
  }

  if (id == 0x3b6ddad2) {
    return PollAnswerVoters.deserialize(reader);
  }

  if (id == 0x7adf2420) {
    return PollResults.deserialize(reader);
  }

  if (id == 0x0f94e5f1) {
    return InputMediaPoll.deserialize(reader);
  }

  if (id == 0x4bd6e798) {
    return MessageMediaPoll.deserialize(reader);
  }

  if (id == 0xf041e250) {
    return ChatOnlines.deserialize(reader);
  }

  if (id == 0x47a971e0) {
    return StatsURL.deserialize(reader);
  }

  if (id == 0xe0b0bc2e) {
    return PhotoStrippedSize.deserialize(reader);
  }

  if (id == 0x5fb224d5) {
    return ChatAdminRights.deserialize(reader);
  }

  if (id == 0x9f120418) {
    return ChatBannedRights.deserialize(reader);
  }

  if (id == 0x54c01850) {
    return UpdateChatDefaultBannedRights.deserialize(reader);
  }

  if (id == 0xe630b979) {
    return InputWallPaper.deserialize(reader);
  }

  if (id == 0x72091c80) {
    return InputWallPaperSlug.deserialize(reader);
  }

  if (id == 0xbb6ae88d) {
    return ChannelParticipantsContacts.deserialize(reader);
  }

  if (id == 0x2df5fc0a) {
    return ChannelAdminLogEventActionDefaultBannedRights.deserialize(reader);
  }

  if (id == 0x8f079643) {
    return ChannelAdminLogEventActionStopPoll.deserialize(reader);
  }

  if (id == 0x1c199183) {
    return AccountWallPapersNotModified.deserialize(reader);
  }

  if (id == 0xcdc3858c) {
    return AccountWallPapers.deserialize(reader);
  }

  if (id == 0xad253d78) {
    return CodeSettings.deserialize(reader);
  }

  if (id == 0x372efcd0) {
    return WallPaperSettings.deserialize(reader);
  }

  if (id == 0xbaa57628) {
    return AutoDownloadSettings.deserialize(reader);
  }

  if (id == 0x63cacf26) {
    return AccountAutoDownloadSettings.deserialize(reader);
  }

  if (id == 0xd5b3b9f9) {
    return EmojiKeyword.deserialize(reader);
  }

  if (id == 0x236df622) {
    return EmojiKeywordDeleted.deserialize(reader);
  }

  if (id == 0x5cc761bd) {
    return EmojiKeywordsDifference.deserialize(reader);
  }

  if (id == 0xa575739d) {
    return EmojiURL.deserialize(reader);
  }

  if (id == 0xb3fb5361) {
    return EmojiLanguage.deserialize(reader);
  }

  if (id == 0xa4dd4c08) {
    return InputPrivacyKeyForwards.deserialize(reader);
  }

  if (id == 0x69ec56a3) {
    return PrivacyKeyForwards.deserialize(reader);
  }

  if (id == 0x5719bacc) {
    return InputPrivacyKeyProfilePhoto.deserialize(reader);
  }

  if (id == 0x96151fed) {
    return PrivacyKeyProfilePhoto.deserialize(reader);
  }

  if (id == 0x40181ffe) {
    return InputPhotoFileLocation.deserialize(reader);
  }

  if (id == 0xd83466f3) {
    return InputPhotoLegacyFileLocation.deserialize(reader);
  }

  if (id == 0x37257e99) {
    return InputPeerPhotoFileLocation.deserialize(reader);
  }

  if (id == 0x9d84f3db) {
    return InputStickerSetThumb.deserialize(reader);
  }

  if (id == 0xff544e65) {
    return Folder.deserialize(reader);
  }

  if (id == 0x71bd134c) {
    return DialogFolder.deserialize(reader);
  }

  if (id == 0x64600527) {
    return InputDialogPeerFolder.deserialize(reader);
  }

  if (id == 0x514519e2) {
    return DialogPeerFolder.deserialize(reader);
  }

  if (id == 0xfbd2c296) {
    return InputFolderPeer.deserialize(reader);
  }

  if (id == 0xe9baa668) {
    return FolderPeer.deserialize(reader);
  }

  if (id == 0x19360dc0) {
    return UpdateFolderPeers.deserialize(reader);
  }

  if (id == 0x1da448e2) {
    return InputUserFromMessage.deserialize(reader);
  }

  if (id == 0x5b934f9d) {
    return InputChannelFromMessage.deserialize(reader);
  }

  if (id == 0xa87b0a1c) {
    return InputPeerUserFromMessage.deserialize(reader);
  }

  if (id == 0xbd2a0840) {
    return InputPeerChannelFromMessage.deserialize(reader);
  }

  if (id == 0x0352dafa) {
    return InputPrivacyKeyPhoneNumber.deserialize(reader);
  }

  if (id == 0xd19ae46d) {
    return PrivacyKeyPhoneNumber.deserialize(reader);
  }

  if (id == 0xa8406ca9) {
    return TopPeerCategoryForwardUsers.deserialize(reader);
  }

  if (id == 0xfbeec0f0) {
    return TopPeerCategoryForwardChats.deserialize(reader);
  }

  if (id == 0x050c7ac8) {
    return ChannelAdminLogEventActionChangeLinkedChat.deserialize(reader);
  }

  if (id == 0xe844ebff) {
    return MessagesSearchCounter.deserialize(reader);
  }

  if (id == 0x10b78d29) {
    return KeyboardButtonUrlAuth.deserialize(reader);
  }

  if (id == 0xd02e7fd4) {
    return InputKeyboardButtonUrlAuth.deserialize(reader);
  }

  if (id == 0x92d33a0e) {
    return UrlAuthResultRequest.deserialize(reader);
  }

  if (id == 0x8f8c0e4e) {
    return UrlAuthResultAccepted.deserialize(reader);
  }

  if (id == 0xa9d6db1f) {
    return UrlAuthResultDefault.deserialize(reader);
  }

  if (id == 0x840649cf) {
    return InputPrivacyValueAllowChatParticipants.deserialize(reader);
  }

  if (id == 0xe94f0f86) {
    return InputPrivacyValueDisallowChatParticipants.deserialize(reader);
  }

  if (id == 0x6b134e8e) {
    return PrivacyValueAllowChatParticipants.deserialize(reader);
  }

  if (id == 0x41c87565) {
    return PrivacyValueDisallowChatParticipants.deserialize(reader);
  }

  if (id == 0x9c4e7e8b) {
    return MessageEntityUnderline.deserialize(reader);
  }

  if (id == 0xbf0693d4) {
    return MessageEntityStrike.deserialize(reader);
  }

  if (id == 0x6a7e7366) {
    return UpdatePeerSettings.deserialize(reader);
  }

  if (id == 0xbfb5ad8b) {
    return ChannelLocationEmpty.deserialize(reader);
  }

  if (id == 0x209b82db) {
    return ChannelLocation.deserialize(reader);
  }

  if (id == 0xca461b5d) {
    return PeerLocated.deserialize(reader);
  }

  if (id == 0xb4afcfb0) {
    return UpdatePeerLocated.deserialize(reader);
  }

  if (id == 0x0e6b76ae) {
    return ChannelAdminLogEventActionChangeLocation.deserialize(reader);
  }

  if (id == 0xdbd4feed) {
    return InputReportReasonGeoIrrelevant.deserialize(reader);
  }

  if (id == 0x53909779) {
    return ChannelAdminLogEventActionToggleSlowMode.deserialize(reader);
  }

  if (id == 0x44747e9a) {
    return AuthAuthorizationSignUpRequired.deserialize(reader);
  }

  if (id == 0xd8411139) {
    return PaymentsPaymentVerificationNeeded.deserialize(reader);
  }

  if (id == 0x028703c8) {
    return InputStickerSetAnimatedEmoji.deserialize(reader);
  }

  if (id == 0x39a51dfb) {
    return UpdateNewScheduledMessage.deserialize(reader);
  }

  if (id == 0xf2a71983) {
    return UpdateDeleteScheduledMessages.deserialize(reader);
  }

  if (id == 0xd072acb4) {
    return RestrictionReason.deserialize(reader);
  }

  if (id == 0x3c5693e9) {
    return InputTheme.deserialize(reader);
  }

  if (id == 0xf5890df1) {
    return InputThemeSlug.deserialize(reader);
  }

  if (id == 0xa00e67d6) {
    return Theme.deserialize(reader);
  }

  if (id == 0xf41eb622) {
    return AccountThemesNotModified.deserialize(reader);
  }

  if (id == 0x9a3d8c6d) {
    return AccountThemes.deserialize(reader);
  }

  if (id == 0x8216fba3) {
    return UpdateTheme.deserialize(reader);
  }

  if (id == 0xd1219bdd) {
    return InputPrivacyKeyAddedByPhone.deserialize(reader);
  }

  if (id == 0x42ffd42b) {
    return PrivacyKeyAddedByPhone.deserialize(reader);
  }

  if (id == 0x871fb939) {
    return UpdateGeoLiveViewed.deserialize(reader);
  }

  if (id == 0x564fe691) {
    return UpdateLoginToken.deserialize(reader);
  }

  if (id == 0x629f1980) {
    return AuthLoginToken.deserialize(reader);
  }

  if (id == 0x068e9916) {
    return AuthLoginTokenMigrateTo.deserialize(reader);
  }

  if (id == 0x390d5c5e) {
    return AuthLoginTokenSuccess.deserialize(reader);
  }

  if (id == 0x57e28221) {
    return AccountContentSettings.deserialize(reader);
  }

  if (id == 0xa927fec5) {
    return MessagesInactiveChats.deserialize(reader);
  }

  if (id == 0xc3a12462) {
    return BaseThemeClassic.deserialize(reader);
  }

  if (id == 0xfbd81688) {
    return BaseThemeDay.deserialize(reader);
  }

  if (id == 0xb7b31ea8) {
    return BaseThemeNight.deserialize(reader);
  }

  if (id == 0x6d5f77ee) {
    return BaseThemeTinted.deserialize(reader);
  }

  if (id == 0x5b11125a) {
    return BaseThemeArctic.deserialize(reader);
  }

  if (id == 0x967a462e) {
    return InputWallPaperNoFile.deserialize(reader);
  }

  if (id == 0xe0804116) {
    return WallPaperNoFile.deserialize(reader);
  }

  if (id == 0x8fde504f) {
    return InputThemeSettings.deserialize(reader);
  }

  if (id == 0xfa58b6d4) {
    return ThemeSettings.deserialize(reader);
  }

  if (id == 0x54b56617) {
    return WebPageAttributeTheme.deserialize(reader);
  }

  if (id == 0x24f40e77) {
    return UpdateMessagePollVote.deserialize(reader);
  }

  if (id == 0x4899484e) {
    return MessagesVotesList.deserialize(reader);
  }

  if (id == 0xbbc7515d) {
    return KeyboardButtonRequestPoll.deserialize(reader);
  }

  if (id == 0x761e6af4) {
    return MessageEntityBankCard.deserialize(reader);
  }

  if (id == 0xf568028a) {
    return BankCardOpenUrl.deserialize(reader);
  }

  if (id == 0x3e24e573) {
    return PaymentsBankCardData.deserialize(reader);
  }

  if (id == 0xf8ec284b) {
    return PeerSelfLocated.deserialize(reader);
  }

  if (id == 0x5fb5523b) {
    return DialogFilter.deserialize(reader);
  }

  if (id == 0x77744d4a) {
    return DialogFilterSuggested.deserialize(reader);
  }

  if (id == 0x26ffde7d) {
    return UpdateDialogFilter.deserialize(reader);
  }

  if (id == 0xa5d72105) {
    return UpdateDialogFilterOrder.deserialize(reader);
  }

  if (id == 0x3504914f) {
    return UpdateDialogFilters.deserialize(reader);
  }

  if (id == 0xb637edaf) {
    return StatsDateRangeDays.deserialize(reader);
  }

  if (id == 0xcb43acde) {
    return StatsAbsValueAndPrev.deserialize(reader);
  }

  if (id == 0xcbce2fe0) {
    return StatsPercentValue.deserialize(reader);
  }

  if (id == 0x4a27eb2d) {
    return StatsGraphAsync.deserialize(reader);
  }

  if (id == 0xbedc9822) {
    return StatsGraphError.deserialize(reader);
  }

  if (id == 0x8ea464b6) {
    return StatsGraph.deserialize(reader);
  }

  if (id == 0x396ca5fc) {
    return StatsBroadcastStats.deserialize(reader);
  }

  if (id == 0xe66fbf7b) {
    return InputMediaDice.deserialize(reader);
  }

  if (id == 0x3f7ee58b) {
    return MessageMediaDice.deserialize(reader);
  }

  if (id == 0xe67f520e) {
    return InputStickerSetDice.deserialize(reader);
  }

  if (id == 0x98f6ac75) {
    return HelpPromoDataEmpty.deserialize(reader);
  }

  if (id == 0x8c39793f) {
    return HelpPromoData.deserialize(reader);
  }

  if (id == 0xde33b094) {
    return VideoSize.deserialize(reader);
  }

  if (id == 0x2661bf09) {
    return UpdatePhoneCallSignalingData.deserialize(reader);
  }

  if (id == 0x61695cb0) {
    return ChatInvitePeek.deserialize(reader);
  }

  if (id == 0x9d04af9b) {
    return StatsGroupTopPoster.deserialize(reader);
  }

  if (id == 0xd7584c87) {
    return StatsGroupTopAdmin.deserialize(reader);
  }

  if (id == 0x535f779d) {
    return StatsGroupTopInviter.deserialize(reader);
  }

  if (id == 0xef7ff916) {
    return StatsMegagroupStats.deserialize(reader);
  }

  if (id == 0x734c4ccb) {
    return GlobalPrivacySettings.deserialize(reader);
  }

  if (id == 0x635fe375) {
    return PhoneConnectionWebrtc.deserialize(reader);
  }

  if (id == 0x4203c5ef) {
    return HelpCountryCode.deserialize(reader);
  }

  if (id == 0xc3878e23) {
    return HelpCountry.deserialize(reader);
  }

  if (id == 0x93cc1f32) {
    return HelpCountriesListNotModified.deserialize(reader);
  }

  if (id == 0x87d0759e) {
    return HelpCountriesList.deserialize(reader);
  }

  if (id == 0x455b853d) {
    return MessageViews.deserialize(reader);
  }

  if (id == 0xd29a27f4) {
    return UpdateChannelMessageForwards.deserialize(reader);
  }

  if (id == 0xfa3efb95) {
    return PhotoSizeProgressive.deserialize(reader);
  }

  if (id == 0xb6c4f543) {
    return MessagesMessageViews.deserialize(reader);
  }

  if (id == 0xd6b19546) {
    return UpdateReadChannelDiscussionInbox.deserialize(reader);
  }

  if (id == 0x695c9e7c) {
    return UpdateReadChannelDiscussionOutbox.deserialize(reader);
  }

  if (id == 0xa6341782) {
    return MessagesDiscussionMessage.deserialize(reader);
  }

  if (id == 0xafbc09db) {
    return MessageReplyHeader.deserialize(reader);
  }

  if (id == 0x83d60fc2) {
    return MessageReplies.deserialize(reader);
  }

  if (id == 0xebe07752) {
    return UpdatePeerBlocked.deserialize(reader);
  }

  if (id == 0xe8fd8014) {
    return PeerBlocked.deserialize(reader);
  }

  if (id == 0x8c88c923) {
    return UpdateChannelUserTyping.deserialize(reader);
  }

  if (id == 0xacfa1a7e) {
    return InputMessageCallbackQuery.deserialize(reader);
  }

  if (id == 0x1b03f006) {
    return ChannelParticipantLeft.deserialize(reader);
  }

  if (id == 0xe04b5ceb) {
    return ChannelParticipantsMentions.deserialize(reader);
  }

  if (id == 0xed85eab5) {
    return UpdatePinnedMessages.deserialize(reader);
  }

  if (id == 0x5bb98608) {
    return UpdatePinnedChannelMessages.deserialize(reader);
  }

  if (id == 0x1bb00451) {
    return InputMessagesFilterPinned.deserialize(reader);
  }

  if (id == 0x7fe91c14) {
    return StatsMessageStats.deserialize(reader);
  }

  if (id == 0x98e0d697) {
    return MessageActionGeoProximityReached.deserialize(reader);
  }

  if (id == 0xd8214d41) {
    return PhotoPathSize.deserialize(reader);
  }

  if (id == 0xd92c2285) {
    return SpeakingInGroupCallAction.deserialize(reader);
  }

  if (id == 0x7780bcb4) {
    return GroupCallDiscarded.deserialize(reader);
  }

  if (id == 0xd597650c) {
    return GroupCall.deserialize(reader);
  }

  if (id == 0xd8aa840f) {
    return InputGroupCall.deserialize(reader);
  }

  if (id == 0x7a0d7f42) {
    return MessageActionGroupCall.deserialize(reader);
  }

  if (id == 0x502f92f7) {
    return MessageActionInviteToGroupCall.deserialize(reader);
  }

  if (id == 0xeba636fe) {
    return GroupCallParticipant.deserialize(reader);
  }

  if (id == 0xf89a6a4e) {
    return UpdateChat.deserialize(reader);
  }

  if (id == 0xf2ebdb4e) {
    return UpdateGroupCallParticipants.deserialize(reader);
  }

  if (id == 0x14b24500) {
    return UpdateGroupCall.deserialize(reader);
  }

  if (id == 0x9e727aad) {
    return PhoneGroupCall.deserialize(reader);
  }

  if (id == 0xf47751b6) {
    return PhoneGroupParticipants.deserialize(reader);
  }

  if (id == 0x3081ed9d) {
    return InlineQueryPeerTypeSameBotPM.deserialize(reader);
  }

  if (id == 0x833c0fac) {
    return InlineQueryPeerTypePM.deserialize(reader);
  }

  if (id == 0xd766c50a) {
    return InlineQueryPeerTypeChat.deserialize(reader);
  }

  if (id == 0x5ec4be43) {
    return InlineQueryPeerTypeMegagroup.deserialize(reader);
  }

  if (id == 0x6334ee9a) {
    return InlineQueryPeerTypeBroadcast.deserialize(reader);
  }

  if (id == 0x23209745) {
    return ChannelAdminLogEventActionStartGroupCall.deserialize(reader);
  }

  if (id == 0xdb9f9140) {
    return ChannelAdminLogEventActionDiscardGroupCall.deserialize(reader);
  }

  if (id == 0xf92424d2) {
    return ChannelAdminLogEventActionParticipantMute.deserialize(reader);
  }

  if (id == 0xe64429c0) {
    return ChannelAdminLogEventActionParticipantUnmute.deserialize(reader);
  }

  if (id == 0x56d6a247) {
    return ChannelAdminLogEventActionToggleGroupCallSetting.deserialize(reader);
  }

  if (id == 0x8ac32801) {
    return InputPaymentCredentialsGooglePay.deserialize(reader);
  }

  if (id == 0x1662af0b) {
    return MessagesHistoryImport.deserialize(reader);
  }

  if (id == 0xdbda9246) {
    return SendMessageHistoryImportAction.deserialize(reader);
  }

  if (id == 0x5e0fb7b9) {
    return MessagesHistoryImportParsed.deserialize(reader);
  }

  if (id == 0xf5ddd6e7) {
    return InputReportReasonFake.deserialize(reader);
  }

  if (id == 0xef8d3e6c) {
    return MessagesAffectedFoundMessages.deserialize(reader);
  }

  if (id == 0x3c134d7b) {
    return MessageActionSetMessagesTTL.deserialize(reader);
  }

  if (id == 0xbb9bb9a5) {
    return UpdatePeerHistoryTTL.deserialize(reader);
  }

  if (id == 0xd087663a) {
    return UpdateChatParticipant.deserialize(reader);
  }

  if (id == 0x985d3abb) {
    return UpdateChannelParticipant.deserialize(reader);
  }

  if (id == 0xc4870a49) {
    return UpdateBotStopped.deserialize(reader);
  }

  if (id == 0x8c5adfd9) {
    return ChatInviteImporter.deserialize(reader);
  }

  if (id == 0xbdc62dcc) {
    return MessagesExportedChatInvites.deserialize(reader);
  }

  if (id == 0x1871be50) {
    return MessagesExportedChatInvite.deserialize(reader);
  }

  if (id == 0x222600ef) {
    return MessagesExportedChatInviteReplaced.deserialize(reader);
  }

  if (id == 0x81b6b00a) {
    return MessagesChatInviteImporters.deserialize(reader);
  }

  if (id == 0xf2ecef23) {
    return ChatAdminWithInvites.deserialize(reader);
  }

  if (id == 0xb69b72d7) {
    return MessagesChatAdminsWithInvites.deserialize(reader);
  }

  if (id == 0xfe9fc158) {
    return ChannelAdminLogEventActionParticipantJoinByInvite.deserialize(
        reader);
  }

  if (id == 0x5a50fca4) {
    return ChannelAdminLogEventActionExportedInviteDelete.deserialize(reader);
  }

  if (id == 0x410a134e) {
    return ChannelAdminLogEventActionExportedInviteRevoke.deserialize(reader);
  }

  if (id == 0xe90ebb59) {
    return ChannelAdminLogEventActionExportedInviteEdit.deserialize(reader);
  }

  if (id == 0x3e7f6847) {
    return ChannelAdminLogEventActionParticipantVolume.deserialize(reader);
  }

  if (id == 0x6e941a38) {
    return ChannelAdminLogEventActionChangeHistoryTTL.deserialize(reader);
  }

  if (id == 0xa24de717) {
    return MessagesCheckedHistoryImportPeer.deserialize(reader);
  }

  if (id == 0x0598a92a) {
    return InputGroupCallStream.deserialize(reader);
  }

  if (id == 0xafe5623f) {
    return PhoneJoinAsPeers.deserialize(reader);
  }

  if (id == 0x204bd158) {
    return PhoneExportedGroupCallInvite.deserialize(reader);
  }

  if (id == 0xd7e78225) {
    return InputBotInlineMessageMediaInvoice.deserialize(reader);
  }

  if (id == 0x354a9b09) {
    return BotInlineMessageMediaInvoice.deserialize(reader);
  }

  if (id == 0xb3a07661) {
    return MessageActionGroupCallScheduled.deserialize(reader);
  }

  if (id == 0xdcb118b7) {
    return GroupCallParticipantVideoSourceGroup.deserialize(reader);
  }

  if (id == 0x67753ac8) {
    return GroupCallParticipantVideo.deserialize(reader);
  }

  if (id == 0x0b783982) {
    return UpdateGroupCallConnection.deserialize(reader);
  }

  if (id == 0x85fea03f) {
    return StickersSuggestedShortName.deserialize(reader);
  }

  if (id == 0x2f6cb2ab) {
    return BotCommandScopeDefault.deserialize(reader);
  }

  if (id == 0x3c4f04d8) {
    return BotCommandScopeUsers.deserialize(reader);
  }

  if (id == 0x6fe1a881) {
    return BotCommandScopeChats.deserialize(reader);
  }

  if (id == 0xb9aa606a) {
    return BotCommandScopeChatAdmins.deserialize(reader);
  }

  if (id == 0xdb9d897d) {
    return BotCommandScopePeer.deserialize(reader);
  }

  if (id == 0x3fd863d1) {
    return BotCommandScopePeerAdmins.deserialize(reader);
  }

  if (id == 0x0a1321f3) {
    return BotCommandScopePeerUser.deserialize(reader);
  }

  if (id == 0xe3779861) {
    return AccountResetPasswordFailedWait.deserialize(reader);
  }

  if (id == 0xe9effc7d) {
    return AccountResetPasswordRequestedWait.deserialize(reader);
  }

  if (id == 0xe926d63e) {
    return AccountResetPasswordOk.deserialize(reader);
  }

  if (id == 0x4d712f2e) {
    return UpdateBotCommands.deserialize(reader);
  }

  if (id == 0xaa786345) {
    return MessageActionSetChatTheme.deserialize(reader);
  }

  if (id == 0xb05ac6b1) {
    return SendMessageChooseStickerAction.deserialize(reader);
  }

  if (id == 0x4d93a990) {
    return SponsoredMessage.deserialize(reader);
  }

  if (id == 0xc9ee1d87) {
    return MessagesSponsoredMessages.deserialize(reader);
  }

  if (id == 0x0cde3739) {
    return InputStickerSetAnimatedEmojiAnimations.deserialize(reader);
  }

  if (id == 0x25972bcb) {
    return SendMessageEmojiInteraction.deserialize(reader);
  }

  if (id == 0xb665902e) {
    return SendMessageEmojiInteractionSeen.deserialize(reader);
  }

  if (id == 0xb6d915d7) {
    return InputBotInlineMessageID64.deserialize(reader);
  }

  if (id == 0xc9b0539f) {
    return SearchResultsCalendarPeriod.deserialize(reader);
  }

  if (id == 0x147ee23c) {
    return MessagesSearchResultsCalendar.deserialize(reader);
  }

  if (id == 0x7f648b67) {
    return SearchResultPosition.deserialize(reader);
  }

  if (id == 0x53b22baf) {
    return MessagesSearchResultsPositions.deserialize(reader);
  }

  if (id == 0xebbca3cb) {
    return MessageActionChatJoinedByRequest.deserialize(reader);
  }

  if (id == 0x7063c3db) {
    return UpdatePendingJoinRequests.deserialize(reader);
  }

  if (id == 0x11dfa986) {
    return UpdateBotChatInviteRequester.deserialize(reader);
  }

  if (id == 0xafb6144a) {
    return ChannelAdminLogEventActionParticipantJoinByRequest.deserialize(
        reader);
  }

  if (id == 0xe988037b) {
    return InputKeyboardButtonUserProfile.deserialize(reader);
  }

  if (id == 0x308660c1) {
    return KeyboardButtonUserProfile.deserialize(reader);
  }

  if (id == 0xf496b0c6) {
    return ChannelsSendAsPeers.deserialize(reader);
  }

  if (id == 0xcb2ac766) {
    return ChannelAdminLogEventActionToggleNoForwards.deserialize(reader);
  }

  if (id == 0xd3f924eb) {
    return MessagesStickerSetNotModified.deserialize(reader);
  }

  if (id == 0x3b6d152e) {
    return UsersUserFull.deserialize(reader);
  }

  if (id == 0x6880b94d) {
    return MessagesPeerSettings.deserialize(reader);
  }

  if (id == 0x278f2868) {
    return ChannelAdminLogEventActionSendMessage.deserialize(reader);
  }

  if (id == 0xd61ad6ee) {
    return AuthCodeTypeMissedCall.deserialize(reader);
  }

  if (id == 0x82006484) {
    return AuthSentCodeTypeMissedCall.deserialize(reader);
  }

  if (id == 0xc3a2835f) {
    return AuthLoggedOut.deserialize(reader);
  }

  if (id == 0x5e1b3cb8) {
    return UpdateMessageReactions.deserialize(reader);
  }

  if (id == 0xa3d1cb80) {
    return ReactionCount.deserialize(reader);
  }

  if (id == 0x0a339f0b) {
    return MessageReactions.deserialize(reader);
  }

  if (id == 0x31bd492d) {
    return MessagesMessageReactionsList.deserialize(reader);
  }

  if (id == 0xc077ec01) {
    return AvailableReaction.deserialize(reader);
  }

  if (id == 0x9f071957) {
    return MessagesAvailableReactionsNotModified.deserialize(reader);
  }

  if (id == 0x768e3aad) {
    return MessagesAvailableReactions.deserialize(reader);
  }

  if (id == 0x32ca960f) {
    return MessageEntitySpoiler.deserialize(reader);
  }

  if (id == 0xbe4e0ef8) {
    return ChannelAdminLogEventActionChangeAvailableReactions.deserialize(
        reader);
  }

  if (id == 0x8c79b63c) {
    return MessagePeerReaction.deserialize(reader);
  }

  if (id == 0x80eb48af) {
    return GroupCallStreamChannel.deserialize(reader);
  }

  if (id == 0xd0e482b2) {
    return PhoneGroupCallStreamChannels.deserialize(reader);
  }

  if (id == 0x0a8eb2be) {
    return InputReportReasonIllegalDrugs.deserialize(reader);
  }

  if (id == 0x9ec7863d) {
    return InputReportReasonPersonalDetails.deserialize(reader);
  }

  if (id == 0x2dbf3432) {
    return PhoneGroupCallStreamRtmpUrl.deserialize(reader);
  }

  if (id == 0x4576f3f0) {
    return AttachMenuBotIconColor.deserialize(reader);
  }

  if (id == 0xb2a7386b) {
    return AttachMenuBotIcon.deserialize(reader);
  }

  if (id == 0xd90d8dfe) {
    return AttachMenuBot.deserialize(reader);
  }

  if (id == 0xf1d88a5c) {
    return AttachMenuBotsNotModified.deserialize(reader);
  }

  if (id == 0x3c4301c0) {
    return AttachMenuBots.deserialize(reader);
  }

  if (id == 0x93bf667f) {
    return AttachMenuBotsBot.deserialize(reader);
  }

  if (id == 0x17b7a20b) {
    return UpdateAttachMenuBots.deserialize(reader);
  }

  if (id == 0x4d22ff98) {
    return WebViewResultUrl.deserialize(reader);
  }

  if (id == 0x0c94511c) {
    return WebViewMessageSent.deserialize(reader);
  }

  if (id == 0x1592b79d) {
    return UpdateWebViewResultSent.deserialize(reader);
  }

  if (id == 0x13767230) {
    return KeyboardButtonWebView.deserialize(reader);
  }

  if (id == 0xa0c0505c) {
    return KeyboardButtonSimpleWebView.deserialize(reader);
  }

  if (id == 0x47dd8079) {
    return MessageActionWebViewDataSentMe.deserialize(reader);
  }

  if (id == 0xb4c38cb5) {
    return MessageActionWebViewDataSent.deserialize(reader);
  }

  if (id == 0x14b85813) {
    return UpdateBotMenuButton.deserialize(reader);
  }

  if (id == 0x7533a588) {
    return BotMenuButtonDefault.deserialize(reader);
  }

  if (id == 0x4258c205) {
    return BotMenuButtonCommands.deserialize(reader);
  }

  if (id == 0xc7b57ce6) {
    return BotMenuButton.deserialize(reader);
  }

  if (id == 0xfbf6e8b1) {
    return AccountSavedRingtonesNotModified.deserialize(reader);
  }

  if (id == 0xc1e92cc5) {
    return AccountSavedRingtones.deserialize(reader);
  }

  if (id == 0x74d8be99) {
    return UpdateSavedRingtones.deserialize(reader);
  }

  if (id == 0x97e8bebe) {
    return NotificationSoundDefault.deserialize(reader);
  }

  if (id == 0x6f0c34df) {
    return NotificationSoundNone.deserialize(reader);
  }

  if (id == 0x830b9ae4) {
    return NotificationSoundLocal.deserialize(reader);
  }

  if (id == 0xff6c8049) {
    return NotificationSoundRingtone.deserialize(reader);
  }

  if (id == 0xb7263f6d) {
    return AccountSavedRingtone.deserialize(reader);
  }

  if (id == 0x1f307eb7) {
    return AccountSavedRingtoneConverted.deserialize(reader);
  }

  if (id == 0x7d6be90e) {
    return AttachMenuPeerTypeSameBotPM.deserialize(reader);
  }

  if (id == 0xc32bfa1a) {
    return AttachMenuPeerTypeBotPM.deserialize(reader);
  }

  if (id == 0xf146d31f) {
    return AttachMenuPeerTypePM.deserialize(reader);
  }

  if (id == 0x0509113f) {
    return AttachMenuPeerTypeChat.deserialize(reader);
  }

  if (id == 0x7bfbdefc) {
    return AttachMenuPeerTypeBroadcast.deserialize(reader);
  }

  if (id == 0xed107ab7) {
    return ChatInvitePublicJoinRequests.deserialize(reader);
  }

  if (id == 0xc5b56859) {
    return InputInvoiceMessage.deserialize(reader);
  }

  if (id == 0xc326caef) {
    return InputInvoiceSlug.deserialize(reader);
  }

  if (id == 0xaed0cbd9) {
    return PaymentsExportedInvoice.deserialize(reader);
  }

  if (id == 0x0084cd5a) {
    return UpdateTranscribedAudio.deserialize(reader);
  }

  if (id == 0xcfb9d957) {
    return MessagesTranscribedAudio.deserialize(reader);
  }

  if (id == 0x363293ae) {
    return DialogFilterDefault.deserialize(reader);
  }

  if (id == 0x5334759c) {
    return HelpPremiumPromo.deserialize(reader);
  }

  if (id == 0xc8cf05f8) {
    return MessageEntityCustomEmoji.deserialize(reader);
  }

  if (id == 0xfd149899) {
    return DocumentAttributeCustomEmoji.deserialize(reader);
  }

  if (id == 0x40d13c0e) {
    return StickerSetFullCovered.deserialize(reader);
  }

  if (id == 0xa6751e66) {
    return InputStorePaymentPremiumSubscription.deserialize(reader);
  }

  if (id == 0x616f7fe8) {
    return InputStorePaymentGiftPremium.deserialize(reader);
  }

  if (id == 0x6c6274fa) {
    return MessageActionGiftPremium.deserialize(reader);
  }

  if (id == 0x74c34319) {
    return PremiumGiftOption.deserialize(reader);
  }

  if (id == 0xc88b3b02) {
    return InputStickerSetPremiumGifts.deserialize(reader);
  }

  if (id == 0xfb4c496c) {
    return UpdateReadFeaturedEmojiStickers.deserialize(reader);
  }

  if (id == 0xaee69d68) {
    return InputPrivacyKeyVoiceMessages.deserialize(reader);
  }

  if (id == 0x0697f414) {
    return PrivacyKeyVoiceMessages.deserialize(reader);
  }

  if (id == 0x88f8f21b) {
    return PaymentFormMethod.deserialize(reader);
  }

  if (id == 0xf46fe924) {
    return InputWebFileAudioAlbumThumbLocation.deserialize(reader);
  }

  if (id == 0x2de11aae) {
    return EmojiStatusEmpty.deserialize(reader);
  }

  if (id == 0x929b619d) {
    return EmojiStatus.deserialize(reader);
  }

  if (id == 0xfa30a8c7) {
    return EmojiStatusUntil.deserialize(reader);
  }

  if (id == 0x28373599) {
    return UpdateUserEmojiStatus.deserialize(reader);
  }

  if (id == 0x30f443db) {
    return UpdateRecentEmojiStatuses.deserialize(reader);
  }

  if (id == 0xd08ce645) {
    return AccountEmojiStatusesNotModified.deserialize(reader);
  }

  if (id == 0x90c467d1) {
    return AccountEmojiStatuses.deserialize(reader);
  }

  if (id == 0x79f5d419) {
    return ReactionEmpty.deserialize(reader);
  }

  if (id == 0x1b2286b8) {
    return ReactionEmoji.deserialize(reader);
  }

  if (id == 0x8935fc73) {
    return ReactionCustomEmoji.deserialize(reader);
  }

  if (id == 0xeafc32bc) {
    return ChatReactionsNone.deserialize(reader);
  }

  if (id == 0x52928bca) {
    return ChatReactionsAll.deserialize(reader);
  }

  if (id == 0x661d4037) {
    return ChatReactionsSome.deserialize(reader);
  }

  if (id == 0xb06fdbdf) {
    return MessagesReactionsNotModified.deserialize(reader);
  }

  if (id == 0xeafdf716) {
    return MessagesReactions.deserialize(reader);
  }

  if (id == 0x6f7863f4) {
    return UpdateRecentReactions.deserialize(reader);
  }

  if (id == 0x86fccf85) {
    return UpdateMoveStickerSetToTop.deserialize(reader);
  }

  if (id == 0xf450f59b) {
    return AuthSentCodeTypeEmailCode.deserialize(reader);
  }

  if (id == 0xa5491dea) {
    return AuthSentCodeTypeSetUpEmailRequired.deserialize(reader);
  }

  if (id == 0x4345be73) {
    return EmailVerifyPurposeLoginSetup.deserialize(reader);
  }

  if (id == 0x527d22eb) {
    return EmailVerifyPurposeLoginChange.deserialize(reader);
  }

  if (id == 0xbbf51685) {
    return EmailVerifyPurposePassport.deserialize(reader);
  }

  if (id == 0x922e55a9) {
    return EmailVerificationCode.deserialize(reader);
  }

  if (id == 0xdb909ec2) {
    return EmailVerificationGoogle.deserialize(reader);
  }

  if (id == 0x96d074fd) {
    return EmailVerificationApple.deserialize(reader);
  }

  if (id == 0x2b96cd1b) {
    return AccountEmailVerified.deserialize(reader);
  }

  if (id == 0xe1bb0d61) {
    return AccountEmailVerifiedLogin.deserialize(reader);
  }

  if (id == 0x5f2d1df2) {
    return PremiumSubscriptionOption.deserialize(reader);
  }

  if (id == 0x04c4d4ce) {
    return InputStickerSetEmojiGenericAnimations.deserialize(reader);
  }

  if (id == 0x29d0f5ee) {
    return InputStickerSetEmojiDefaultStatuses.deserialize(reader);
  }

  if (id == 0xb81c7034) {
    return SendAsPeer.deserialize(reader);
  }

  if (id == 0xad628cc8) {
    return MessageExtendedMediaPreview.deserialize(reader);
  }

  if (id == 0xee479c64) {
    return MessageExtendedMedia.deserialize(reader);
  }

  if (id == 0xd5a41724) {
    return UpdateMessageExtendedMedia.deserialize(reader);
  }

  if (id == 0xfcfeb29c) {
    return StickerKeyword.deserialize(reader);
  }

  if (id == 0xb4073647) {
    return Username.deserialize(reader);
  }

  if (id == 0xf04fb3a9) {
    return ChannelAdminLogEventActionChangeUsernames.deserialize(reader);
  }

  if (id == 0x02cc6383) {
    return ChannelAdminLogEventActionToggleForum.deserialize(reader);
  }

  if (id == 0x58707d28) {
    return ChannelAdminLogEventActionCreateTopic.deserialize(reader);
  }

  if (id == 0xf06fe208) {
    return ChannelAdminLogEventActionEditTopic.deserialize(reader);
  }

  if (id == 0xae168909) {
    return ChannelAdminLogEventActionDeleteTopic.deserialize(reader);
  }

  if (id == 0x5d8d353b) {
    return ChannelAdminLogEventActionPinTopic.deserialize(reader);
  }

  if (id == 0x023f109b) {
    return ForumTopicDeleted.deserialize(reader);
  }

  if (id == 0x71701da9) {
    return ForumTopic.deserialize(reader);
  }

  if (id == 0x367617d3) {
    return MessagesForumTopics.deserialize(reader);
  }

  if (id == 0x0d999256) {
    return MessageActionTopicCreate.deserialize(reader);
  }

  if (id == 0xc0944820) {
    return MessageActionTopicEdit.deserialize(reader);
  }

  if (id == 0x192efbe3) {
    return UpdateChannelPinnedTopic.deserialize(reader);
  }

  if (id == 0x5c467992) {
    return InputNotifyForumTopic.deserialize(reader);
  }

  if (id == 0x226e6308) {
    return NotifyForumTopic.deserialize(reader);
  }

  if (id == 0x44c1f8e9) {
    return InputStickerSetEmojiDefaultTopicIcons.deserialize(reader);
  }

  if (id == 0x1839490f) {
    return MessagesSponsoredMessagesEmpty.deserialize(reader);
  }

  if (id == 0xfe198602) {
    return UpdateChannelPinnedTopics.deserialize(reader);
  }

  if (id == 0x43b46b20) {
    return DefaultHistoryTTL.deserialize(reader);
  }

  if (id == 0x06ed998c) {
    return AuthCodeTypeFragmentSms.deserialize(reader);
  }

  if (id == 0xd9565c39) {
    return AuthSentCodeTypeFragmentSms.deserialize(reader);
  }

  if (id == 0x41bf109b) {
    return ExportedContactToken.deserialize(reader);
  }

  if (id == 0x64f36dfc) {
    return ChannelAdminLogEventActionToggleAntiSpam.deserialize(reader);
  }

  if (id == 0x57de635e) {
    return MessageActionSuggestProfilePhoto.deserialize(reader);
  }

  if (id == 0x77b15d1c) {
    return StickerSetNoCovered.deserialize(reader);
  }

  if (id == 0x20529438) {
    return UpdateUser.deserialize(reader);
  }

  if (id == 0x2390fe44) {
    return AuthSentCodeSuccess.deserialize(reader);
  }

  if (id == 0x31518e9b) {
    return MessageActionRequestedPeer.deserialize(reader);
  }

  if (id == 0x5f3b8a00) {
    return RequestPeerTypeUser.deserialize(reader);
  }

  if (id == 0xc9f06e1b) {
    return RequestPeerTypeChat.deserialize(reader);
  }

  if (id == 0x339bef6c) {
    return RequestPeerTypeBroadcast.deserialize(reader);
  }

  if (id == 0x53d7bfd8) {
    return KeyboardButtonRequestPeer.deserialize(reader);
  }

  if (id == 0x481eadfa) {
    return EmojiListNotModified.deserialize(reader);
  }

  if (id == 0x7a1e11d1) {
    return EmojiList.deserialize(reader);
  }

  if (id == 0x009fd736) {
    return AuthSentCodeTypeFirebaseSms.deserialize(reader);
  }

  if (id == 0x7a9abda9) {
    return EmojiGroup.deserialize(reader);
  }

  if (id == 0x6fb4ad87) {
    return MessagesEmojiGroupsNotModified.deserialize(reader);
  }

  if (id == 0x881fb94b) {
    return MessagesEmojiGroups.deserialize(reader);
  }

  if (id == 0xf85c413c) {
    return VideoSizeEmojiMarkup.deserialize(reader);
  }

  if (id == 0x0da082fe) {
    return VideoSizeStickerMarkup.deserialize(reader);
  }

  if (id == 0x751f3146) {
    return TextWithEntities.deserialize(reader);
  }

  if (id == 0x33db32f8) {
    return MessagesTranslateResult.deserialize(reader);
  }

  if (id == 0xc84834ce) {
    return AutoSaveSettings.deserialize(reader);
  }

  if (id == 0x81602d47) {
    return AutoSaveException.deserialize(reader);
  }

  if (id == 0x4c3e069d) {
    return AccountAutoSaveSettings.deserialize(reader);
  }

  if (id == 0xec05b097) {
    return UpdateAutoSaveSettings.deserialize(reader);
  }

  if (id == 0x7cde641d) {
    return HelpAppConfigNotModified.deserialize(reader);
  }

  if (id == 0xdd18782e) {
    return HelpAppConfig.deserialize(reader);
  }

  if (id == 0xa920bd7a) {
    return InputBotAppID.deserialize(reader);
  }

  if (id == 0x908c0407) {
    return InputBotAppShortName.deserialize(reader);
  }

  if (id == 0x5da674b7) {
    return BotAppNotModified.deserialize(reader);
  }

  if (id == 0x95fcd1d6) {
    return BotApp.deserialize(reader);
  }

  if (id == 0xeb50adf5) {
    return MessagesBotApp.deserialize(reader);
  }

  if (id == 0xb57295d5) {
    return InlineBotWebView.deserialize(reader);
  }

  if (id == 0x4a4ff172) {
    return ReadParticipantDate.deserialize(reader);
  }

  if (id == 0x9fe28ea4) {
    return DialogFilterChatlist.deserialize(reader);
  }

  if (id == 0xf3e0da33) {
    return InputChatlistDialogFilter.deserialize(reader);
  }

  if (id == 0x0c5181ac) {
    return ExportedChatlistInvite.deserialize(reader);
  }

  if (id == 0x10e6e3a6) {
    return ChatlistsExportedChatlistInvite.deserialize(reader);
  }

  if (id == 0x10ab6dc7) {
    return ChatlistsExportedInvites.deserialize(reader);
  }

  if (id == 0xfa87f659) {
    return ChatlistsChatlistInviteAlready.deserialize(reader);
  }

  if (id == 0x1dcd839d) {
    return ChatlistsChatlistInvite.deserialize(reader);
  }

  if (id == 0x93bd878d) {
    return ChatlistsChatlistUpdates.deserialize(reader);
  }

  if (id == 0x5060a3f4) {
    return MessageActionSetChatWallPaper.deserialize(reader);
  }

  if (id == 0xe8a775b0) {
    return BotsBotInfo.deserialize(reader);
  }

  if (id == 0x0e3b2d0c) {
    return InlineQueryPeerTypeBotPM.deserialize(reader);
  }

  if (id == 0xb6cc2d5c) {
    return MessagePeerVote.deserialize(reader);
  }

  if (id == 0x74cda504) {
    return MessagePeerVoteInputOption.deserialize(reader);
  }

  if (id == 0x4628f6e6) {
    return MessagePeerVoteMultiple.deserialize(reader);
  }

  if (id == 0x3823cc40) {
    return InputPrivacyKeyAbout.deserialize(reader);
  }

  if (id == 0xa486b761) {
    return PrivacyKeyAbout.deserialize(reader);
  }

  if (id == 0x8d595cd6) {
    return StoryViews.deserialize(reader);
  }

  if (id == 0x51e6ee4f) {
    return StoryItemDeleted.deserialize(reader);
  }

  if (id == 0xffadc913) {
    return StoryItemSkipped.deserialize(reader);
  }

  if (id == 0x79b26a24) {
    return StoryItem.deserialize(reader);
  }

  if (id == 0x75b3b798) {
    return UpdateStory.deserialize(reader);
  }

  if (id == 0xf74e932b) {
    return UpdateReadStories.deserialize(reader);
  }

  if (id == 0x1158fe3e) {
    return StoriesAllStoriesNotModified.deserialize(reader);
  }

  if (id == 0x6efc5e81) {
    return StoriesAllStories.deserialize(reader);
  }

  if (id == 0x63c3dd0a) {
    return StoriesStories.deserialize(reader);
  }

  if (id == 0x2f453e49) {
    return InputPrivacyValueAllowCloseFriends.deserialize(reader);
  }

  if (id == 0xf7e8d89b) {
    return PrivacyValueAllowCloseFriends.deserialize(reader);
  }

  if (id == 0xb0bdeac5) {
    return StoryView.deserialize(reader);
  }

  if (id == 0x59d78fc5) {
    return StoriesStoryViewsList.deserialize(reader);
  }

  if (id == 0xde9eed1d) {
    return StoriesStoryViews.deserialize(reader);
  }

  if (id == 0x22c0f6d5) {
    return InputReplyToMessage.deserialize(reader);
  }

  if (id == 0x5881323a) {
    return InputReplyToStory.deserialize(reader);
  }

  if (id == 0x0e5af939) {
    return MessageReplyStoryHeader.deserialize(reader);
  }

  if (id == 0x1bf335b9) {
    return UpdateStoryID.deserialize(reader);
  }

  if (id == 0x3fc9053b) {
    return ExportedStoryLink.deserialize(reader);
  }

  if (id == 0x89fdd778) {
    return InputMediaStory.deserialize(reader);
  }

  if (id == 0x68cb6283) {
    return MessageMediaStory.deserialize(reader);
  }

  if (id == 0x2e94c3e7) {
    return WebPageAttributeStory.deserialize(reader);
  }

  if (id == 0x712e27fd) {
    return StoriesStealthMode.deserialize(reader);
  }

  if (id == 0x2c084dc1) {
    return UpdateStoriesStealthMode.deserialize(reader);
  }

  if (id == 0xcfc9e002) {
    return MediaAreaCoordinates.deserialize(reader);
  }

  if (id == 0xbe82db9c) {
    return MediaAreaVenue.deserialize(reader);
  }

  if (id == 0xb282217f) {
    return InputMediaAreaVenue.deserialize(reader);
  }

  if (id == 0xcad5452d) {
    return MediaAreaGeoPoint.deserialize(reader);
  }

  if (id == 0x7d627683) {
    return UpdateSentStoryReaction.deserialize(reader);
  }

  if (id == 0x14455871) {
    return MediaAreaSuggestedReaction.deserialize(reader);
  }

  if (id == 0x9a35e999) {
    return PeerStories.deserialize(reader);
  }

  if (id == 0xcae68768) {
    return StoriesPeerStories.deserialize(reader);
  }

  if (id == 0xfd5e12bd) {
    return MessagesWebPage.deserialize(reader);
  }

  if (id == 0xfb790393) {
    return InputStorePaymentPremiumGiftCode.deserialize(reader);
  }

  if (id == 0x160544ca) {
    return InputStorePaymentPremiumGiveaway.deserialize(reader);
  }

  if (id == 0x98986c0d) {
    return InputInvoicePremiumGiftCode.deserialize(reader);
  }

  if (id == 0x257e962b) {
    return PremiumGiftCodeOption.deserialize(reader);
  }

  if (id == 0x284a1096) {
    return PaymentsCheckedGiftCode.deserialize(reader);
  }

  if (id == 0xaa073beb) {
    return MessageMediaGiveaway.deserialize(reader);
  }

  if (id == 0x56d03994) {
    return MessageActionGiftCode.deserialize(reader);
  }

  if (id == 0xa80f51e4) {
    return MessageActionGiveawayLaunch.deserialize(reader);
  }

  if (id == 0x4367daa0) {
    return PaymentsGiveawayInfo.deserialize(reader);
  }

  if (id == 0xe175e66f) {
    return PaymentsGiveawayInfoResults.deserialize(reader);
  }

  if (id == 0xf1ccaaac) {
    return MessageEntityBlockquote.deserialize(reader);
  }

  if (id == 0xb2539d54) {
    return PrepaidGiveaway.deserialize(reader);
  }

  if (id == 0xc21b8849) {
    return InputMediaWebPage.deserialize(reader);
  }

  if (id == 0xbddcc510) {
    return InputBotInlineMessageMediaWebPage.deserialize(reader);
  }

  if (id == 0x809ad9a6) {
    return BotInlineMessageMediaWebPage.deserialize(reader);
  }

  if (id == 0x4b3e14d6) {
    return Boost.deserialize(reader);
  }

  if (id == 0x86f8613c) {
    return PremiumBoostsList.deserialize(reader);
  }

  if (id == 0xc448415c) {
    return MyBoost.deserialize(reader);
  }

  if (id == 0x9ae228e2) {
    return PremiumMyBoosts.deserialize(reader);
  }

  if (id == 0x4959427a) {
    return PremiumBoostsStatus.deserialize(reader);
  }

  if (id == 0x904dd49c) {
    return UpdateBotChatBoost.deserialize(reader);
  }

  if (id == 0x07b68920) {
    return UpdateChannelViewForumAsMessages.deserialize(reader);
  }

  if (id == 0x87e2f155) {
    return MessageActionGiveawayResults.deserialize(reader);
  }

  if (id == 0xae3f101d) {
    return UpdatePeerWallpaper.deserialize(reader);
  }

  if (id == 0xb826e150) {
    return StoryFwdHeader.deserialize(reader);
  }

  if (id == 0xe7058e7f) {
    return PostInteractionCountersMessage.deserialize(reader);
  }

  if (id == 0x8a480e27) {
    return PostInteractionCountersStory.deserialize(reader);
  }

  if (id == 0x50cd067c) {
    return StatsStoryStats.deserialize(reader);
  }

  if (id == 0x01f2bf4a) {
    return PublicForwardMessage.deserialize(reader);
  }

  if (id == 0xedf3add0) {
    return PublicForwardStory.deserialize(reader);
  }

  if (id == 0x93037e20) {
    return StatsPublicForwards.deserialize(reader);
  }

  if (id == 0xb54b5acf) {
    return PeerColor.deserialize(reader);
  }

  if (id == 0x26219a58) {
    return HelpPeerColorSet.deserialize(reader);
  }

  if (id == 0x767d61eb) {
    return HelpPeerColorProfileSet.deserialize(reader);
  }

  if (id == 0xadec6ebe) {
    return HelpPeerColorOption.deserialize(reader);
  }

  if (id == 0x2ba1f5ce) {
    return HelpPeerColorsNotModified.deserialize(reader);
  }

  if (id == 0x00f8ed08) {
    return HelpPeerColors.deserialize(reader);
  }

  if (id == 0xceaa3ea1) {
    return MessageMediaGiveawayResults.deserialize(reader);
  }

  if (id == 0x6090d6d5) {
    return StoryReaction.deserialize(reader);
  }

  if (id == 0xbbab2643) {
    return StoryReactionPublicForward.deserialize(reader);
  }

  if (id == 0xcfcd0f13) {
    return StoryReactionPublicRepost.deserialize(reader);
  }

  if (id == 0xaa5f789c) {
    return StoriesStoryReactionsList.deserialize(reader);
  }

  if (id == 0x9083670b) {
    return StoryViewPublicForward.deserialize(reader);
  }

  if (id == 0xbd74cf49) {
    return StoryViewPublicRepost.deserialize(reader);
  }

  if (id == 0x5796e780) {
    return ChannelAdminLogEventActionChangePeerColor.deserialize(reader);
  }

  if (id == 0x5e477b25) {
    return ChannelAdminLogEventActionChangeProfilePeerColor.deserialize(reader);
  }

  if (id == 0x31bb5d52) {
    return ChannelAdminLogEventActionChangeWallpaper.deserialize(reader);
  }

  if (id == 0x3ea9feb1) {
    return ChannelAdminLogEventActionChangeEmojiStatus.deserialize(reader);
  }

  if (id == 0x49748553) {
    return InputStickerSetEmojiChannelDefaultStatuses.deserialize(reader);
  }

  if (id == 0x770416af) {
    return MediaAreaChannelPost.deserialize(reader);
  }

  if (id == 0x2271f2bf) {
    return InputMediaAreaChannelPost.deserialize(reader);
  }

  if (id == 0xac21d3ce) {
    return UpdateBotMessageReaction.deserialize(reader);
  }

  if (id == 0x09cb7759) {
    return UpdateBotMessageReactions.deserialize(reader);
  }

  if (id == 0xbd87cb6c) {
    return SavedDialog.deserialize(reader);
  }

  if (id == 0xaeaf9e74) {
    return UpdateSavedDialogPinned.deserialize(reader);
  }

  if (id == 0x686c85a6) {
    return UpdatePinnedSavedDialogs.deserialize(reader);
  }

  if (id == 0xf83ae221) {
    return MessagesSavedDialogs.deserialize(reader);
  }

  if (id == 0x44ba9dd9) {
    return MessagesSavedDialogsSlice.deserialize(reader);
  }

  if (id == 0xc01f6fe8) {
    return MessagesSavedDialogsNotModified.deserialize(reader);
  }

  if (id == 0xcb6ff828) {
    return SavedReactionTag.deserialize(reader);
  }

  if (id == 0x889b59ef) {
    return MessagesSavedReactionTagsNotModified.deserialize(reader);
  }

  if (id == 0x3259950a) {
    return MessagesSavedReactionTags.deserialize(reader);
  }

  if (id == 0x39c67432) {
    return UpdateSavedReactionTags.deserialize(reader);
  }

  if (id == 0x3bb842ac) {
    return OutboxReadDate.deserialize(reader);
  }

  if (id == 0xcc02aa6d) {
    return MessageActionBoostApply.deserialize(reader);
  }

  if (id == 0x46d840ab) {
    return ChannelAdminLogEventActionChangeEmojiStickerSet.deserialize(reader);
  }

  if (id == 0xdc8b44cf) {
    return SmsjobsEligibleToJoin.deserialize(reader);
  }

  if (id == 0x2aee9191) {
    return SmsjobsStatus.deserialize(reader);
  }

  if (id == 0xf16269d4) {
    return UpdateSmsJob.deserialize(reader);
  }

  if (id == 0xe6a1eeb8) {
    return SmsJob.deserialize(reader);
  }

  if (id == 0x120b1ab9) {
    return BusinessWeeklyOpen.deserialize(reader);
  }

  if (id == 0x8c92b098) {
    return BusinessWorkHours.deserialize(reader);
  }

  if (id == 0xac5c1af7) {
    return BusinessLocation.deserialize(reader);
  }

  if (id == 0x6f8b32aa) {
    return InputBusinessRecipients.deserialize(reader);
  }

  if (id == 0x21108ff7) {
    return BusinessRecipients.deserialize(reader);
  }

  if (id == 0xc9b9e2b9) {
    return BusinessAwayMessageScheduleAlways.deserialize(reader);
  }

  if (id == 0xc3f2f501) {
    return BusinessAwayMessageScheduleOutsideWorkHours.deserialize(reader);
  }

  if (id == 0xcc4d9ecc) {
    return BusinessAwayMessageScheduleCustom.deserialize(reader);
  }

  if (id == 0x0194cb3b) {
    return InputBusinessGreetingMessage.deserialize(reader);
  }

  if (id == 0xe519abab) {
    return BusinessGreetingMessage.deserialize(reader);
  }

  if (id == 0x832175e0) {
    return InputBusinessAwayMessage.deserialize(reader);
  }

  if (id == 0xef156a5c) {
    return BusinessAwayMessage.deserialize(reader);
  }

  if (id == 0xff9289f5) {
    return Timezone.deserialize(reader);
  }

  if (id == 0x970708cc) {
    return HelpTimezonesListNotModified.deserialize(reader);
  }

  if (id == 0x7b74ed71) {
    return HelpTimezonesList.deserialize(reader);
  }

  if (id == 0x0697102b) {
    return QuickReply.deserialize(reader);
  }

  if (id == 0x24596d41) {
    return InputQuickReplyShortcut.deserialize(reader);
  }

  if (id == 0x01190cf1) {
    return InputQuickReplyShortcutId.deserialize(reader);
  }

  if (id == 0xc68d6695) {
    return MessagesQuickReplies.deserialize(reader);
  }

  if (id == 0x5f91eb5b) {
    return MessagesQuickRepliesNotModified.deserialize(reader);
  }

  if (id == 0xf9470ab2) {
    return UpdateQuickReplies.deserialize(reader);
  }

  if (id == 0xf53da717) {
    return UpdateNewQuickReply.deserialize(reader);
  }

  if (id == 0x53e6f1ec) {
    return UpdateDeleteQuickReply.deserialize(reader);
  }

  if (id == 0x3e050d0f) {
    return UpdateQuickReplyMessage.deserialize(reader);
  }

  if (id == 0x566fe7cd) {
    return UpdateDeleteQuickReplyMessages.deserialize(reader);
  }

  if (id == 0xbd068601) {
    return ConnectedBot.deserialize(reader);
  }

  if (id == 0x17d7f87b) {
    return AccountConnectedBots.deserialize(reader);
  }

  if (id == 0x2ad93719) {
    return MessagesDialogFilters.deserialize(reader);
  }

  if (id == 0x6c8e1e06) {
    return Birthday.deserialize(reader);
  }

  if (id == 0x8ae5c97a) {
    return UpdateBotBusinessConnect.deserialize(reader);
  }

  if (id == 0x9ddb347c) {
    return UpdateBotNewBusinessMessage.deserialize(reader);
  }

  if (id == 0x07df587c) {
    return UpdateBotEditBusinessMessage.deserialize(reader);
  }

  if (id == 0xa02a982e) {
    return UpdateBotDeleteBusinessMessage.deserialize(reader);
  }

  if (id == 0x896433b4) {
    return BotBusinessConnection.deserialize(reader);
  }

  if (id == 0x09c469cd) {
    return InputBusinessIntro.deserialize(reader);
  }

  if (id == 0x5a0a066d) {
    return BusinessIntro.deserialize(reader);
  }

  if (id == 0xfaff629d) {
    return MessagesMyStickers.deserialize(reader);
  }

  if (id == 0xe39460a9) {
    return InputCollectibleUsername.deserialize(reader);
  }

  if (id == 0xa2e214a4) {
    return InputCollectiblePhone.deserialize(reader);
  }

  if (id == 0x6ebdff91) {
    return FragmentCollectibleInfo.deserialize(reader);
  }

  if (id == 0xc4e5921e) {
    return InputBusinessBotRecipients.deserialize(reader);
  }

  if (id == 0xb88cf373) {
    return BusinessBotRecipients.deserialize(reader);
  }

  if (id == 0x1d998733) {
    return ContactBirthday.deserialize(reader);
  }

  if (id == 0x114ff30d) {
    return ContactsContactBirthdays.deserialize(reader);
  }

  if (id == 0xd65a11cc) {
    return InputPrivacyKeyBirthday.deserialize(reader);
  }

  if (id == 0x2000a518) {
    return PrivacyKeyBirthday.deserialize(reader);
  }

  if (id == 0x77cdc9f1) {
    return InputPrivacyValueAllowPremium.deserialize(reader);
  }

  if (id == 0xece9814b) {
    return PrivacyValueAllowPremium.deserialize(reader);
  }

  if (id == 0x628c9224) {
    return MissingInvitee.deserialize(reader);
  }

  if (id == 0x7f5defa6) {
    return MessagesInvitedUsers.deserialize(reader);
  }

  if (id == 0x11679fa7) {
    return InputBusinessChatLink.deserialize(reader);
  }

  if (id == 0xb4ae666f) {
    return BusinessChatLink.deserialize(reader);
  }

  if (id == 0xec43a2d1) {
    return AccountBusinessChatLinks.deserialize(reader);
  }

  if (id == 0x9a23af21) {
    return AccountResolvedBusinessChatLinks.deserialize(reader);
  }

  if (id == 0xd62ff46a) {
    return RequestedPeerUser.deserialize(reader);
  }

  if (id == 0x7307544f) {
    return RequestedPeerChat.deserialize(reader);
  }

  if (id == 0x8ba403e4) {
    return RequestedPeerChannel.deserialize(reader);
  }

  if (id == 0x93b31848) {
    return MessageActionRequestedPeerSentMe.deserialize(reader);
  }

  if (id == 0xc9662d05) {
    return InputKeyboardButtonRequestPeer.deserialize(reader);
  }

  if (id == 0x430d3150) {
    return SponsoredMessageReportOption.deserialize(reader);
  }

  if (id == 0x846f9e42) {
    return ChannelsSponsoredMessageReportResultChooseOption.deserialize(reader);
  }

  if (id == 0x3e3bcf2f) {
    return ChannelsSponsoredMessageReportResultAdsHidden.deserialize(reader);
  }

  if (id == 0xad798849) {
    return ChannelsSponsoredMessageReportResultReported.deserialize(reader);
  }

  if (id == 0x5407e297) {
    return StatsBroadcastRevenueStats.deserialize(reader);
  }

  if (id == 0xec659737) {
    return StatsBroadcastRevenueWithdrawalUrl.deserialize(reader);
  }

  if (id == 0x557e2cc4) {
    return BroadcastRevenueTransactionProceeds.deserialize(reader);
  }

  if (id == 0x5a590978) {
    return BroadcastRevenueTransactionWithdrawal.deserialize(reader);
  }

  if (id == 0x42d30d2e) {
    return BroadcastRevenueTransactionRefund.deserialize(reader);
  }

  if (id == 0x87158466) {
    return StatsBroadcastRevenueTransactions.deserialize(reader);
  }

  if (id == 0x50cc03d3) {
    return WebPageAttributeStickerSet.deserialize(reader);
  }

  if (id == 0xbac3a61a) {
    return ReactionNotificationsFromContacts.deserialize(reader);
  }

  if (id == 0x4b9e22a0) {
    return ReactionNotificationsFromAll.deserialize(reader);
  }

  if (id == 0x56e34970) {
    return ReactionsNotifySettings.deserialize(reader);
  }

  if (id == 0x1824e40b) {
    return UpdateNewStoryReaction.deserialize(reader);
  }

  if (id == 0xa416ac81) {
    return AuthSentCodeTypeSmsWord.deserialize(reader);
  }

  if (id == 0xb37794af) {
    return AuthSentCodeTypeSmsPhrase.deserialize(reader);
  }

  if (id == 0x80d26cc7) {
    return EmojiGroupGreeting.deserialize(reader);
  }

  if (id == 0x093bcf34) {
    return EmojiGroupPremium.deserialize(reader);
  }

  if (id == 0xc3ff71e7) {
    return BroadcastRevenueBalances.deserialize(reader);
  }

  if (id == 0xdfd961f5) {
    return UpdateBroadcastRevenueTransactions.deserialize(reader);
  }

  if (id == 0x93c3e27e) {
    return AvailableEffect.deserialize(reader);
  }

  if (id == 0xd1ed9a5b) {
    return MessagesAvailableEffectsNotModified.deserialize(reader);
  }

  if (id == 0xbddb616e) {
    return MessagesAvailableEffects.deserialize(reader);
  }

  if (id == 0xb89bfccf) {
    return FactCheck.deserialize(reader);
  }

  if (id == 0x95f2bfe4) {
    return StarsTransactionPeerUnsupported.deserialize(reader);
  }

  if (id == 0xb457b375) {
    return StarsTransactionPeerAppStore.deserialize(reader);
  }

  if (id == 0x7b560a0b) {
    return StarsTransactionPeerPlayMarket.deserialize(reader);
  }

  if (id == 0x250dbaf8) {
    return StarsTransactionPeerPremiumBot.deserialize(reader);
  }

  if (id == 0xe92fd902) {
    return StarsTransactionPeerFragment.deserialize(reader);
  }

  if (id == 0xd80da15d) {
    return StarsTransactionPeer.deserialize(reader);
  }

  if (id == 0x0bd915c0) {
    return StarsTopupOption.deserialize(reader);
  }

  if (id == 0x65f00ce3) {
    return InputInvoiceStars.deserialize(reader);
  }

  if (id == 0x64dfc926) {
    return StarsTransaction.deserialize(reader);
  }

  if (id == 0x6c9ce8ed) {
    return PaymentsStarsStatus.deserialize(reader);
  }

  if (id == 0x4e80a379) {
    return UpdateStarsBalance.deserialize(reader);
  }

  if (id == 0x7bf6b15c) {
    return PaymentsPaymentFormStars.deserialize(reader);
  }

  if (id == 0xdabbf83a) {
    return PaymentsPaymentReceiptStars.deserialize(reader);
  }

  if (id == 0x37381085) {
    return MediaAreaUrl.deserialize(reader);
  }

  if (id == 0xe87acbc0) {
    return FoundStory.deserialize(reader);
  }

  if (id == 0xe2de7737) {
    return StoriesFoundStories.deserialize(reader);
  }

  if (id == 0xde4c5d93) {
    return GeoPointAddress.deserialize(reader);
  }

  if (id == 0x1ea2fda7) {
    return UpdateBusinessBotCallbackQuery.deserialize(reader);
  }

  if (id == 0xfebe5491) {
    return StarsRevenueStatus.deserialize(reader);
  }

  if (id == 0xc92bb73b) {
    return PaymentsStarsRevenueStats.deserialize(reader);
  }

  if (id == 0x1dab80b7) {
    return PaymentsStarsRevenueWithdrawalUrl.deserialize(reader);
  }

  if (id == 0xa584b019) {
    return UpdateStarsRevenueStatus.deserialize(reader);
  }

  if (id == 0xc4103386) {
    return InputMediaPaidMedia.deserialize(reader);
  }

  if (id == 0xa8852491) {
    return MessageMediaPaidMedia.deserialize(reader);
  }

  if (id == 0x60682812) {
    return StarsTransactionPeerAds.deserialize(reader);
  }

  if (id == 0x394e7f21) {
    return PaymentsStarsRevenueAdsAccountUrl.deserialize(reader);
  }

  if (id == 0x206ae6d1) {
    return InputStarsTransaction.deserialize(reader);
  }

  if (id == 0x41b3e202) {
    return MessageActionPaymentRefunded.deserialize(reader);
  }

  if (id == 0xdddd0f56) {
    return InputStorePaymentStarsTopup.deserialize(reader);
  }

  if (id == 0x1d741ef7) {
    return InputStorePaymentStarsGift.deserialize(reader);
  }

  if (id == 0x5e0589f1) {
    return StarsGiftOption.deserialize(reader);
  }

  if (id == 0x45d5b021) {
    return MessageActionGiftStars.deserialize(reader);
  }

  if (id == 0xfd9e7bec) {
    return TopPeerCategoryBotsApp.deserialize(reader);
  }

  if (id == 0x1991b13b) {
    return BotsPopularAppBots.deserialize(reader);
  }

  if (id == 0x23e91ba3) {
    return BotPreviewMedia.deserialize(reader);
  }

  if (id == 0x0ca71d64) {
    return BotsPreviewInfo.deserialize(reader);
  }

  if (id == 0x49a6549c) {
    return MediaAreaWeather.deserialize(reader);
  }

  if (id == 0x62dc8b48) {
    return InputFileStoryDocument.deserialize(reader);
  }

  if (id == 0x34e793f1) {
    return InputInvoiceChatInviteSubscription.deserialize(reader);
  }

  if (id == 0x05416d58) {
    return StarsSubscriptionPricing.deserialize(reader);
  }

  if (id == 0x2e6eab1a) {
    return StarsSubscription.deserialize(reader);
  }

  if (id == 0x523da4eb) {
    return ReactionPaid.deserialize(reader);
  }

  if (id == 0x4ba3a95a) {
    return MessageReactor.deserialize(reader);
  }

  if (id == 0x60a79c79) {
    return ChannelAdminLogEventActionToggleSignatureProfiles.deserialize(
        reader);
  }

  if (id == 0x283bd312) {
    return UpdateBotPurchasedPaidMedia.deserialize(reader);
  }

  if (id == 0x64642db3) {
    return ChannelAdminLogEventActionParticipantSubExtend.deserialize(reader);
  }

  if (id == 0x751f08fa) {
    return InputStorePaymentStarsGiveaway.deserialize(reader);
  }

  if (id == 0xb00c47a2) {
    return MessageActionPrizeStars.deserialize(reader);
  }

  if (id == 0x51ca7aec) {
    return UpdatePaidReactionPrivacy.deserialize(reader);
  }

  if (id == 0x94ce852a) {
    return StarsGiveawayOption.deserialize(reader);
  }

  if (id == 0x54236209) {
    return StarsGiveawayWinnersOption.deserialize(reader);
  }

  if (id == 0x9a9d77e0) {
    return PrepaidStarsGiveaway.deserialize(reader);
  }

  if (id == 0x75d2698e) {
    return KeyboardButtonCopy.deserialize(reader);
  }

  if (id == 0x49c577cd) {
    return StarGift.deserialize(reader);
  }

  if (id == 0xa388a368) {
    return PaymentsStarGiftsNotModified.deserialize(reader);
  }

  if (id == 0x901689ea) {
    return PaymentsStarGifts.deserialize(reader);
  }

  if (id == 0x25d8c1d8) {
    return InputInvoiceStarGift.deserialize(reader);
  }

  if (id == 0xb425cfe1) {
    return PaymentsPaymentFormStarGift.deserialize(reader);
  }

  if (id == 0x08557637) {
    return MessageActionStarGift.deserialize(reader);
  }

  if (id == 0xeea49a6e) {
    return UserStarGift.deserialize(reader);
  }

  if (id == 0x6b65b517) {
    return PaymentsUserStarGifts.deserialize(reader);
  }

  if (id == 0x7903e3d9) {
    return MessageReportOption.deserialize(reader);
  }

  if (id == 0xf0e4e0b6) {
    return ReportResultChooseOption.deserialize(reader);
  }

  if (id == 0x6f09ac31) {
    return ReportResultAddComment.deserialize(reader);
  }

  if (id == 0x8db33c4b) {
    return ReportResultReported.deserialize(reader);
  }

  if (id == 0xf9677aad) {
    return StarsTransactionPeerAPI.deserialize(reader);
  }

  if (id == 0x8ecf0511) {
    return MessagesBotPreparedInlineMessage.deserialize(reader);
  }

  if (id == 0xff57708d) {
    return MessagesPreparedInlineMessage.deserialize(reader);
  }

  if (id == 0xc99b1950) {
    return BotAppSettings.deserialize(reader);
  }

  if (id == 0x5a4fcce5) {
    return InputPrivacyValueAllowBots.deserialize(reader);
  }

  if (id == 0xc4e57915) {
    return InputPrivacyValueDisallowBots.deserialize(reader);
  }

  if (id == 0x21461b5d) {
    return PrivacyValueAllowBots.deserialize(reader);
  }

  if (id == 0xf6a5f82f) {
    return PrivacyValueDisallowBots.deserialize(reader);
  }

  if (id == 0xe1732341) {
    return InputPrivacyKeyStarGiftsAutoSave.deserialize(reader);
  }

  if (id == 0x2ca4fdf8) {
    return PrivacyKeyStarGiftsAutoSave.deserialize(reader);
  }

  if (id == 0xdd0c66f2) {
    return StarRefProgram.deserialize(reader);
  }

  if (id == 0x19a13f71) {
    return ConnectedBotStarRef.deserialize(reader);
  }

  if (id == 0x98d5ea1d) {
    return PaymentsConnectedStarRefBots.deserialize(reader);
  }

  if (id == 0xb4d5d859) {
    return PaymentsSuggestedStarRefBots.deserialize(reader);
  }

  if (id == 0xbbb6b4a3) {
    return StarsAmount.deserialize(reader);
  }

  if (id == 0x6010c534) {
    return MessagesFoundStickersNotModified.deserialize(reader);
  }

  if (id == 0x82c9e290) {
    return MessagesFoundStickers.deserialize(reader);
  }

  if (id == 0xcb9f372d) {
    return InvokeAfterMsg.deserialize(reader);
  }

  if (id == 0x3dc4b4f0) {
    return InvokeAfterMsgs.deserialize(reader);
  }

  if (id == 0xa677244f) {
    return AuthSendCode.deserialize(reader);
  }

  if (id == 0xaac7b717) {
    return AuthSignUp.deserialize(reader);
  }

  if (id == 0x8d52a951) {
    return AuthSignIn.deserialize(reader);
  }

  if (id == 0x3e72ba19) {
    return AuthLogOut.deserialize(reader);
  }

  if (id == 0x9fab0d1a) {
    return AuthResetAuthorizations.deserialize(reader);
  }

  if (id == 0xe5bfffcd) {
    return AuthExportAuthorization.deserialize(reader);
  }

  if (id == 0xa57a7dad) {
    return AuthImportAuthorization.deserialize(reader);
  }

  if (id == 0xcdd42a05) {
    return AuthBindTempAuthKey.deserialize(reader);
  }

  if (id == 0xec86017a) {
    return AccountRegisterDevice.deserialize(reader);
  }

  if (id == 0x6a0d3206) {
    return AccountUnregisterDevice.deserialize(reader);
  }

  if (id == 0x84be5b93) {
    return AccountUpdateNotifySettings.deserialize(reader);
  }

  if (id == 0x12b3ad31) {
    return AccountGetNotifySettings.deserialize(reader);
  }

  if (id == 0xdb7e1747) {
    return AccountResetNotifySettings.deserialize(reader);
  }

  if (id == 0x78515775) {
    return AccountUpdateProfile.deserialize(reader);
  }

  if (id == 0x6628562c) {
    return AccountUpdateStatus.deserialize(reader);
  }

  if (id == 0x07967d36) {
    return AccountGetWallPapers.deserialize(reader);
  }

  if (id == 0xc5ba3d86) {
    return AccountReportPeer.deserialize(reader);
  }

  if (id == 0x0d91a548) {
    return UsersGetUsers.deserialize(reader);
  }

  if (id == 0xb60f5918) {
    return UsersGetFullUser.deserialize(reader);
  }

  if (id == 0x7adc669d) {
    return ContactsGetContactIDs.deserialize(reader);
  }

  if (id == 0xc4a353ee) {
    return ContactsGetStatuses.deserialize(reader);
  }

  if (id == 0x5dd69e12) {
    return ContactsGetContacts.deserialize(reader);
  }

  if (id == 0x2c800be5) {
    return ContactsImportContacts.deserialize(reader);
  }

  if (id == 0x096a0e00) {
    return ContactsDeleteContacts.deserialize(reader);
  }

  if (id == 0x1013fd9e) {
    return ContactsDeleteByPhones.deserialize(reader);
  }

  if (id == 0x2e2e8734) {
    return ContactsBlock.deserialize(reader);
  }

  if (id == 0xb550d328) {
    return ContactsUnblock.deserialize(reader);
  }

  if (id == 0x9a868f80) {
    return ContactsGetBlocked.deserialize(reader);
  }

  if (id == 0x63c66506) {
    return MessagesGetMessages.deserialize(reader);
  }

  if (id == 0xa0f4cb4f) {
    return MessagesGetDialogs.deserialize(reader);
  }

  if (id == 0x4423e6c5) {
    return MessagesGetHistory.deserialize(reader);
  }

  if (id == 0x29ee847a) {
    return MessagesSearch.deserialize(reader);
  }

  if (id == 0x0e306d3a) {
    return MessagesReadHistory.deserialize(reader);
  }

  if (id == 0xb08f922a) {
    return MessagesDeleteHistory.deserialize(reader);
  }

  if (id == 0xe58e95d2) {
    return MessagesDeleteMessages.deserialize(reader);
  }

  if (id == 0x05a954c0) {
    return MessagesReceivedMessages.deserialize(reader);
  }

  if (id == 0x58943ee2) {
    return MessagesSetTyping.deserialize(reader);
  }

  if (id == 0x983f9745) {
    return MessagesSendMessage.deserialize(reader);
  }

  if (id == 0x7852834e) {
    return MessagesSendMedia.deserialize(reader);
  }

  if (id == 0xd5039208) {
    return MessagesForwardMessages.deserialize(reader);
  }

  if (id == 0xcf1592db) {
    return MessagesReportSpam.deserialize(reader);
  }

  if (id == 0xefd9a6a2) {
    return MessagesGetPeerSettings.deserialize(reader);
  }

  if (id == 0xfc78af9b) {
    return MessagesReport.deserialize(reader);
  }

  if (id == 0x49e9528f) {
    return MessagesGetChats.deserialize(reader);
  }

  if (id == 0xaeb00b34) {
    return MessagesGetFullChat.deserialize(reader);
  }

  if (id == 0x73783ffd) {
    return MessagesEditChatTitle.deserialize(reader);
  }

  if (id == 0x35ddd674) {
    return MessagesEditChatPhoto.deserialize(reader);
  }

  if (id == 0xcbc6d107) {
    return MessagesAddChatUser.deserialize(reader);
  }

  if (id == 0xa2185cab) {
    return MessagesDeleteChatUser.deserialize(reader);
  }

  if (id == 0x92ceddd4) {
    return MessagesCreateChat.deserialize(reader);
  }

  if (id == 0xedd4882a) {
    return UpdatesGetState.deserialize(reader);
  }

  if (id == 0x19c2f763) {
    return UpdatesGetDifference.deserialize(reader);
  }

  if (id == 0x09e82039) {
    return PhotosUpdateProfilePhoto.deserialize(reader);
  }

  if (id == 0x0388a3b5) {
    return PhotosUploadProfilePhoto.deserialize(reader);
  }

  if (id == 0x87cf7f2f) {
    return PhotosDeletePhotos.deserialize(reader);
  }

  if (id == 0xb304a621) {
    return UploadSaveFilePart.deserialize(reader);
  }

  if (id == 0xbe5335be) {
    return UploadGetFile.deserialize(reader);
  }

  if (id == 0xc4f9186b) {
    return HelpGetConfig.deserialize(reader);
  }

  if (id == 0x1fb33026) {
    return HelpGetNearestDc.deserialize(reader);
  }

  if (id == 0x522d5a7d) {
    return HelpGetAppUpdate.deserialize(reader);
  }

  if (id == 0x4d392343) {
    return HelpGetInviteText.deserialize(reader);
  }

  if (id == 0x91cd32a8) {
    return PhotosGetUserPhotos.deserialize(reader);
  }

  if (id == 0x26cf8950) {
    return MessagesGetDhConfig.deserialize(reader);
  }

  if (id == 0xf64daf43) {
    return MessagesRequestEncryption.deserialize(reader);
  }

  if (id == 0x3dbc0415) {
    return MessagesAcceptEncryption.deserialize(reader);
  }

  if (id == 0xf393aea0) {
    return MessagesDiscardEncryption.deserialize(reader);
  }

  if (id == 0x791451ed) {
    return MessagesSetEncryptedTyping.deserialize(reader);
  }

  if (id == 0x7f4b690a) {
    return MessagesReadEncryptedHistory.deserialize(reader);
  }

  if (id == 0x44fa7a15) {
    return MessagesSendEncrypted.deserialize(reader);
  }

  if (id == 0x5559481d) {
    return MessagesSendEncryptedFile.deserialize(reader);
  }

  if (id == 0x32d439a4) {
    return MessagesSendEncryptedService.deserialize(reader);
  }

  if (id == 0x55a5bb66) {
    return MessagesReceivedQueue.deserialize(reader);
  }

  if (id == 0x4b0c8c0f) {
    return MessagesReportEncryptedSpam.deserialize(reader);
  }

  if (id == 0xde7b673d) {
    return UploadSaveBigFilePart.deserialize(reader);
  }

  if (id == 0xc1cd5ea9) {
    return InitConnection.deserialize(reader);
  }

  if (id == 0x9cdf08cd) {
    return HelpGetSupport.deserialize(reader);
  }

  if (id == 0x36a73f77) {
    return MessagesReadMessageContents.deserialize(reader);
  }

  if (id == 0x2714d86c) {
    return AccountCheckUsername.deserialize(reader);
  }

  if (id == 0x3e0bdd7c) {
    return AccountUpdateUsername.deserialize(reader);
  }

  if (id == 0x11f812d8) {
    return ContactsSearch.deserialize(reader);
  }

  if (id == 0xdadbc950) {
    return AccountGetPrivacy.deserialize(reader);
  }

  if (id == 0xc9f81ce8) {
    return AccountSetPrivacy.deserialize(reader);
  }

  if (id == 0xa2c0cf74) {
    return AccountDeleteAccount.deserialize(reader);
  }

  if (id == 0x08fc711d) {
    return AccountGetAccountTTL.deserialize(reader);
  }

  if (id == 0x2442485e) {
    return AccountSetAccountTTL.deserialize(reader);
  }

  if (id == 0xda9b0d0d) {
    return InvokeWithLayer.deserialize(reader);
  }

  if (id == 0x725afbbc) {
    return ContactsResolveUsername.deserialize(reader);
  }

  if (id == 0x82574ae5) {
    return AccountSendChangePhoneCode.deserialize(reader);
  }

  if (id == 0x70c32edb) {
    return AccountChangePhone.deserialize(reader);
  }

  if (id == 0xd5a5d3a1) {
    return MessagesGetStickers.deserialize(reader);
  }

  if (id == 0xb8a0a1a8) {
    return MessagesGetAllStickers.deserialize(reader);
  }

  if (id == 0x38df3532) {
    return AccountUpdateDeviceLocked.deserialize(reader);
  }

  if (id == 0x67a3ff2c) {
    return AuthImportBotAuthorization.deserialize(reader);
  }

  if (id == 0x8b68b0cc) {
    return MessagesGetWebPagePreview.deserialize(reader);
  }

  if (id == 0xe320c158) {
    return AccountGetAuthorizations.deserialize(reader);
  }

  if (id == 0xdf77f3bc) {
    return AccountResetAuthorization.deserialize(reader);
  }

  if (id == 0x548a30f5) {
    return AccountGetPassword.deserialize(reader);
  }

  if (id == 0x9cd4eaf9) {
    return AccountGetPasswordSettings.deserialize(reader);
  }

  if (id == 0xa59b102f) {
    return AccountUpdatePasswordSettings.deserialize(reader);
  }

  if (id == 0xd18b4d16) {
    return AuthCheckPassword.deserialize(reader);
  }

  if (id == 0xd897bc66) {
    return AuthRequestPasswordRecovery.deserialize(reader);
  }

  if (id == 0x37096c70) {
    return AuthRecoverPassword.deserialize(reader);
  }

  if (id == 0xbf9459b7) {
    return InvokeWithoutUpdates.deserialize(reader);
  }

  if (id == 0xa455de90) {
    return MessagesExportChatInvite.deserialize(reader);
  }

  if (id == 0x3eadb1bb) {
    return MessagesCheckChatInvite.deserialize(reader);
  }

  if (id == 0x6c50051c) {
    return MessagesImportChatInvite.deserialize(reader);
  }

  if (id == 0xc8a0ec74) {
    return MessagesGetStickerSet.deserialize(reader);
  }

  if (id == 0xc78fe460) {
    return MessagesInstallStickerSet.deserialize(reader);
  }

  if (id == 0xf96e55de) {
    return MessagesUninstallStickerSet.deserialize(reader);
  }

  if (id == 0xe6df7378) {
    return MessagesStartBot.deserialize(reader);
  }

  if (id == 0x5784d3e1) {
    return MessagesGetMessagesViews.deserialize(reader);
  }

  if (id == 0xcc104937) {
    return ChannelsReadHistory.deserialize(reader);
  }

  if (id == 0x84c1fd4e) {
    return ChannelsDeleteMessages.deserialize(reader);
  }

  if (id == 0xf44a8315) {
    return ChannelsReportSpam.deserialize(reader);
  }

  if (id == 0xad8c9a23) {
    return ChannelsGetMessages.deserialize(reader);
  }

  if (id == 0x77ced9d0) {
    return ChannelsGetParticipants.deserialize(reader);
  }

  if (id == 0xa0ab6cc6) {
    return ChannelsGetParticipant.deserialize(reader);
  }

  if (id == 0x0a7f6bbb) {
    return ChannelsGetChannels.deserialize(reader);
  }

  if (id == 0x08736a09) {
    return ChannelsGetFullChannel.deserialize(reader);
  }

  if (id == 0x91006707) {
    return ChannelsCreateChannel.deserialize(reader);
  }

  if (id == 0xd33c8902) {
    return ChannelsEditAdmin.deserialize(reader);
  }

  if (id == 0x566decd0) {
    return ChannelsEditTitle.deserialize(reader);
  }

  if (id == 0xf12e57c9) {
    return ChannelsEditPhoto.deserialize(reader);
  }

  if (id == 0x10e6bd2c) {
    return ChannelsCheckUsername.deserialize(reader);
  }

  if (id == 0x3514b3de) {
    return ChannelsUpdateUsername.deserialize(reader);
  }

  if (id == 0x24b524c5) {
    return ChannelsJoinChannel.deserialize(reader);
  }

  if (id == 0xf836aa95) {
    return ChannelsLeaveChannel.deserialize(reader);
  }

  if (id == 0xc9e33d54) {
    return ChannelsInviteToChannel.deserialize(reader);
  }

  if (id == 0xc0111fe3) {
    return ChannelsDeleteChannel.deserialize(reader);
  }

  if (id == 0x03173d78) {
    return UpdatesGetChannelDifference.deserialize(reader);
  }

  if (id == 0xa85bd1c2) {
    return MessagesEditChatAdmin.deserialize(reader);
  }

  if (id == 0xa2875319) {
    return MessagesMigrateChat.deserialize(reader);
  }

  if (id == 0x4bc6589a) {
    return MessagesSearchGlobal.deserialize(reader);
  }

  if (id == 0x78337739) {
    return MessagesReorderStickerSets.deserialize(reader);
  }

  if (id == 0xb1f2061f) {
    return MessagesGetDocumentByHash.deserialize(reader);
  }

  if (id == 0x5cf09635) {
    return MessagesGetSavedGifs.deserialize(reader);
  }

  if (id == 0x327a30cb) {
    return MessagesSaveGif.deserialize(reader);
  }

  if (id == 0x514e999d) {
    return MessagesGetInlineBotResults.deserialize(reader);
  }

  if (id == 0xbb12a419) {
    return MessagesSetInlineBotResults.deserialize(reader);
  }

  if (id == 0x3ebee86a) {
    return MessagesSendInlineBotResult.deserialize(reader);
  }

  if (id == 0xe63fadeb) {
    return ChannelsExportMessageLink.deserialize(reader);
  }

  if (id == 0x418d549c) {
    return ChannelsToggleSignatures.deserialize(reader);
  }

  if (id == 0xcae47523) {
    return AuthResendCode.deserialize(reader);
  }

  if (id == 0x1f040578) {
    return AuthCancelCode.deserialize(reader);
  }

  if (id == 0xfda68d36) {
    return MessagesGetMessageEditData.deserialize(reader);
  }

  if (id == 0xdfd14005) {
    return MessagesEditMessage.deserialize(reader);
  }

  if (id == 0x83557dba) {
    return MessagesEditInlineBotMessage.deserialize(reader);
  }

  if (id == 0x9342ca07) {
    return MessagesGetBotCallbackAnswer.deserialize(reader);
  }

  if (id == 0xd58f130a) {
    return MessagesSetBotCallbackAnswer.deserialize(reader);
  }

  if (id == 0x973478b6) {
    return ContactsGetTopPeers.deserialize(reader);
  }

  if (id == 0x1ae373ac) {
    return ContactsResetTopPeerRating.deserialize(reader);
  }

  if (id == 0xe470bcfd) {
    return MessagesGetPeerDialogs.deserialize(reader);
  }

  if (id == 0xd372c5ce) {
    return MessagesSaveDraft.deserialize(reader);
  }

  if (id == 0x6a3f8d65) {
    return MessagesGetAllDrafts.deserialize(reader);
  }

  if (id == 0x64780b14) {
    return MessagesGetFeaturedStickers.deserialize(reader);
  }

  if (id == 0x5b118126) {
    return MessagesReadFeaturedStickers.deserialize(reader);
  }

  if (id == 0x9da9403b) {
    return MessagesGetRecentStickers.deserialize(reader);
  }

  if (id == 0x392718f8) {
    return MessagesSaveRecentSticker.deserialize(reader);
  }

  if (id == 0x8999602d) {
    return MessagesClearRecentStickers.deserialize(reader);
  }

  if (id == 0x57f17692) {
    return MessagesGetArchivedStickers.deserialize(reader);
  }

  if (id == 0x1b3faa88) {
    return AccountSendConfirmPhoneCode.deserialize(reader);
  }

  if (id == 0x5f2178c3) {
    return AccountConfirmPhone.deserialize(reader);
  }

  if (id == 0xf8b036af) {
    return ChannelsGetAdminedPublicChannels.deserialize(reader);
  }

  if (id == 0x640f82b8) {
    return MessagesGetMaskStickers.deserialize(reader);
  }

  if (id == 0xcc5b67cc) {
    return MessagesGetAttachedStickers.deserialize(reader);
  }

  if (id == 0x8e48a188) {
    return AuthDropTempAuthKeys.deserialize(reader);
  }

  if (id == 0x8ef8ecc0) {
    return MessagesSetGameScore.deserialize(reader);
  }

  if (id == 0x15ad9f64) {
    return MessagesSetInlineGameScore.deserialize(reader);
  }

  if (id == 0xe822649d) {
    return MessagesGetGameHighScores.deserialize(reader);
  }

  if (id == 0x0f635e1b) {
    return MessagesGetInlineGameHighScores.deserialize(reader);
  }

  if (id == 0xe40ca104) {
    return MessagesGetCommonChats.deserialize(reader);
  }

  if (id == 0xec22cfcd) {
    return HelpSetBotUpdatesStatus.deserialize(reader);
  }

  if (id == 0x8d9692a3) {
    return MessagesGetWebPage.deserialize(reader);
  }

  if (id == 0xa731e257) {
    return MessagesToggleDialogPin.deserialize(reader);
  }

  if (id == 0x3b1adf37) {
    return MessagesReorderPinnedDialogs.deserialize(reader);
  }

  if (id == 0xd6b94df2) {
    return MessagesGetPinnedDialogs.deserialize(reader);
  }

  if (id == 0xaa2769ed) {
    return BotsSendCustomRequest.deserialize(reader);
  }

  if (id == 0xe6213f4d) {
    return BotsAnswerWebhookJSONQuery.deserialize(reader);
  }

  if (id == 0x24e6818d) {
    return UploadGetWebFile.deserialize(reader);
  }

  if (id == 0x37148dbb) {
    return PaymentsGetPaymentForm.deserialize(reader);
  }

  if (id == 0x2478d1cc) {
    return PaymentsGetPaymentReceipt.deserialize(reader);
  }

  if (id == 0xb6c8f12b) {
    return PaymentsValidateRequestedInfo.deserialize(reader);
  }

  if (id == 0x2d03522f) {
    return PaymentsSendPaymentForm.deserialize(reader);
  }

  if (id == 0x449e0b51) {
    return AccountGetTmpPassword.deserialize(reader);
  }

  if (id == 0x227d824b) {
    return PaymentsGetSavedInfo.deserialize(reader);
  }

  if (id == 0xd83d70c1) {
    return PaymentsClearSavedInfo.deserialize(reader);
  }

  if (id == 0xe5f672fa) {
    return MessagesSetBotShippingResults.deserialize(reader);
  }

  if (id == 0x09c2dd95) {
    return MessagesSetBotPrecheckoutResults.deserialize(reader);
  }

  if (id == 0x9021ab67) {
    return StickersCreateStickerSet.deserialize(reader);
  }

  if (id == 0xf7760f51) {
    return StickersRemoveStickerFromSet.deserialize(reader);
  }

  if (id == 0xffb6d4ca) {
    return StickersChangeStickerPosition.deserialize(reader);
  }

  if (id == 0x8653febe) {
    return StickersAddStickerToSet.deserialize(reader);
  }

  if (id == 0x14967978) {
    return MessagesUploadMedia.deserialize(reader);
  }

  if (id == 0x55451fa9) {
    return PhoneGetCallConfig.deserialize(reader);
  }

  if (id == 0x42ff96ed) {
    return PhoneRequestCall.deserialize(reader);
  }

  if (id == 0x3bd2b4a0) {
    return PhoneAcceptCall.deserialize(reader);
  }

  if (id == 0x2efe1722) {
    return PhoneConfirmCall.deserialize(reader);
  }

  if (id == 0x17d54f61) {
    return PhoneReceivedCall.deserialize(reader);
  }

  if (id == 0xb2cbc1c0) {
    return PhoneDiscardCall.deserialize(reader);
  }

  if (id == 0x59ead627) {
    return PhoneSetCallRating.deserialize(reader);
  }

  if (id == 0x277add7e) {
    return PhoneSaveCallDebug.deserialize(reader);
  }

  if (id == 0x395f69da) {
    return UploadGetCdnFile.deserialize(reader);
  }

  if (id == 0x9b2754a8) {
    return UploadReuploadCdnFile.deserialize(reader);
  }

  if (id == 0x52029342) {
    return HelpGetCdnConfig.deserialize(reader);
  }

  if (id == 0xf2f2330a) {
    return LangpackGetLangPack.deserialize(reader);
  }

  if (id == 0xefea3803) {
    return LangpackGetStrings.deserialize(reader);
  }

  if (id == 0xcd984aa5) {
    return LangpackGetDifference.deserialize(reader);
  }

  if (id == 0x42c6978f) {
    return LangpackGetLanguages.deserialize(reader);
  }

  if (id == 0x96e6cd81) {
    return ChannelsEditBanned.deserialize(reader);
  }

  if (id == 0x33ddf480) {
    return ChannelsGetAdminLog.deserialize(reader);
  }

  if (id == 0x91dc3f31) {
    return UploadGetCdnFileHashes.deserialize(reader);
  }

  if (id == 0xa1405817) {
    return MessagesSendScreenshotNotification.deserialize(reader);
  }

  if (id == 0xea8ca4f9) {
    return ChannelsSetStickers.deserialize(reader);
  }

  if (id == 0x04f1aaa9) {
    return MessagesGetFavedStickers.deserialize(reader);
  }

  if (id == 0xb9ffc55b) {
    return MessagesFaveSticker.deserialize(reader);
  }

  if (id == 0xeab5dc38) {
    return ChannelsReadMessageContents.deserialize(reader);
  }

  if (id == 0x879537f1) {
    return ContactsResetSaved.deserialize(reader);
  }

  if (id == 0xf107e790) {
    return MessagesGetUnreadMentions.deserialize(reader);
  }

  if (id == 0x9baa9647) {
    return ChannelsDeleteHistory.deserialize(reader);
  }

  if (id == 0x3dc0f114) {
    return HelpGetRecentMeUrls.deserialize(reader);
  }

  if (id == 0xeabbb94c) {
    return ChannelsTogglePreHistoryHidden.deserialize(reader);
  }

  if (id == 0x36e5bf4d) {
    return MessagesReadMentions.deserialize(reader);
  }

  if (id == 0x702a40e0) {
    return MessagesGetRecentLocations.deserialize(reader);
  }

  if (id == 0x37b74355) {
    return MessagesSendMultiMedia.deserialize(reader);
  }

  if (id == 0x5057c497) {
    return MessagesUploadEncryptedFile.deserialize(reader);
  }

  if (id == 0x182e6d6f) {
    return AccountGetWebAuthorizations.deserialize(reader);
  }

  if (id == 0x2d01b9ef) {
    return AccountResetWebAuthorization.deserialize(reader);
  }

  if (id == 0x682d2594) {
    return AccountResetWebAuthorizations.deserialize(reader);
  }

  if (id == 0x35705b8a) {
    return MessagesSearchStickerSets.deserialize(reader);
  }

  if (id == 0x9156982a) {
    return UploadGetFileHashes.deserialize(reader);
  }

  if (id == 0x2ca51fd1) {
    return HelpGetTermsOfServiceUpdate.deserialize(reader);
  }

  if (id == 0xee72f79a) {
    return HelpAcceptTermsOfService.deserialize(reader);
  }

  if (id == 0xb288bc7d) {
    return AccountGetAllSecureValues.deserialize(reader);
  }

  if (id == 0x73665bc2) {
    return AccountGetSecureValue.deserialize(reader);
  }

  if (id == 0x899fe31d) {
    return AccountSaveSecureValue.deserialize(reader);
  }

  if (id == 0xb880bc4b) {
    return AccountDeleteSecureValue.deserialize(reader);
  }

  if (id == 0x90c894b5) {
    return UsersSetSecureValueErrors.deserialize(reader);
  }

  if (id == 0xa929597a) {
    return AccountGetAuthorizationForm.deserialize(reader);
  }

  if (id == 0xf3ed4c73) {
    return AccountAcceptAuthorization.deserialize(reader);
  }

  if (id == 0xa5a356f9) {
    return AccountSendVerifyPhoneCode.deserialize(reader);
  }

  if (id == 0x4dd3a7f6) {
    return AccountVerifyPhone.deserialize(reader);
  }

  if (id == 0x98e037bb) {
    return AccountSendVerifyEmailCode.deserialize(reader);
  }

  if (id == 0x032da4cf) {
    return AccountVerifyEmail.deserialize(reader);
  }

  if (id == 0x3fedc75f) {
    return HelpGetDeepLinkInfo.deserialize(reader);
  }

  if (id == 0x82f1e39f) {
    return ContactsGetSaved.deserialize(reader);
  }

  if (id == 0x8341ecc0) {
    return ChannelsGetLeftChannels.deserialize(reader);
  }

  if (id == 0x8ef3eab0) {
    return AccountInitTakeoutSession.deserialize(reader);
  }

  if (id == 0x1d2652ee) {
    return AccountFinishTakeoutSession.deserialize(reader);
  }

  if (id == 0x1cff7e08) {
    return MessagesGetSplitRanges.deserialize(reader);
  }

  if (id == 0x365275f2) {
    return InvokeWithMessagesRange.deserialize(reader);
  }

  if (id == 0xaca9fd2e) {
    return InvokeWithTakeout.deserialize(reader);
  }

  if (id == 0xc286d98f) {
    return MessagesMarkDialogUnread.deserialize(reader);
  }

  if (id == 0x22e24e22) {
    return MessagesGetDialogUnreadMarks.deserialize(reader);
  }

  if (id == 0x8514bdda) {
    return ContactsToggleTopPeers.deserialize(reader);
  }

  if (id == 0x7e58ee9c) {
    return MessagesClearAllDrafts.deserialize(reader);
  }

  if (id == 0x61e3f854) {
    return HelpGetAppConfig.deserialize(reader);
  }

  if (id == 0x6f02f748) {
    return HelpSaveAppLog.deserialize(reader);
  }

  if (id == 0xc661ad08) {
    return HelpGetPassportConfig.deserialize(reader);
  }

  if (id == 0x6a596502) {
    return LangpackGetLanguage.deserialize(reader);
  }

  if (id == 0xd2aaf7ec) {
    return MessagesUpdatePinnedMessage.deserialize(reader);
  }

  if (id == 0x8fdf1920) {
    return AccountConfirmPasswordEmail.deserialize(reader);
  }

  if (id == 0x7a7f2a15) {
    return AccountResendPasswordEmail.deserialize(reader);
  }

  if (id == 0xc1cbd5b6) {
    return AccountCancelPasswordEmail.deserialize(reader);
  }

  if (id == 0xd360e72c) {
    return HelpGetSupportName.deserialize(reader);
  }

  if (id == 0x038a08d3) {
    return HelpGetUserInfo.deserialize(reader);
  }

  if (id == 0x66b91b70) {
    return HelpEditUserInfo.deserialize(reader);
  }

  if (id == 0x9f07c728) {
    return AccountGetContactSignUpNotification.deserialize(reader);
  }

  if (id == 0xcff43f61) {
    return AccountSetContactSignUpNotification.deserialize(reader);
  }

  if (id == 0x53577479) {
    return AccountGetNotifyExceptions.deserialize(reader);
  }

  if (id == 0x10ea6184) {
    return MessagesSendVote.deserialize(reader);
  }

  if (id == 0x73bb643b) {
    return MessagesGetPollResults.deserialize(reader);
  }

  if (id == 0x6e2be050) {
    return MessagesGetOnlines.deserialize(reader);
  }

  if (id == 0xdef60797) {
    return MessagesEditChatAbout.deserialize(reader);
  }

  if (id == 0xa5866b41) {
    return MessagesEditChatDefaultBannedRights.deserialize(reader);
  }

  if (id == 0xfc8ddbea) {
    return AccountGetWallPaper.deserialize(reader);
  }

  if (id == 0xe39a8f03) {
    return AccountUploadWallPaper.deserialize(reader);
  }

  if (id == 0x6c5a5b37) {
    return AccountSaveWallPaper.deserialize(reader);
  }

  if (id == 0xfeed5769) {
    return AccountInstallWallPaper.deserialize(reader);
  }

  if (id == 0xbb3b9804) {
    return AccountResetWallPapers.deserialize(reader);
  }

  if (id == 0x56da0b3f) {
    return AccountGetAutoDownloadSettings.deserialize(reader);
  }

  if (id == 0x76f36233) {
    return AccountSaveAutoDownloadSettings.deserialize(reader);
  }

  if (id == 0x35a0e062) {
    return MessagesGetEmojiKeywords.deserialize(reader);
  }

  if (id == 0x1508b6af) {
    return MessagesGetEmojiKeywordsDifference.deserialize(reader);
  }

  if (id == 0x4e9963b2) {
    return MessagesGetEmojiKeywordsLanguages.deserialize(reader);
  }

  if (id == 0xd5b10c26) {
    return MessagesGetEmojiURL.deserialize(reader);
  }

  if (id == 0x6847d0ab) {
    return FoldersEditPeerFolders.deserialize(reader);
  }

  if (id == 0x1bbcf300) {
    return MessagesGetSearchCounters.deserialize(reader);
  }

  if (id == 0xf5dad378) {
    return ChannelsGetGroupsForDiscussion.deserialize(reader);
  }

  if (id == 0x40582bb2) {
    return ChannelsSetDiscussionGroup.deserialize(reader);
  }

  if (id == 0x198fb446) {
    return MessagesRequestUrlAuth.deserialize(reader);
  }

  if (id == 0xb12c7125) {
    return MessagesAcceptUrlAuth.deserialize(reader);
  }

  if (id == 0x4facb138) {
    return MessagesHidePeerSettingsBar.deserialize(reader);
  }

  if (id == 0xe8f463d0) {
    return ContactsAddContact.deserialize(reader);
  }

  if (id == 0xf831a20f) {
    return ContactsAcceptContact.deserialize(reader);
  }

  if (id == 0x8f38cd1f) {
    return ChannelsEditCreator.deserialize(reader);
  }

  if (id == 0xd348bc44) {
    return ContactsGetLocated.deserialize(reader);
  }

  if (id == 0x58e63f6d) {
    return ChannelsEditLocation.deserialize(reader);
  }

  if (id == 0xedd49ef0) {
    return ChannelsToggleSlowMode.deserialize(reader);
  }

  if (id == 0xf516760b) {
    return MessagesGetScheduledHistory.deserialize(reader);
  }

  if (id == 0xbdbb0464) {
    return MessagesGetScheduledMessages.deserialize(reader);
  }

  if (id == 0xbd38850a) {
    return MessagesSendScheduledMessages.deserialize(reader);
  }

  if (id == 0x59ae2b16) {
    return MessagesDeleteScheduledMessages.deserialize(reader);
  }

  if (id == 0x1c3db333) {
    return AccountUploadTheme.deserialize(reader);
  }

  if (id == 0x652e4400) {
    return AccountCreateTheme.deserialize(reader);
  }

  if (id == 0x2bf40ccc) {
    return AccountUpdateTheme.deserialize(reader);
  }

  if (id == 0xf257106c) {
    return AccountSaveTheme.deserialize(reader);
  }

  if (id == 0xc727bb3b) {
    return AccountInstallTheme.deserialize(reader);
  }

  if (id == 0x3a5869ec) {
    return AccountGetTheme.deserialize(reader);
  }

  if (id == 0x7206e458) {
    return AccountGetThemes.deserialize(reader);
  }

  if (id == 0xb7e085fe) {
    return AuthExportLoginToken.deserialize(reader);
  }

  if (id == 0x95ac5ce4) {
    return AuthImportLoginToken.deserialize(reader);
  }

  if (id == 0xe894ad4d) {
    return AuthAcceptLoginToken.deserialize(reader);
  }

  if (id == 0xb574b16b) {
    return AccountSetContentSettings.deserialize(reader);
  }

  if (id == 0x8b9b4dae) {
    return AccountGetContentSettings.deserialize(reader);
  }

  if (id == 0x11e831ee) {
    return ChannelsGetInactiveChannels.deserialize(reader);
  }

  if (id == 0x65ad71dc) {
    return AccountGetMultiWallPapers.deserialize(reader);
  }

  if (id == 0xb86e380e) {
    return MessagesGetPollVotes.deserialize(reader);
  }

  if (id == 0xb5052fea) {
    return MessagesToggleStickerSets.deserialize(reader);
  }

  if (id == 0x2e79d779) {
    return PaymentsGetBankCardData.deserialize(reader);
  }

  if (id == 0xefd48c89) {
    return MessagesGetDialogFilters.deserialize(reader);
  }

  if (id == 0xa29cd42c) {
    return MessagesGetSuggestedDialogFilters.deserialize(reader);
  }

  if (id == 0x1ad4a04a) {
    return MessagesUpdateDialogFilter.deserialize(reader);
  }

  if (id == 0xc563c1e4) {
    return MessagesUpdateDialogFiltersOrder.deserialize(reader);
  }

  if (id == 0xab42441a) {
    return StatsGetBroadcastStats.deserialize(reader);
  }

  if (id == 0x621d5fa0) {
    return StatsLoadAsyncGraph.deserialize(reader);
  }

  if (id == 0xa76a5392) {
    return StickersSetStickerSetThumb.deserialize(reader);
  }

  if (id == 0x0517165a) {
    return BotsSetBotCommands.deserialize(reader);
  }

  if (id == 0x7ed094a1) {
    return MessagesGetOldFeaturedStickers.deserialize(reader);
  }

  if (id == 0xc0977421) {
    return HelpGetPromoData.deserialize(reader);
  }

  if (id == 0x1e251c95) {
    return HelpHidePromoData.deserialize(reader);
  }

  if (id == 0xff7a9383) {
    return PhoneSendSignalingData.deserialize(reader);
  }

  if (id == 0xdcdf8607) {
    return StatsGetMegagroupStats.deserialize(reader);
  }

  if (id == 0xeb2b4cf6) {
    return AccountGetGlobalPrivacySettings.deserialize(reader);
  }

  if (id == 0x1edaaac2) {
    return AccountSetGlobalPrivacySettings.deserialize(reader);
  }

  if (id == 0xf50dbaa1) {
    return HelpDismissSuggestion.deserialize(reader);
  }

  if (id == 0x735787a8) {
    return HelpGetCountriesList.deserialize(reader);
  }

  if (id == 0x22ddd30c) {
    return MessagesGetReplies.deserialize(reader);
  }

  if (id == 0x446972fd) {
    return MessagesGetDiscussionMessage.deserialize(reader);
  }

  if (id == 0xf731a9f4) {
    return MessagesReadDiscussion.deserialize(reader);
  }

  if (id == 0x29a8962c) {
    return ContactsBlockFromReplies.deserialize(reader);
  }

  if (id == 0x5f150144) {
    return StatsGetMessagePublicForwards.deserialize(reader);
  }

  if (id == 0xb6e0a3f5) {
    return StatsGetMessageStats.deserialize(reader);
  }

  if (id == 0xee22b9a8) {
    return MessagesUnpinAllMessages.deserialize(reader);
  }

  if (id == 0x48cdc6d8) {
    return PhoneCreateGroupCall.deserialize(reader);
  }

  if (id == 0xb132ff7b) {
    return PhoneJoinGroupCall.deserialize(reader);
  }

  if (id == 0x500377f9) {
    return PhoneLeaveGroupCall.deserialize(reader);
  }

  if (id == 0x7b393160) {
    return PhoneInviteToGroupCall.deserialize(reader);
  }

  if (id == 0x7a777135) {
    return PhoneDiscardGroupCall.deserialize(reader);
  }

  if (id == 0x74bbb43d) {
    return PhoneToggleGroupCallSettings.deserialize(reader);
  }

  if (id == 0x041845db) {
    return PhoneGetGroupCall.deserialize(reader);
  }

  if (id == 0xc558d8ab) {
    return PhoneGetGroupParticipants.deserialize(reader);
  }

  if (id == 0xb59cf977) {
    return PhoneCheckGroupCall.deserialize(reader);
  }

  if (id == 0x5bd0ee50) {
    return MessagesDeleteChat.deserialize(reader);
  }

  if (id == 0xf9cbe409) {
    return MessagesDeletePhoneCallHistory.deserialize(reader);
  }

  if (id == 0x43fe19f3) {
    return MessagesCheckHistoryImport.deserialize(reader);
  }

  if (id == 0x34090c3b) {
    return MessagesInitHistoryImport.deserialize(reader);
  }

  if (id == 0x2a862092) {
    return MessagesUploadImportedMedia.deserialize(reader);
  }

  if (id == 0xb43df344) {
    return MessagesStartHistoryImport.deserialize(reader);
  }

  if (id == 0xa2b5a3f6) {
    return MessagesGetExportedChatInvites.deserialize(reader);
  }

  if (id == 0x73746f5c) {
    return MessagesGetExportedChatInvite.deserialize(reader);
  }

  if (id == 0xbdca2f75) {
    return MessagesEditExportedChatInvite.deserialize(reader);
  }

  if (id == 0x56987bd5) {
    return MessagesDeleteRevokedExportedChatInvites.deserialize(reader);
  }

  if (id == 0xd464a42b) {
    return MessagesDeleteExportedChatInvite.deserialize(reader);
  }

  if (id == 0x3920e6ef) {
    return MessagesGetAdminsWithInvites.deserialize(reader);
  }

  if (id == 0xdf04dd4e) {
    return MessagesGetChatInviteImporters.deserialize(reader);
  }

  if (id == 0xb80e5fe4) {
    return MessagesSetHistoryTTL.deserialize(reader);
  }

  if (id == 0xfa8cc6f5) {
    return AccountReportProfilePhoto.deserialize(reader);
  }

  if (id == 0x0b290c69) {
    return ChannelsConvertToGigagroup.deserialize(reader);
  }

  if (id == 0x5dc60f03) {
    return MessagesCheckHistoryImportPeer.deserialize(reader);
  }

  if (id == 0xf128c708) {
    return PhoneToggleGroupCallRecord.deserialize(reader);
  }

  if (id == 0xa5273abf) {
    return PhoneEditGroupCallParticipant.deserialize(reader);
  }

  if (id == 0x1ca6ac0a) {
    return PhoneEditGroupCallTitle.deserialize(reader);
  }

  if (id == 0xef7c213a) {
    return PhoneGetGroupCallJoinAs.deserialize(reader);
  }

  if (id == 0xe6aa647f) {
    return PhoneExportGroupCallInvite.deserialize(reader);
  }

  if (id == 0x219c34e6) {
    return PhoneToggleGroupCallStartSubscription.deserialize(reader);
  }

  if (id == 0x5680e342) {
    return PhoneStartScheduledGroupCall.deserialize(reader);
  }

  if (id == 0x575e1f8c) {
    return PhoneSaveDefaultGroupCallJoinAs.deserialize(reader);
  }

  if (id == 0xcbea6bc4) {
    return PhoneJoinGroupCallPresentation.deserialize(reader);
  }

  if (id == 0x1c50d144) {
    return PhoneLeaveGroupCallPresentation.deserialize(reader);
  }

  if (id == 0x284b3639) {
    return StickersCheckShortName.deserialize(reader);
  }

  if (id == 0x4dafc503) {
    return StickersSuggestShortName.deserialize(reader);
  }

  if (id == 0x3d8de0f9) {
    return BotsResetBotCommands.deserialize(reader);
  }

  if (id == 0xe34c0dd6) {
    return BotsGetBotCommands.deserialize(reader);
  }

  if (id == 0x9308ce1b) {
    return AccountResetPassword.deserialize(reader);
  }

  if (id == 0x4c9409f6) {
    return AccountDeclinePasswordReset.deserialize(reader);
  }

  if (id == 0x0d36bf79) {
    return AuthCheckRecoveryPassword.deserialize(reader);
  }

  if (id == 0xd638de89) {
    return AccountGetChatThemes.deserialize(reader);
  }

  if (id == 0xe63be13f) {
    return MessagesSetChatTheme.deserialize(reader);
  }

  if (id == 0x31c1c44f) {
    return MessagesGetMessageReadParticipants.deserialize(reader);
  }

  if (id == 0x6aa3f6bd) {
    return MessagesGetSearchResultsCalendar.deserialize(reader);
  }

  if (id == 0x9c7f2f10) {
    return MessagesGetSearchResultsPositions.deserialize(reader);
  }

  if (id == 0x7fe7e815) {
    return MessagesHideChatJoinRequest.deserialize(reader);
  }

  if (id == 0xe085f4ea) {
    return MessagesHideAllChatJoinRequests.deserialize(reader);
  }

  if (id == 0xb11eafa2) {
    return MessagesToggleNoForwards.deserialize(reader);
  }

  if (id == 0xccfddf96) {
    return MessagesSaveDefaultSendAs.deserialize(reader);
  }

  if (id == 0x0dc770ee) {
    return ChannelsGetSendAs.deserialize(reader);
  }

  if (id == 0xbf899aa0) {
    return AccountSetAuthorizationTTL.deserialize(reader);
  }

  if (id == 0x40f48462) {
    return AccountChangeAuthorizationSettings.deserialize(reader);
  }

  if (id == 0x367544db) {
    return ChannelsDeleteParticipantHistory.deserialize(reader);
  }

  if (id == 0xd30d78d4) {
    return MessagesSendReaction.deserialize(reader);
  }

  if (id == 0x8bba90e6) {
    return MessagesGetMessagesReactions.deserialize(reader);
  }

  if (id == 0x461b3f48) {
    return MessagesGetMessageReactionsList.deserialize(reader);
  }

  if (id == 0x864b2581) {
    return MessagesSetChatAvailableReactions.deserialize(reader);
  }

  if (id == 0x18dea0ac) {
    return MessagesGetAvailableReactions.deserialize(reader);
  }

  if (id == 0x4f47a016) {
    return MessagesSetDefaultReaction.deserialize(reader);
  }

  if (id == 0x63183030) {
    return MessagesTranslateText.deserialize(reader);
  }

  if (id == 0x3223495b) {
    return MessagesGetUnreadReactions.deserialize(reader);
  }

  if (id == 0x54aa7f8e) {
    return MessagesReadReactions.deserialize(reader);
  }

  if (id == 0x8af94344) {
    return ContactsResolvePhone.deserialize(reader);
  }

  if (id == 0x1ab21940) {
    return PhoneGetGroupCallStreamChannels.deserialize(reader);
  }

  if (id == 0xdeb3abbf) {
    return PhoneGetGroupCallStreamRtmpUrl.deserialize(reader);
  }

  if (id == 0x107e31a0) {
    return MessagesSearchSentMedia.deserialize(reader);
  }

  if (id == 0x16fcc2cb) {
    return MessagesGetAttachMenuBots.deserialize(reader);
  }

  if (id == 0x77216192) {
    return MessagesGetAttachMenuBot.deserialize(reader);
  }

  if (id == 0x69f59d69) {
    return MessagesToggleBotInAttachMenu.deserialize(reader);
  }

  if (id == 0x269dc2c1) {
    return MessagesRequestWebView.deserialize(reader);
  }

  if (id == 0xb0d81a83) {
    return MessagesProlongWebView.deserialize(reader);
  }

  if (id == 0x413a3e73) {
    return MessagesRequestSimpleWebView.deserialize(reader);
  }

  if (id == 0x0a4314f5) {
    return MessagesSendWebViewResultMessage.deserialize(reader);
  }

  if (id == 0xdc0242c8) {
    return MessagesSendWebViewData.deserialize(reader);
  }

  if (id == 0x4504d54f) {
    return BotsSetBotMenuButton.deserialize(reader);
  }

  if (id == 0x9c60eb28) {
    return BotsGetBotMenuButton.deserialize(reader);
  }

  if (id == 0xe1902288) {
    return AccountGetSavedRingtones.deserialize(reader);
  }

  if (id == 0x3dea5b03) {
    return AccountSaveRingtone.deserialize(reader);
  }

  if (id == 0x831a83a2) {
    return AccountUploadRingtone.deserialize(reader);
  }

  if (id == 0x788464e1) {
    return BotsSetBotBroadcastDefaultAdminRights.deserialize(reader);
  }

  if (id == 0x925ec9ea) {
    return BotsSetBotGroupDefaultAdminRights.deserialize(reader);
  }

  if (id == 0x41248786) {
    return PhoneSaveCallLog.deserialize(reader);
  }

  if (id == 0xe4cb9580) {
    return ChannelsToggleJoinToSend.deserialize(reader);
  }

  if (id == 0x4c2985b6) {
    return ChannelsToggleJoinRequest.deserialize(reader);
  }

  if (id == 0x0f91b065) {
    return PaymentsExportInvoice.deserialize(reader);
  }

  if (id == 0x269e9a49) {
    return MessagesTranscribeAudio.deserialize(reader);
  }

  if (id == 0x7f1d072f) {
    return MessagesRateTranscribedAudio.deserialize(reader);
  }

  if (id == 0x80ed747d) {
    return PaymentsAssignAppStoreTransaction.deserialize(reader);
  }

  if (id == 0xdffd50d3) {
    return PaymentsAssignPlayMarketTransaction.deserialize(reader);
  }

  if (id == 0x9fc19eb6) {
    return PaymentsCanPurchasePremium.deserialize(reader);
  }

  if (id == 0xb81b93d4) {
    return HelpGetPremiumPromo.deserialize(reader);
  }

  if (id == 0xd9ab0f54) {
    return MessagesGetCustomEmojiDocuments.deserialize(reader);
  }

  if (id == 0xfbfca18f) {
    return MessagesGetEmojiStickers.deserialize(reader);
  }

  if (id == 0x0ecf6736) {
    return MessagesGetFeaturedEmojiStickers.deserialize(reader);
  }

  if (id == 0xfbd3de6b) {
    return AccountUpdateEmojiStatus.deserialize(reader);
  }

  if (id == 0xd6753386) {
    return AccountGetDefaultEmojiStatuses.deserialize(reader);
  }

  if (id == 0x0f578105) {
    return AccountGetRecentEmojiStatuses.deserialize(reader);
  }

  if (id == 0x18201aae) {
    return AccountClearRecentEmojiStatuses.deserialize(reader);
  }

  if (id == 0x3f64c076) {
    return MessagesReportReaction.deserialize(reader);
  }

  if (id == 0xbb8125ba) {
    return MessagesGetTopReactions.deserialize(reader);
  }

  if (id == 0x39461db2) {
    return MessagesGetRecentReactions.deserialize(reader);
  }

  if (id == 0x9dfeefb4) {
    return MessagesClearRecentReactions.deserialize(reader);
  }

  if (id == 0x84f80814) {
    return MessagesGetExtendedMedia.deserialize(reader);
  }

  if (id == 0x2db873a9) {
    return AuthImportWebTokenAuthorization.deserialize(reader);
  }

  if (id == 0xef500eab) {
    return AccountReorderUsernames.deserialize(reader);
  }

  if (id == 0x58d6b376) {
    return AccountToggleUsername.deserialize(reader);
  }

  if (id == 0xb45ced1d) {
    return ChannelsReorderUsernames.deserialize(reader);
  }

  if (id == 0x50f24105) {
    return ChannelsToggleUsername.deserialize(reader);
  }

  if (id == 0x0a245dd3) {
    return ChannelsDeactivateAllUsernames.deserialize(reader);
  }

  if (id == 0xa4298b29) {
    return ChannelsToggleForum.deserialize(reader);
  }

  if (id == 0xf40c0224) {
    return ChannelsCreateForumTopic.deserialize(reader);
  }

  if (id == 0x0de560d1) {
    return ChannelsGetForumTopics.deserialize(reader);
  }

  if (id == 0xb0831eb9) {
    return ChannelsGetForumTopicsByID.deserialize(reader);
  }

  if (id == 0xf4dfa185) {
    return ChannelsEditForumTopic.deserialize(reader);
  }

  if (id == 0x6c2d9026) {
    return ChannelsUpdatePinnedForumTopic.deserialize(reader);
  }

  if (id == 0x34435f2d) {
    return ChannelsDeleteTopicHistory.deserialize(reader);
  }

  if (id == 0x2950a18f) {
    return ChannelsReorderPinnedForumTopics.deserialize(reader);
  }

  if (id == 0x68f3e4eb) {
    return ChannelsToggleAntiSpam.deserialize(reader);
  }

  if (id == 0xa850a693) {
    return ChannelsReportAntiSpamFalsePositive.deserialize(reader);
  }

  if (id == 0x9eb51445) {
    return MessagesSetDefaultHistoryTTL.deserialize(reader);
  }

  if (id == 0x658b7188) {
    return MessagesGetDefaultHistoryTTL.deserialize(reader);
  }

  if (id == 0xf8654027) {
    return ContactsExportContactToken.deserialize(reader);
  }

  if (id == 0x13005788) {
    return ContactsImportContactToken.deserialize(reader);
  }

  if (id == 0xe14c4a71) {
    return PhotosUploadContactProfilePhoto.deserialize(reader);
  }

  if (id == 0x6a6e7854) {
    return ChannelsToggleParticipantsHidden.deserialize(reader);
  }

  if (id == 0x91b2d060) {
    return MessagesSendBotRequestedPeer.deserialize(reader);
  }

  if (id == 0xe2750328) {
    return AccountGetDefaultProfilePhotoEmojis.deserialize(reader);
  }

  if (id == 0x915860ae) {
    return AccountGetDefaultGroupPhotoEmojis.deserialize(reader);
  }

  if (id == 0x8e39261e) {
    return AuthRequestFirebaseSms.deserialize(reader);
  }

  if (id == 0x7488ce5b) {
    return MessagesGetEmojiGroups.deserialize(reader);
  }

  if (id == 0x2ecd56cd) {
    return MessagesGetEmojiStatusGroups.deserialize(reader);
  }

  if (id == 0x21a548f3) {
    return MessagesGetEmojiProfilePhotoGroups.deserialize(reader);
  }

  if (id == 0x2c11c0d7) {
    return MessagesSearchCustomEmoji.deserialize(reader);
  }

  if (id == 0xe47cb579) {
    return MessagesTogglePeerTranslations.deserialize(reader);
  }

  if (id == 0xadcbbcda) {
    return AccountGetAutoSaveSettings.deserialize(reader);
  }

  if (id == 0xd69b8361) {
    return AccountSaveAutoSaveSettings.deserialize(reader);
  }

  if (id == 0x53bc0020) {
    return AccountDeleteAutoSaveExceptions.deserialize(reader);
  }

  if (id == 0xf5537ebc) {
    return StickersChangeSticker.deserialize(reader);
  }

  if (id == 0x124b1c00) {
    return StickersRenameStickerSet.deserialize(reader);
  }

  if (id == 0x87704394) {
    return StickersDeleteStickerSet.deserialize(reader);
  }

  if (id == 0x34fdc5c3) {
    return MessagesGetBotApp.deserialize(reader);
  }

  if (id == 0x53618bce) {
    return MessagesRequestAppWebView.deserialize(reader);
  }

  if (id == 0x10cf3123) {
    return BotsSetBotInfo.deserialize(reader);
  }

  if (id == 0xdcd914fd) {
    return BotsGetBotInfo.deserialize(reader);
  }

  if (id == 0x7e960193) {
    return AuthResetLoginEmail.deserialize(reader);
  }

  if (id == 0x8472478e) {
    return ChatlistsExportChatlistInvite.deserialize(reader);
  }

  if (id == 0x719c5c5e) {
    return ChatlistsDeleteExportedInvite.deserialize(reader);
  }

  if (id == 0x653db63d) {
    return ChatlistsEditExportedInvite.deserialize(reader);
  }

  if (id == 0xce03da83) {
    return ChatlistsGetExportedInvites.deserialize(reader);
  }

  if (id == 0x41c10fff) {
    return ChatlistsCheckChatlistInvite.deserialize(reader);
  }

  if (id == 0xa6b1e39a) {
    return ChatlistsJoinChatlistInvite.deserialize(reader);
  }

  if (id == 0x89419521) {
    return ChatlistsGetChatlistUpdates.deserialize(reader);
  }

  if (id == 0xe089f8f5) {
    return ChatlistsJoinChatlistUpdates.deserialize(reader);
  }

  if (id == 0x66e486fb) {
    return ChatlistsHideChatlistUpdates.deserialize(reader);
  }

  if (id == 0xfdbcd714) {
    return ChatlistsGetLeaveChatlistSuggestions.deserialize(reader);
  }

  if (id == 0x74fae13a) {
    return ChatlistsLeaveChatlist.deserialize(reader);
  }

  if (id == 0x9709b1c2) {
    return BotsReorderUsernames.deserialize(reader);
  }

  if (id == 0x053ca973) {
    return BotsToggleUsername.deserialize(reader);
  }

  if (id == 0x8ffacae1) {
    return MessagesSetChatWallPaper.deserialize(reader);
  }

  if (id == 0xca8ae8ba) {
    return AccountInvalidateSignInCodes.deserialize(reader);
  }

  if (id == 0xba6705f0) {
    return ContactsEditCloseFriends.deserialize(reader);
  }

  if (id == 0xc7dfdfdd) {
    return StoriesCanSendStory.deserialize(reader);
  }

  if (id == 0xe4e6694b) {
    return StoriesSendStory.deserialize(reader);
  }

  if (id == 0xb583ba46) {
    return StoriesEditStory.deserialize(reader);
  }

  if (id == 0xae59db5f) {
    return StoriesDeleteStories.deserialize(reader);
  }

  if (id == 0x9a75a1ef) {
    return StoriesTogglePinned.deserialize(reader);
  }

  if (id == 0xeeb0d625) {
    return StoriesGetAllStories.deserialize(reader);
  }

  if (id == 0x5821a5dc) {
    return StoriesGetPinnedStories.deserialize(reader);
  }

  if (id == 0xb4352016) {
    return StoriesGetStoriesArchive.deserialize(reader);
  }

  if (id == 0x5774ca74) {
    return StoriesGetStoriesByID.deserialize(reader);
  }

  if (id == 0x7c2557c4) {
    return StoriesToggleAllStoriesHidden.deserialize(reader);
  }

  if (id == 0xa556dac8) {
    return StoriesReadStories.deserialize(reader);
  }

  if (id == 0xb2028afb) {
    return StoriesIncrementStoryViews.deserialize(reader);
  }

  if (id == 0x7ed23c57) {
    return StoriesGetStoryViewsList.deserialize(reader);
  }

  if (id == 0x28e16cc8) {
    return StoriesGetStoriesViews.deserialize(reader);
  }

  if (id == 0x7b8def20) {
    return StoriesExportStoryLink.deserialize(reader);
  }

  if (id == 0x19d8eb45) {
    return StoriesReport.deserialize(reader);
  }

  if (id == 0x57bbd166) {
    return StoriesActivateStealthMode.deserialize(reader);
  }

  if (id == 0x94c65c76) {
    return ContactsSetBlocked.deserialize(reader);
  }

  if (id == 0x7fd736b2) {
    return StoriesSendReaction.deserialize(reader);
  }

  if (id == 0x1359f4e6) {
    return BotsCanSendMessage.deserialize(reader);
  }

  if (id == 0xf132e3ef) {
    return BotsAllowSendMessage.deserialize(reader);
  }

  if (id == 0x087fc5e7) {
    return BotsInvokeWebViewCustomMethod.deserialize(reader);
  }

  if (id == 0x2c4ada50) {
    return StoriesGetPeerStories.deserialize(reader);
  }

  if (id == 0x9b5ae7f9) {
    return StoriesGetAllReadPeerStories.deserialize(reader);
  }

  if (id == 0x535983c3) {
    return StoriesGetPeerMaxIDs.deserialize(reader);
  }

  if (id == 0xa56a8b60) {
    return StoriesGetChatsToSend.deserialize(reader);
  }

  if (id == 0xbd0415c4) {
    return StoriesTogglePeerStoriesHidden.deserialize(reader);
  }

  if (id == 0x2757ba54) {
    return PaymentsGetPremiumGiftCodeOptions.deserialize(reader);
  }

  if (id == 0x8e51b4c1) {
    return PaymentsCheckGiftCode.deserialize(reader);
  }

  if (id == 0xf6e26854) {
    return PaymentsApplyGiftCode.deserialize(reader);
  }

  if (id == 0xf4239425) {
    return PaymentsGetGiveawayInfo.deserialize(reader);
  }

  if (id == 0x5ff58f20) {
    return PaymentsLaunchPrepaidGiveaway.deserialize(reader);
  }

  if (id == 0x7cefa15d) {
    return AccountUpdateColor.deserialize(reader);
  }

  if (id == 0xd8aa3671) {
    return ChannelsUpdateColor.deserialize(reader);
  }

  if (id == 0xa60ab9ce) {
    return AccountGetDefaultBackgroundEmojis.deserialize(reader);
  }

  if (id == 0x60f67660) {
    return PremiumGetBoostsList.deserialize(reader);
  }

  if (id == 0x0be77b4a) {
    return PremiumGetMyBoosts.deserialize(reader);
  }

  if (id == 0x6b7da746) {
    return PremiumApplyBoost.deserialize(reader);
  }

  if (id == 0x042f1f61) {
    return PremiumGetBoostsStatus.deserialize(reader);
  }

  if (id == 0x39854d1f) {
    return PremiumGetUserBoosts.deserialize(reader);
  }

  if (id == 0x9738bb15) {
    return ChannelsToggleViewForumAsMessages.deserialize(reader);
  }

  if (id == 0x92b4494c) {
    return MessagesSearchEmojiStickerSets.deserialize(reader);
  }

  if (id == 0x25a71742) {
    return ChannelsGetChannelRecommendations.deserialize(reader);
  }

  if (id == 0x374fef40) {
    return StatsGetStoryStats.deserialize(reader);
  }

  if (id == 0xa6437ef6) {
    return StatsGetStoryPublicForwards.deserialize(reader);
  }

  if (id == 0xda80f42f) {
    return HelpGetPeerColors.deserialize(reader);
  }

  if (id == 0xabcfa9fd) {
    return HelpGetPeerProfileColors.deserialize(reader);
  }

  if (id == 0xb9b2881f) {
    return StoriesGetStoryReactionsList.deserialize(reader);
  }

  if (id == 0xf0d3e6a8) {
    return ChannelsUpdateEmojiStatus.deserialize(reader);
  }

  if (id == 0x7727a7d5) {
    return AccountGetChannelDefaultEmojiStatuses.deserialize(reader);
  }

  if (id == 0x35a9e0d5) {
    return AccountGetChannelRestrictedStatusEmojis.deserialize(reader);
  }

  if (id == 0x5381d21a) {
    return MessagesGetSavedDialogs.deserialize(reader);
  }

  if (id == 0x3d9a414d) {
    return MessagesGetSavedHistory.deserialize(reader);
  }

  if (id == 0x6e98102b) {
    return MessagesDeleteSavedHistory.deserialize(reader);
  }

  if (id == 0xd63d94e0) {
    return MessagesGetPinnedSavedDialogs.deserialize(reader);
  }

  if (id == 0xac81bbde) {
    return MessagesToggleSavedDialogPin.deserialize(reader);
  }

  if (id == 0x8b716587) {
    return MessagesReorderPinnedSavedDialogs.deserialize(reader);
  }

  if (id == 0x3637e05b) {
    return MessagesGetSavedReactionTags.deserialize(reader);
  }

  if (id == 0x60297dec) {
    return MessagesUpdateSavedReactionTag.deserialize(reader);
  }

  if (id == 0xbdf93428) {
    return MessagesGetDefaultTagReactions.deserialize(reader);
  }

  if (id == 0x8c4bfe5d) {
    return MessagesGetOutboxReadDate.deserialize(reader);
  }

  if (id == 0xa622aa10) {
    return UsersGetIsPremiumRequiredToContact.deserialize(reader);
  }

  if (id == 0xad399cee) {
    return ChannelsSetBoostsToUnblockRestrictions.deserialize(reader);
  }

  if (id == 0x3cd930b7) {
    return ChannelsSetEmojiStickers.deserialize(reader);
  }

  if (id == 0x0edc39d0) {
    return SmsjobsIsEligibleToJoin.deserialize(reader);
  }

  if (id == 0xa74ece2d) {
    return SmsjobsJoin.deserialize(reader);
  }

  if (id == 0x9898ad73) {
    return SmsjobsLeave.deserialize(reader);
  }

  if (id == 0x093fa0bf) {
    return SmsjobsUpdateSettings.deserialize(reader);
  }

  if (id == 0x10a698e8) {
    return SmsjobsGetStatus.deserialize(reader);
  }

  if (id == 0x778d902f) {
    return SmsjobsGetSmsJob.deserialize(reader);
  }

  if (id == 0x4f1ebf24) {
    return SmsjobsFinishJob.deserialize(reader);
  }

  if (id == 0x49b30240) {
    return HelpGetTimezonesList.deserialize(reader);
  }

  if (id == 0x4b00e066) {
    return AccountUpdateBusinessWorkHours.deserialize(reader);
  }

  if (id == 0x9e6b131a) {
    return AccountUpdateBusinessLocation.deserialize(reader);
  }

  if (id == 0x66cdafc4) {
    return AccountUpdateBusinessGreetingMessage.deserialize(reader);
  }

  if (id == 0xa26a7fa5) {
    return AccountUpdateBusinessAwayMessage.deserialize(reader);
  }

  if (id == 0xd483f2a8) {
    return MessagesGetQuickReplies.deserialize(reader);
  }

  if (id == 0x60331907) {
    return MessagesReorderQuickReplies.deserialize(reader);
  }

  if (id == 0xf1d0fbd3) {
    return MessagesCheckQuickReplyShortcut.deserialize(reader);
  }

  if (id == 0x5c003cef) {
    return MessagesEditQuickReplyShortcut.deserialize(reader);
  }

  if (id == 0x3cc04740) {
    return MessagesDeleteQuickReplyShortcut.deserialize(reader);
  }

  if (id == 0x94a495c3) {
    return MessagesGetQuickReplyMessages.deserialize(reader);
  }

  if (id == 0x6c750de1) {
    return MessagesSendQuickReplyMessages.deserialize(reader);
  }

  if (id == 0xe105e910) {
    return MessagesDeleteQuickReplyMessages.deserialize(reader);
  }

  if (id == 0x43d8521d) {
    return AccountUpdateConnectedBot.deserialize(reader);
  }

  if (id == 0x4ea4c80f) {
    return AccountGetConnectedBots.deserialize(reader);
  }

  if (id == 0xfd2dda49) {
    return MessagesToggleDialogFilterTags.deserialize(reader);
  }

  if (id == 0xdd289f8e) {
    return InvokeWithBusinessConnection.deserialize(reader);
  }

  if (id == 0x76a86270) {
    return AccountGetBotBusinessConnection.deserialize(reader);
  }

  if (id == 0xa614d034) {
    return AccountUpdateBusinessIntro.deserialize(reader);
  }

  if (id == 0x4696459a) {
    return StickersReplaceSticker.deserialize(reader);
  }

  if (id == 0xd0b5e1fc) {
    return MessagesGetMyStickers.deserialize(reader);
  }

  if (id == 0xbe1e85ba) {
    return FragmentGetCollectibleInfo.deserialize(reader);
  }

  if (id == 0x646e1097) {
    return AccountToggleConnectedBotPaused.deserialize(reader);
  }

  if (id == 0x5e437ed9) {
    return AccountDisablePeerConnectedBot.deserialize(reader);
  }

  if (id == 0xcc6e0c11) {
    return AccountUpdateBirthday.deserialize(reader);
  }

  if (id == 0xdaeda864) {
    return ContactsGetBirthdays.deserialize(reader);
  }

  if (id == 0x8851e68e) {
    return AccountCreateBusinessChatLink.deserialize(reader);
  }

  if (id == 0x8c3410af) {
    return AccountEditBusinessChatLink.deserialize(reader);
  }

  if (id == 0x60073674) {
    return AccountDeleteBusinessChatLink.deserialize(reader);
  }

  if (id == 0x6f70dde1) {
    return AccountGetBusinessChatLinks.deserialize(reader);
  }

  if (id == 0x5492e5ee) {
    return AccountResolveBusinessChatLink.deserialize(reader);
  }

  if (id == 0xd94305e0) {
    return AccountUpdatePersonalChannel.deserialize(reader);
  }

  if (id == 0xf788ee19) {
    return StatsGetBroadcastRevenueStats.deserialize(reader);
  }

  if (id == 0x9df4faad) {
    return StatsGetBroadcastRevenueWithdrawalUrl.deserialize(reader);
  }

  if (id == 0x70990b6d) {
    return StatsGetBroadcastRevenueTransactions.deserialize(reader);
  }

  if (id == 0x9ae91519) {
    return ChannelsRestrictSponsoredMessages.deserialize(reader);
  }

  if (id == 0xb9d9a38d) {
    return AccountToggleSponsoredMessages.deserialize(reader);
  }

  if (id == 0x0b297e9b) {
    return StoriesTogglePinnedToTop.deserialize(reader);
  }

  if (id == 0x06dd654c) {
    return AccountGetReactionsNotifySettings.deserialize(reader);
  }

  if (id == 0x316ce548) {
    return AccountSetReactionsNotifySettings.deserialize(reader);
  }

  if (id == 0xcb9deff6) {
    return AuthReportMissingCode.deserialize(reader);
  }

  if (id == 0x1dd840f5) {
    return MessagesGetEmojiStickerGroups.deserialize(reader);
  }

  if (id == 0x1df92984) {
    return InvokeWithGooglePlayIntegrity.deserialize(reader);
  }

  if (id == 0x0dae54f8) {
    return InvokeWithApnsSecret.deserialize(reader);
  }

  if (id == 0xdea20a39) {
    return MessagesGetAvailableEffects.deserialize(reader);
  }

  if (id == 0xd19f987b) {
    return ChannelsSearchPosts.deserialize(reader);
  }

  if (id == 0x0589ee75) {
    return MessagesEditFactCheck.deserialize(reader);
  }

  if (id == 0xd1da940c) {
    return MessagesDeleteFactCheck.deserialize(reader);
  }

  if (id == 0xb9cdc5ee) {
    return MessagesGetFactCheck.deserialize(reader);
  }

  if (id == 0xc00ec7d3) {
    return PaymentsGetStarsTopupOptions.deserialize(reader);
  }

  if (id == 0x104fcfa7) {
    return PaymentsGetStarsStatus.deserialize(reader);
  }

  if (id == 0x69da4557) {
    return PaymentsGetStarsTransactions.deserialize(reader);
  }

  if (id == 0x7998c914) {
    return PaymentsSendStarsForm.deserialize(reader);
  }

  if (id == 0x25ae8f4a) {
    return PaymentsRefundStarsCharge.deserialize(reader);
  }

  if (id == 0xd1810907) {
    return StoriesSearchPosts.deserialize(reader);
  }

  if (id == 0xd91ffad6) {
    return PaymentsGetStarsRevenueStats.deserialize(reader);
  }

  if (id == 0x13bbe8b3) {
    return PaymentsGetStarsRevenueWithdrawalUrl.deserialize(reader);
  }

  if (id == 0xd1d7efc5) {
    return PaymentsGetStarsRevenueAdsAccountUrl.deserialize(reader);
  }

  if (id == 0x27842d2e) {
    return PaymentsGetStarsTransactionsByID.deserialize(reader);
  }

  if (id == 0xd3c96bc8) {
    return PaymentsGetStarsGiftOptions.deserialize(reader);
  }

  if (id == 0xc2510192) {
    return BotsGetPopularAppBots.deserialize(reader);
  }

  if (id == 0x17aeb75a) {
    return BotsAddPreviewMedia.deserialize(reader);
  }

  if (id == 0x8525606f) {
    return BotsEditPreviewMedia.deserialize(reader);
  }

  if (id == 0x2d0135b3) {
    return BotsDeletePreviewMedia.deserialize(reader);
  }

  if (id == 0xb627f3aa) {
    return BotsReorderPreviewMedias.deserialize(reader);
  }

  if (id == 0x423ab3ad) {
    return BotsGetPreviewInfo.deserialize(reader);
  }

  if (id == 0xa2a5594d) {
    return BotsGetPreviewMedias.deserialize(reader);
  }

  if (id == 0xc9e01e7b) {
    return MessagesRequestMainWebView.deserialize(reader);
  }

  if (id == 0x032512c5) {
    return PaymentsGetStarsSubscriptions.deserialize(reader);
  }

  if (id == 0xc7770878) {
    return PaymentsChangeStarsSubscription.deserialize(reader);
  }

  if (id == 0xcc5bebb3) {
    return PaymentsFulfillStarsSubscription.deserialize(reader);
  }

  if (id == 0x9dd6a67b) {
    return MessagesSendPaidReaction.deserialize(reader);
  }

  if (id == 0x849ad397) {
    return MessagesTogglePaidReactionPrivacy.deserialize(reader);
  }

  if (id == 0xbd1efd3e) {
    return PaymentsGetStarsGiveawayOptions.deserialize(reader);
  }

  if (id == 0x472455aa) {
    return MessagesGetPaidReactionPrivacy.deserialize(reader);
  }

  if (id == 0xc4563590) {
    return PaymentsGetStarGifts.deserialize(reader);
  }

  if (id == 0x5e72c7e1) {
    return PaymentsGetUserStarGifts.deserialize(reader);
  }

  if (id == 0x87acf08e) {
    return PaymentsSaveStarGift.deserialize(reader);
  }

  if (id == 0x0421e027) {
    return PaymentsConvertStarGift.deserialize(reader);
  }

  if (id == 0x673ad8f1) {
    return MessagesViewSponsoredMessage.deserialize(reader);
  }

  if (id == 0x0f093465) {
    return MessagesClickSponsoredMessage.deserialize(reader);
  }

  if (id == 0x1af3dbb8) {
    return MessagesReportSponsoredMessage.deserialize(reader);
  }

  if (id == 0x9bd2f439) {
    return MessagesGetSponsoredMessages.deserialize(reader);
  }

  if (id == 0xf21f7f2f) {
    return MessagesSavePreparedInlineMessage.deserialize(reader);
  }

  if (id == 0x857ebdb8) {
    return MessagesGetPreparedInlineMessage.deserialize(reader);
  }

  if (id == 0xed9f30c5) {
    return BotsUpdateUserEmojiStatus.deserialize(reader);
  }

  if (id == 0x06de6392) {
    return BotsToggleUserEmojiStatusPermission.deserialize(reader);
  }

  if (id == 0x50077589) {
    return BotsCheckDownloadFileParams.deserialize(reader);
  }

  if (id == 0x6dfa0622) {
    return PaymentsBotCancelStarsSubscription.deserialize(reader);
  }

  if (id == 0xb0711d83) {
    return BotsGetAdminedBots.deserialize(reader);
  }

  if (id == 0x778b5ab3) {
    return BotsUpdateStarRefProgram.deserialize(reader);
  }

  if (id == 0x5869a553) {
    return PaymentsGetConnectedStarRefBots.deserialize(reader);
  }

  if (id == 0xb7d998f0) {
    return PaymentsGetConnectedStarRefBot.deserialize(reader);
  }

  if (id == 0x0d6b48f7) {
    return PaymentsGetSuggestedStarRefBots.deserialize(reader);
  }

  if (id == 0x7ed5348a) {
    return PaymentsConnectStarRefBot.deserialize(reader);
  }

  if (id == 0xe4fca4a3) {
    return PaymentsEditConnectedStarRefBot.deserialize(reader);
  }

  if (id == 0x29b1c66a) {
    return MessagesSearchStickers.deserialize(reader);
  }

  // From end-to-end.tl

  if (id == 0x1f814f1f) {
    return DecryptedMessage008.deserialize(reader);
  }

  if (id == 0x204d3878) {
    return DecryptedMessage017.deserialize(reader);
  }

  if (id == 0x36b091de) {
    return DecryptedMessage045.deserialize(reader);
  }

  if (id == 0x91cc4674) {
    return DecryptedMessage073.deserialize(reader);
  }

  if (id == 0xaa48327d) {
    return DecryptedMessageService008.deserialize(reader);
  }

  if (id == 0x73164160) {
    return DecryptedMessageService017.deserialize(reader);
  }

  if (id == 0x089f5c4a) {
    return DecryptedMessageMediaEmpty008.deserialize(reader);
  }

  if (id == 0x32798a8c) {
    return DecryptedMessageMediaPhoto008.deserialize(reader);
  }

  if (id == 0xf1fa8d78) {
    return DecryptedMessageMediaPhoto045.deserialize(reader);
  }

  if (id == 0x4cee6ef3) {
    return DecryptedMessageMediaVideo008.deserialize(reader);
  }

  if (id == 0x524a415d) {
    return DecryptedMessageMediaVideo017.deserialize(reader);
  }

  if (id == 0x970c8c0e) {
    return DecryptedMessageMediaVideo045.deserialize(reader);
  }

  if (id == 0x35480a59) {
    return DecryptedMessageMediaGeoPoint008.deserialize(reader);
  }

  if (id == 0x588a0a97) {
    return DecryptedMessageMediaContact008.deserialize(reader);
  }

  if (id == 0xa1733aec) {
    return DecryptedMessageActionSetMessageTTL008.deserialize(reader);
  }

  if (id == 0xb095434b) {
    return DecryptedMessageMediaDocument008.deserialize(reader);
  }

  if (id == 0x7afe8ae2) {
    return DecryptedMessageMediaDocument045.deserialize(reader);
  }

  if (id == 0x6abd9782) {
    return DecryptedMessageMediaDocument143.deserialize(reader);
  }

  if (id == 0x6080758f) {
    return DecryptedMessageMediaAudio008.deserialize(reader);
  }

  if (id == 0x57e0a9cb) {
    return DecryptedMessageMediaAudio017.deserialize(reader);
  }

  if (id == 0x0c4f40be) {
    return DecryptedMessageActionReadMessages008.deserialize(reader);
  }

  if (id == 0x65614304) {
    return DecryptedMessageActionDeleteMessages008.deserialize(reader);
  }

  if (id == 0x8ac1f475) {
    return DecryptedMessageActionScreenshotMessages008.deserialize(reader);
  }

  if (id == 0x6719e45c) {
    return DecryptedMessageActionFlushHistory008.deserialize(reader);
  }

  if (id == 0x1be31789) {
    return DecryptedMessageLayer017.deserialize(reader);
  }

  if (id == 0x16bf744e) {
    return SendMessageTypingAction017.deserialize(reader);
  }

  if (id == 0xfd5ec8f5) {
    return SendMessageCancelAction017.deserialize(reader);
  }

  if (id == 0xa187d66f) {
    return SendMessageRecordVideoAction017.deserialize(reader);
  }

  if (id == 0x92042ff7) {
    return SendMessageUploadVideoAction017.deserialize(reader);
  }

  if (id == 0xd52f73f7) {
    return SendMessageRecordAudioAction017.deserialize(reader);
  }

  if (id == 0xe6ac8a6f) {
    return SendMessageUploadAudioAction017.deserialize(reader);
  }

  if (id == 0x990a3c1a) {
    return SendMessageUploadPhotoAction017.deserialize(reader);
  }

  if (id == 0x8faee98e) {
    return SendMessageUploadDocumentAction017.deserialize(reader);
  }

  if (id == 0x176f8ba1) {
    return SendMessageGeoLocationAction017.deserialize(reader);
  }

  if (id == 0x628cbc6f) {
    return SendMessageChooseContactAction017.deserialize(reader);
  }

  if (id == 0x511110b0) {
    return DecryptedMessageActionResend017.deserialize(reader);
  }

  if (id == 0xf3048883) {
    return DecryptedMessageActionNotifyLayer017.deserialize(reader);
  }

  if (id == 0xccb27641) {
    return DecryptedMessageActionTyping017.deserialize(reader);
  }

  if (id == 0xf3c9611b) {
    return DecryptedMessageActionRequestKey020.deserialize(reader);
  }

  if (id == 0x6fe1735b) {
    return DecryptedMessageActionAcceptKey020.deserialize(reader);
  }

  if (id == 0xdd05ec6b) {
    return DecryptedMessageActionAbortKey020.deserialize(reader);
  }

  if (id == 0xec2e0b9b) {
    return DecryptedMessageActionCommitKey020.deserialize(reader);
  }

  if (id == 0xa82fdd63) {
    return DecryptedMessageActionNoop020.deserialize(reader);
  }

  if (id == 0x6c37c15c) {
    return DocumentAttributeImageSize023.deserialize(reader);
  }

  if (id == 0x11b58939) {
    return DocumentAttributeAnimated023.deserialize(reader);
  }

  if (id == 0xfb0a5727) {
    return DocumentAttributeSticker023.deserialize(reader);
  }

  if (id == 0x3a556302) {
    return DocumentAttributeSticker045.deserialize(reader);
  }

  if (id == 0x5910cccb) {
    return DocumentAttributeVideo023.deserialize(reader);
  }

  if (id == 0x0ef02ce6) {
    return DocumentAttributeVideo066.deserialize(reader);
  }

  if (id == 0x051448e5) {
    return DocumentAttributeAudio023.deserialize(reader);
  }

  if (id == 0xded218e0) {
    return DocumentAttributeAudio045.deserialize(reader);
  }

  if (id == 0x9852f9c6) {
    return DocumentAttributeAudio046.deserialize(reader);
  }

  if (id == 0x15590068) {
    return DocumentAttributeFilename023.deserialize(reader);
  }

  if (id == 0x0e17e23c) {
    return PhotoSizeEmpty023.deserialize(reader);
  }

  if (id == 0x77bfb61b) {
    return PhotoSize023.deserialize(reader);
  }

  if (id == 0xe9a734fa) {
    return PhotoCachedSize023.deserialize(reader);
  }

  if (id == 0x7c596b46) {
    return FileLocationUnavailable023.deserialize(reader);
  }

  if (id == 0x53d69076) {
    return FileLocation023.deserialize(reader);
  }

  if (id == 0xfa95b0dd) {
    return DecryptedMessageMediaExternalDocument023.deserialize(reader);
  }

  if (id == 0xbb92ba95) {
    return MessageEntityUnknown045.deserialize(reader);
  }

  if (id == 0xfa04579d) {
    return MessageEntityMention045.deserialize(reader);
  }

  if (id == 0x6f635b0d) {
    return MessageEntityHashtag045.deserialize(reader);
  }

  if (id == 0x6cef8ac7) {
    return MessageEntityBotCommand045.deserialize(reader);
  }

  if (id == 0x6ed02538) {
    return MessageEntityUrl045.deserialize(reader);
  }

  if (id == 0x64e475c2) {
    return MessageEntityEmail045.deserialize(reader);
  }

  if (id == 0xbd610bc9) {
    return MessageEntityBold045.deserialize(reader);
  }

  if (id == 0x826f8b60) {
    return MessageEntityItalic045.deserialize(reader);
  }

  if (id == 0x28a20571) {
    return MessageEntityCode045.deserialize(reader);
  }

  if (id == 0x73924be0) {
    return MessageEntityPre045.deserialize(reader);
  }

  if (id == 0x76a6d327) {
    return MessageEntityTextUrl045.deserialize(reader);
  }

  if (id == 0x861cc8a0) {
    return InputStickerSetShortName045.deserialize(reader);
  }

  if (id == 0xffb62b95) {
    return InputStickerSetEmpty045.deserialize(reader);
  }

  if (id == 0x8a0df56f) {
    return DecryptedMessageMediaVenue045.deserialize(reader);
  }

  if (id == 0xe50511d8) {
    return DecryptedMessageMediaWebPage045.deserialize(reader);
  }

  if (id == 0x88f27fbc) {
    return SendMessageRecordRoundAction066.deserialize(reader);
  }

  if (id == 0xbb718624) {
    return SendMessageUploadRoundAction066.deserialize(reader);
  }

  if (id == 0x9c4e7e8b) {
    return MessageEntityUnderline101.deserialize(reader);
  }

  if (id == 0xbf0693d4) {
    return MessageEntityStrike101.deserialize(reader);
  }

  if (id == 0x020df5d0) {
    return MessageEntityBlockquote101.deserialize(reader);
  }

  if (id == 0x32ca960f) {
    return MessageEntitySpoiler144.deserialize(reader);
  }

  if (id == 0xc8cf05f8) {
    return MessageEntityCustomEmoji144.deserialize(reader);
  }

  throw Exception(
      'This is a bug. Please report at https://github.com/telegramflutter/tg/issues.');
}
