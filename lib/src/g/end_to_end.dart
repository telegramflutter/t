part of '../../t.dart';

/// Decrypted Message.
///
/// Layer: 8.
/// ID: `1f814f1f`.
class DecryptedMessage008 extends DecryptedMessageBase {
  /// Decrypted Message constructor.
  const DecryptedMessage008({
    required this.randomId,
    required this.randomBytes,
    required this.message,
    required this.media,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessage008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessage008] fields.
    final randomId = reader.readInt64();
    final randomBytes = reader.readBytes();
    final message = reader.readString();
    final media = reader.readObject() as DecryptedMessageMediaBase;

    // Construct [DecryptedMessage008] object.
    final returnValue = DecryptedMessage008(
      randomId: randomId,
      randomBytes: randomBytes,
      message: message,
      media: media,
    );

    // Now return the deserialized [DecryptedMessage008].
    return returnValue;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Random Bytes.
  final Uint8List randomBytes;

  /// Message.
  final String message;

  /// Media.
  final DecryptedMessageMediaBase media;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x1f814f1f.
    buffer.writeInt32(0x1f814f1f);

    // Write fields.
    buffer.writeInt64(randomId);
    buffer.writeBytes(randomBytes);
    buffer.writeString(message);
    buffer.writeObject(media);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "1f814f1f",
      "\$name": "DecryptedMessage008",
      "randomId": randomId,
      "randomBytes": randomBytes,
      "message": message,
      "media": media,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message.
///
/// Layer: 17.
/// ID: `204d3878`.
class DecryptedMessage017 extends DecryptedMessageBase {
  /// Decrypted Message constructor.
  const DecryptedMessage017({
    required this.randomId,
    required this.ttl,
    required this.message,
    required this.media,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessage017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessage017] fields.
    final randomId = reader.readInt64();
    final ttl = reader.readInt32();
    final message = reader.readString();
    final media = reader.readObject() as DecryptedMessageMediaBase;

    // Construct [DecryptedMessage017] object.
    final returnValue = DecryptedMessage017(
      randomId: randomId,
      ttl: ttl,
      message: message,
      media: media,
    );

    // Now return the deserialized [DecryptedMessage017].
    return returnValue;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Ttl.
  ///
  /// Field type is Int32.
  final int ttl;

  /// Message.
  final String message;

  /// Media.
  final DecryptedMessageMediaBase media;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x204d3878.
    buffer.writeInt32(0x204d3878);

    // Write fields.
    buffer.writeInt64(randomId);
    buffer.writeInt32(ttl);
    buffer.writeString(message);
    buffer.writeObject(media);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "204d3878",
      "\$name": "DecryptedMessage017",
      "randomId": randomId,
      "ttl": ttl,
      "message": message,
      "media": media,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message.
///
/// Layer: 45.
/// ID: `36b091de`.
class DecryptedMessage045 extends DecryptedMessageBase {
  /// Decrypted Message constructor.
  const DecryptedMessage045({
    required this.randomId,
    required this.ttl,
    required this.message,
    this.media,
    this.entities,
    this.viaBotName,
    this.replyToRandomId,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessage045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessage045] fields.
    final flags = reader.readInt32();
    final randomId = reader.readInt64();
    final ttl = reader.readInt32();
    final message = reader.readString();
    final hasMediaField = (flags & 512) != 0;
    final media = hasMediaField
        ? reader.readObject() as DecryptedMessageMediaBase
        : null;
    final hasEntitiesField = (flags & 128) != 0;
    final entities = hasEntitiesField
        ? reader.readVectorObject<MessageEntityBase>()
        : null;
    final hasViaBotNameField = (flags & 2048) != 0;
    final viaBotName = hasViaBotNameField ? reader.readString() : null;
    final hasReplyToRandomIdField = (flags & 8) != 0;
    final replyToRandomId = hasReplyToRandomIdField ? reader.readInt64() : null;

    // Construct [DecryptedMessage045] object.
    final returnValue = DecryptedMessage045(
      randomId: randomId,
      ttl: ttl,
      message: message,
      media: media,
      entities: entities?.items,
      viaBotName: viaBotName,
      replyToRandomId: replyToRandomId,
    );

    // Now return the deserialized [DecryptedMessage045].
    return returnValue;
  }

  /// Flags.
  int get flags {
    final v = _flag(
      b09: media != null,
      b07: entities != null,
      b11: viaBotName != null,
      b03: replyToRandomId != null,
    );

    return v;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Ttl.
  ///
  /// Field type is Int32.
  final int ttl;

  /// Message.
  final String message;

  /// Media.
  final DecryptedMessageMediaBase? media;

  /// Entities.
  final List<MessageEntityBase>? entities;

  /// Via Bot Name.
  final String? viaBotName;

  /// Reply To Random Id.
  final int? replyToRandomId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x36b091de.
    buffer.writeInt32(0x36b091de);

    // Write fields.
    buffer.writeInt32(flags);
    buffer.writeInt64(randomId);
    buffer.writeInt32(ttl);
    buffer.writeString(message);
    final localMediaCopy = media;
    if (localMediaCopy != null) {
      buffer.writeObject(localMediaCopy);
    }
    final localEntitiesCopy = entities;
    if (localEntitiesCopy != null) {
      buffer.writeVectorObject(localEntitiesCopy);
    }
    final localViaBotNameCopy = viaBotName;
    if (localViaBotNameCopy != null) {
      buffer.writeString(localViaBotNameCopy);
    }
    final localReplyToRandomIdCopy = replyToRandomId;
    if (localReplyToRandomIdCopy != null) {
      buffer.writeInt64(localReplyToRandomIdCopy);
    }

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "36b091de",
      "\$name": "DecryptedMessage045",
      "flags": flags,
      "randomId": randomId,
      "ttl": ttl,
      "message": message,
      "media": media,
      "entities": entities,
      "viaBotName": viaBotName,
      "replyToRandomId": replyToRandomId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message.
///
/// Layer: 73.
/// ID: `91cc4674`.
class DecryptedMessage073 extends DecryptedMessageBase {
  /// Decrypted Message constructor.
  const DecryptedMessage073({
    required this.randomId,
    required this.ttl,
    required this.message,
    this.media,
    this.entities,
    this.viaBotName,
    this.replyToRandomId,
    this.groupedId,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessage073.deserialize(BinaryReader reader) {
    // Read [DecryptedMessage073] fields.
    final flags = reader.readInt32();
    final randomId = reader.readInt64();
    final ttl = reader.readInt32();
    final message = reader.readString();
    final hasMediaField = (flags & 512) != 0;
    final media = hasMediaField
        ? reader.readObject() as DecryptedMessageMediaBase
        : null;
    final hasEntitiesField = (flags & 128) != 0;
    final entities = hasEntitiesField
        ? reader.readVectorObject<MessageEntityBase>()
        : null;
    final hasViaBotNameField = (flags & 2048) != 0;
    final viaBotName = hasViaBotNameField ? reader.readString() : null;
    final hasReplyToRandomIdField = (flags & 8) != 0;
    final replyToRandomId = hasReplyToRandomIdField ? reader.readInt64() : null;
    final hasGroupedIdField = (flags & 131072) != 0;
    final groupedId = hasGroupedIdField ? reader.readInt64() : null;

    // Construct [DecryptedMessage073] object.
    final returnValue = DecryptedMessage073(
      randomId: randomId,
      ttl: ttl,
      message: message,
      media: media,
      entities: entities?.items,
      viaBotName: viaBotName,
      replyToRandomId: replyToRandomId,
      groupedId: groupedId,
    );

    // Now return the deserialized [DecryptedMessage073].
    return returnValue;
  }

  /// Flags.
  int get flags {
    final v = _flag(
      b09: media != null,
      b07: entities != null,
      b11: viaBotName != null,
      b03: replyToRandomId != null,
      b17: groupedId != null,
    );

    return v;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Ttl.
  ///
  /// Field type is Int32.
  final int ttl;

  /// Message.
  final String message;

  /// Media.
  final DecryptedMessageMediaBase? media;

  /// Entities.
  final List<MessageEntityBase>? entities;

  /// Via Bot Name.
  final String? viaBotName;

  /// Reply To Random Id.
  final int? replyToRandomId;

  /// Grouped Id.
  final int? groupedId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x91cc4674.
    buffer.writeInt32(0x91cc4674);

    // Write fields.
    buffer.writeInt32(flags);
    buffer.writeInt64(randomId);
    buffer.writeInt32(ttl);
    buffer.writeString(message);
    final localMediaCopy = media;
    if (localMediaCopy != null) {
      buffer.writeObject(localMediaCopy);
    }
    final localEntitiesCopy = entities;
    if (localEntitiesCopy != null) {
      buffer.writeVectorObject(localEntitiesCopy);
    }
    final localViaBotNameCopy = viaBotName;
    if (localViaBotNameCopy != null) {
      buffer.writeString(localViaBotNameCopy);
    }
    final localReplyToRandomIdCopy = replyToRandomId;
    if (localReplyToRandomIdCopy != null) {
      buffer.writeInt64(localReplyToRandomIdCopy);
    }
    final localGroupedIdCopy = groupedId;
    if (localGroupedIdCopy != null) {
      buffer.writeInt64(localGroupedIdCopy);
    }

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "91cc4674",
      "\$name": "DecryptedMessage073",
      "flags": flags,
      "randomId": randomId,
      "ttl": ttl,
      "message": message,
      "media": media,
      "entities": entities,
      "viaBotName": viaBotName,
      "replyToRandomId": replyToRandomId,
      "groupedId": groupedId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Service.
///
/// Layer: 8.
/// ID: `aa48327d`.
class DecryptedMessageService008 extends DecryptedMessageBase {
  /// Decrypted Message Service constructor.
  const DecryptedMessageService008({
    required this.randomId,
    required this.randomBytes,
    required this.action,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageService008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageService008] fields.
    final randomId = reader.readInt64();
    final randomBytes = reader.readBytes();
    final action = reader.readObject() as DecryptedMessageActionBase;

    // Construct [DecryptedMessageService008] object.
    final returnValue = DecryptedMessageService008(
      randomId: randomId,
      randomBytes: randomBytes,
      action: action,
    );

    // Now return the deserialized [DecryptedMessageService008].
    return returnValue;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Random Bytes.
  final Uint8List randomBytes;

  /// Action.
  final DecryptedMessageActionBase action;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xaa48327d.
    buffer.writeInt32(0xaa48327d);

    // Write fields.
    buffer.writeInt64(randomId);
    buffer.writeBytes(randomBytes);
    buffer.writeObject(action);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "aa48327d",
      "\$name": "DecryptedMessageService008",
      "randomId": randomId,
      "randomBytes": randomBytes,
      "action": action,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Service.
///
/// Layer: 17.
/// ID: `73164160`.
class DecryptedMessageService017 extends DecryptedMessageBase {
  /// Decrypted Message Service constructor.
  const DecryptedMessageService017({
    required this.randomId,
    required this.action,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageService017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageService017] fields.
    final randomId = reader.readInt64();
    final action = reader.readObject() as DecryptedMessageActionBase;

    // Construct [DecryptedMessageService017] object.
    final returnValue = DecryptedMessageService017(
      randomId: randomId,
      action: action,
    );

    // Now return the deserialized [DecryptedMessageService017].
    return returnValue;
  }

  /// Random Id.
  ///
  /// Field type is Int64.
  final int randomId;

  /// Action.
  final DecryptedMessageActionBase action;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x73164160.
    buffer.writeInt32(0x73164160);

    // Write fields.
    buffer.writeInt64(randomId);
    buffer.writeObject(action);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "73164160",
      "\$name": "DecryptedMessageService017",
      "randomId": randomId,
      "action": action,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Empty.
///
/// Layer: 8.
/// ID: `089f5c4a`.
class DecryptedMessageMediaEmpty008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Empty constructor.
  const DecryptedMessageMediaEmpty008() : super._();

  /// Deserialize.
  factory DecryptedMessageMediaEmpty008.deserialize(BinaryReader reader) {
    // Construct [DecryptedMessageMediaEmpty008] object.
    final returnValue = DecryptedMessageMediaEmpty008();

    // Now return the deserialized [DecryptedMessageMediaEmpty008].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x089f5c4a.
    buffer.writeInt32(0x089f5c4a);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "089f5c4a",
      "\$name": "DecryptedMessageMediaEmpty008",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Photo.
///
/// Layer: 8.
/// ID: `32798a8c`.
class DecryptedMessageMediaPhoto008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Photo constructor.
  const DecryptedMessageMediaPhoto008({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.w,
    required this.h,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaPhoto008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaPhoto008] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaPhoto008] object.
    final returnValue = DecryptedMessageMediaPhoto008(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      w: w,
      h: h,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaPhoto008].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x32798a8c.
    buffer.writeInt32(0x32798a8c);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "32798a8c",
      "\$name": "DecryptedMessageMediaPhoto008",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "w": w,
      "h": h,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Photo.
///
/// Layer: 45.
/// ID: `f1fa8d78`.
class DecryptedMessageMediaPhoto045 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Photo constructor.
  const DecryptedMessageMediaPhoto045({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.w,
    required this.h,
    required this.size,
    required this.key,
    required this.iv,
    required this.caption,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaPhoto045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaPhoto045] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();
    final caption = reader.readString();

    // Construct [DecryptedMessageMediaPhoto045] object.
    final returnValue = DecryptedMessageMediaPhoto045(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      w: w,
      h: h,
      size: size,
      key: key,
      iv: iv,
      caption: caption,
    );

    // Now return the deserialized [DecryptedMessageMediaPhoto045].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Caption.
  final String caption;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf1fa8d78.
    buffer.writeInt32(0xf1fa8d78);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);
    buffer.writeString(caption);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "f1fa8d78",
      "\$name": "DecryptedMessageMediaPhoto045",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "w": w,
      "h": h,
      "size": size,
      "key": key,
      "iv": iv,
      "caption": caption,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Video.
///
/// Layer: 8.
/// ID: `4cee6ef3`.
class DecryptedMessageMediaVideo008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Video constructor.
  const DecryptedMessageMediaVideo008({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.duration,
    required this.w,
    required this.h,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaVideo008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaVideo008] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final duration = reader.readInt32();
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaVideo008] object.
    final returnValue = DecryptedMessageMediaVideo008(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      duration: duration,
      w: w,
      h: h,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaVideo008].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x4cee6ef3.
    buffer.writeInt32(0x4cee6ef3);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeInt32(duration);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "4cee6ef3",
      "\$name": "DecryptedMessageMediaVideo008",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "duration": duration,
      "w": w,
      "h": h,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Video.
///
/// Layer: 17.
/// ID: `524a415d`.
class DecryptedMessageMediaVideo017 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Video constructor.
  const DecryptedMessageMediaVideo017({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.duration,
    required this.mimeType,
    required this.w,
    required this.h,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaVideo017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaVideo017] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final duration = reader.readInt32();
    final mimeType = reader.readString();
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaVideo017] object.
    final returnValue = DecryptedMessageMediaVideo017(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      duration: duration,
      mimeType: mimeType,
      w: w,
      h: h,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaVideo017].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Mime Type.
  final String mimeType;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x524a415d.
    buffer.writeInt32(0x524a415d);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeInt32(duration);
    buffer.writeString(mimeType);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "524a415d",
      "\$name": "DecryptedMessageMediaVideo017",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "duration": duration,
      "mimeType": mimeType,
      "w": w,
      "h": h,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Video.
///
/// Layer: 45.
/// ID: `970c8c0e`.
class DecryptedMessageMediaVideo045 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Video constructor.
  const DecryptedMessageMediaVideo045({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.duration,
    required this.mimeType,
    required this.w,
    required this.h,
    required this.size,
    required this.key,
    required this.iv,
    required this.caption,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaVideo045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaVideo045] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final duration = reader.readInt32();
    final mimeType = reader.readString();
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();
    final caption = reader.readString();

    // Construct [DecryptedMessageMediaVideo045] object.
    final returnValue = DecryptedMessageMediaVideo045(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      duration: duration,
      mimeType: mimeType,
      w: w,
      h: h,
      size: size,
      key: key,
      iv: iv,
      caption: caption,
    );

    // Now return the deserialized [DecryptedMessageMediaVideo045].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Mime Type.
  final String mimeType;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Caption.
  final String caption;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x970c8c0e.
    buffer.writeInt32(0x970c8c0e);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeInt32(duration);
    buffer.writeString(mimeType);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);
    buffer.writeString(caption);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "970c8c0e",
      "\$name": "DecryptedMessageMediaVideo045",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "duration": duration,
      "mimeType": mimeType,
      "w": w,
      "h": h,
      "size": size,
      "key": key,
      "iv": iv,
      "caption": caption,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Geo Point.
///
/// Layer: 8.
/// ID: `35480a59`.
class DecryptedMessageMediaGeoPoint008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Geo Point constructor.
  const DecryptedMessageMediaGeoPoint008({
    required this.lat,
    required this.long,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaGeoPoint008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaGeoPoint008] fields.
    final lat = reader.readFloat64();
    final long = reader.readFloat64();

    // Construct [DecryptedMessageMediaGeoPoint008] object.
    final returnValue = DecryptedMessageMediaGeoPoint008(lat: lat, long: long);

    // Now return the deserialized [DecryptedMessageMediaGeoPoint008].
    return returnValue;
  }

  /// Lat.
  final double lat;

  /// Long.
  final double long;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x35480a59.
    buffer.writeInt32(0x35480a59);

    // Write fields.
    buffer.writeDouble(lat);
    buffer.writeDouble(long);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "35480a59",
      "\$name": "DecryptedMessageMediaGeoPoint008",
      "lat": lat,
      "long": long,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Contact.
///
/// Layer: 8.
/// ID: `588a0a97`.
class DecryptedMessageMediaContact008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Contact constructor.
  const DecryptedMessageMediaContact008({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.userId,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaContact008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaContact008] fields.
    final phoneNumber = reader.readString();
    final firstName = reader.readString();
    final lastName = reader.readString();
    final userId = reader.readInt32();

    // Construct [DecryptedMessageMediaContact008] object.
    final returnValue = DecryptedMessageMediaContact008(
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
      userId: userId,
    );

    // Now return the deserialized [DecryptedMessageMediaContact008].
    return returnValue;
  }

  /// Phone Number.
  final String phoneNumber;

  /// First Name.
  final String firstName;

  /// Last Name.
  final String lastName;

  /// User Id.
  ///
  /// Field type is Int32.
  final int userId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x588a0a97.
    buffer.writeInt32(0x588a0a97);

    // Write fields.
    buffer.writeString(phoneNumber);
    buffer.writeString(firstName);
    buffer.writeString(lastName);
    buffer.writeInt32(userId);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "588a0a97",
      "\$name": "DecryptedMessageMediaContact008",
      "phoneNumber": phoneNumber,
      "firstName": firstName,
      "lastName": lastName,
      "userId": userId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Document.
///
/// Layer: 8.
/// ID: `b095434b`.
class DecryptedMessageMediaDocument008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Document constructor.
  const DecryptedMessageMediaDocument008({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.fileName,
    required this.mimeType,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaDocument008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaDocument008] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final fileName = reader.readString();
    final mimeType = reader.readString();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaDocument008] object.
    final returnValue = DecryptedMessageMediaDocument008(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      fileName: fileName,
      mimeType: mimeType,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaDocument008].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// File Name.
  final String fileName;

  /// Mime Type.
  final String mimeType;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xb095434b.
    buffer.writeInt32(0xb095434b);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeString(fileName);
    buffer.writeString(mimeType);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "b095434b",
      "\$name": "DecryptedMessageMediaDocument008",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "fileName": fileName,
      "mimeType": mimeType,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Document.
///
/// Layer: 45.
/// ID: `7afe8ae2`.
class DecryptedMessageMediaDocument045 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Document constructor.
  const DecryptedMessageMediaDocument045({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.mimeType,
    required this.size,
    required this.key,
    required this.iv,
    required this.attributes,
    required this.caption,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaDocument045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaDocument045] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final mimeType = reader.readString();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();
    final attributes = reader.readVectorObject<DocumentAttributeBase>();
    final caption = reader.readString();

    // Construct [DecryptedMessageMediaDocument045] object.
    final returnValue = DecryptedMessageMediaDocument045(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      mimeType: mimeType,
      size: size,
      key: key,
      iv: iv,
      attributes: attributes.items,
      caption: caption,
    );

    // Now return the deserialized [DecryptedMessageMediaDocument045].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// Mime Type.
  final String mimeType;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Attributes.
  final List<DocumentAttributeBase> attributes;

  /// Caption.
  final String caption;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x7afe8ae2.
    buffer.writeInt32(0x7afe8ae2);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeString(mimeType);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);
    buffer.writeVectorObject(attributes);
    buffer.writeString(caption);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "7afe8ae2",
      "\$name": "DecryptedMessageMediaDocument045",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "mimeType": mimeType,
      "size": size,
      "key": key,
      "iv": iv,
      "attributes": attributes,
      "caption": caption,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Document.
///
/// Layer: 143.
/// ID: `6abd9782`.
class DecryptedMessageMediaDocument143 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Document constructor.
  const DecryptedMessageMediaDocument143({
    required this.thumb,
    required this.thumbW,
    required this.thumbH,
    required this.mimeType,
    required this.size,
    required this.key,
    required this.iv,
    required this.attributes,
    required this.caption,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaDocument143.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaDocument143] fields.
    final thumb = reader.readBytes();
    final thumbW = reader.readInt32();
    final thumbH = reader.readInt32();
    final mimeType = reader.readString();
    final size = reader.readInt64();
    final key = reader.readBytes();
    final iv = reader.readBytes();
    final attributes = reader.readVectorObject<DocumentAttributeBase>();
    final caption = reader.readString();

    // Construct [DecryptedMessageMediaDocument143] object.
    final returnValue = DecryptedMessageMediaDocument143(
      thumb: thumb,
      thumbW: thumbW,
      thumbH: thumbH,
      mimeType: mimeType,
      size: size,
      key: key,
      iv: iv,
      attributes: attributes.items,
      caption: caption,
    );

    // Now return the deserialized [DecryptedMessageMediaDocument143].
    return returnValue;
  }

  /// Thumb.
  final Uint8List thumb;

  /// Thumb W.
  ///
  /// Field type is Int32.
  final int thumbW;

  /// Thumb H.
  ///
  /// Field type is Int32.
  final int thumbH;

  /// Mime Type.
  final String mimeType;

  /// Size.
  ///
  /// Field type is Int64.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Attributes.
  final List<DocumentAttributeBase> attributes;

  /// Caption.
  final String caption;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6abd9782.
    buffer.writeInt32(0x6abd9782);

    // Write fields.
    buffer.writeBytes(thumb);
    buffer.writeInt32(thumbW);
    buffer.writeInt32(thumbH);
    buffer.writeString(mimeType);
    buffer.writeInt64(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);
    buffer.writeVectorObject(attributes);
    buffer.writeString(caption);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6abd9782",
      "\$name": "DecryptedMessageMediaDocument143",
      "thumb": thumb,
      "thumbW": thumbW,
      "thumbH": thumbH,
      "mimeType": mimeType,
      "size": size,
      "key": key,
      "iv": iv,
      "attributes": attributes,
      "caption": caption,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Audio.
///
/// Layer: 8.
/// ID: `6080758f`.
class DecryptedMessageMediaAudio008 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Audio constructor.
  const DecryptedMessageMediaAudio008({
    required this.duration,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaAudio008.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaAudio008] fields.
    final duration = reader.readInt32();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaAudio008] object.
    final returnValue = DecryptedMessageMediaAudio008(
      duration: duration,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaAudio008].
    return returnValue;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6080758f.
    buffer.writeInt32(0x6080758f);

    // Write fields.
    buffer.writeInt32(duration);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6080758f",
      "\$name": "DecryptedMessageMediaAudio008",
      "duration": duration,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Audio.
///
/// Layer: 17.
/// ID: `57e0a9cb`.
class DecryptedMessageMediaAudio017 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Audio constructor.
  const DecryptedMessageMediaAudio017({
    required this.duration,
    required this.mimeType,
    required this.size,
    required this.key,
    required this.iv,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaAudio017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaAudio017] fields.
    final duration = reader.readInt32();
    final mimeType = reader.readString();
    final size = reader.readInt32();
    final key = reader.readBytes();
    final iv = reader.readBytes();

    // Construct [DecryptedMessageMediaAudio017] object.
    final returnValue = DecryptedMessageMediaAudio017(
      duration: duration,
      mimeType: mimeType,
      size: size,
      key: key,
      iv: iv,
    );

    // Now return the deserialized [DecryptedMessageMediaAudio017].
    return returnValue;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Mime Type.
  final String mimeType;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Key.
  final Uint8List key;

  /// Iv.
  final Uint8List iv;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x57e0a9cb.
    buffer.writeInt32(0x57e0a9cb);

    // Write fields.
    buffer.writeInt32(duration);
    buffer.writeString(mimeType);
    buffer.writeInt32(size);
    buffer.writeBytes(key);
    buffer.writeBytes(iv);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "57e0a9cb",
      "\$name": "DecryptedMessageMediaAudio017",
      "duration": duration,
      "mimeType": mimeType,
      "size": size,
      "key": key,
      "iv": iv,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media External Document.
///
/// Layer: 23.
/// ID: `fa95b0dd`.
class DecryptedMessageMediaExternalDocument023
    extends DecryptedMessageMediaBase {
  /// Decrypted Message Media External Document constructor.
  const DecryptedMessageMediaExternalDocument023({
    required this.id,
    required this.accessHash,
    required this.date,
    required this.mimeType,
    required this.size,
    required this.thumb,
    required this.dcId,
    required this.attributes,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaExternalDocument023.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageMediaExternalDocument023] fields.
    final id = reader.readInt64();
    final accessHash = reader.readInt64();
    final date = reader.readDateTime();
    final mimeType = reader.readString();
    final size = reader.readInt32();
    final thumb = reader.readObject() as PhotoSizeBase;
    final dcId = reader.readInt32();
    final attributes = reader.readVectorObject<DocumentAttributeBase>();

    // Construct [DecryptedMessageMediaExternalDocument023] object.
    final returnValue = DecryptedMessageMediaExternalDocument023(
      id: id,
      accessHash: accessHash,
      date: date,
      mimeType: mimeType,
      size: size,
      thumb: thumb,
      dcId: dcId,
      attributes: attributes.items,
    );

    // Now return the deserialized [DecryptedMessageMediaExternalDocument023].
    return returnValue;
  }

  /// Id.
  ///
  /// Field type is Int64.
  final int id;

  /// Access Hash.
  ///
  /// Field type is Int64.
  final int accessHash;

  /// Date.
  final DateTime date;

  /// Mime Type.
  final String mimeType;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Thumb.
  final PhotoSizeBase thumb;

  /// Dc Id.
  ///
  /// Field type is Int32.
  final int dcId;

  /// Attributes.
  final List<DocumentAttributeBase> attributes;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xfa95b0dd.
    buffer.writeInt32(0xfa95b0dd);

    // Write fields.
    buffer.writeInt64(id);
    buffer.writeInt64(accessHash);
    buffer.writeDateTime(date);
    buffer.writeString(mimeType);
    buffer.writeInt32(size);
    buffer.writeObject(thumb);
    buffer.writeInt32(dcId);
    buffer.writeVectorObject(attributes);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "fa95b0dd",
      "\$name": "DecryptedMessageMediaExternalDocument023",
      "id": id,
      "accessHash": accessHash,
      "date": date.toIso8601String(),
      "mimeType": mimeType,
      "size": size,
      "thumb": thumb,
      "dcId": dcId,
      "attributes": attributes,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Venue.
///
/// Layer: 45.
/// ID: `8a0df56f`.
class DecryptedMessageMediaVenue045 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Venue constructor.
  const DecryptedMessageMediaVenue045({
    required this.lat,
    required this.long,
    required this.title,
    required this.address,
    required this.provider,
    required this.venueId,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaVenue045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaVenue045] fields.
    final lat = reader.readFloat64();
    final long = reader.readFloat64();
    final title = reader.readString();
    final address = reader.readString();
    final provider = reader.readString();
    final venueId = reader.readString();

    // Construct [DecryptedMessageMediaVenue045] object.
    final returnValue = DecryptedMessageMediaVenue045(
      lat: lat,
      long: long,
      title: title,
      address: address,
      provider: provider,
      venueId: venueId,
    );

    // Now return the deserialized [DecryptedMessageMediaVenue045].
    return returnValue;
  }

  /// Lat.
  final double lat;

  /// Long.
  final double long;

  /// Title.
  final String title;

  /// Address.
  final String address;

  /// Provider.
  final String provider;

  /// Venue Id.
  final String venueId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x8a0df56f.
    buffer.writeInt32(0x8a0df56f);

    // Write fields.
    buffer.writeDouble(lat);
    buffer.writeDouble(long);
    buffer.writeString(title);
    buffer.writeString(address);
    buffer.writeString(provider);
    buffer.writeString(venueId);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "8a0df56f",
      "\$name": "DecryptedMessageMediaVenue045",
      "lat": lat,
      "long": long,
      "title": title,
      "address": address,
      "provider": provider,
      "venueId": venueId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Media Web Page.
///
/// Layer: 45.
/// ID: `e50511d8`.
class DecryptedMessageMediaWebPage045 extends DecryptedMessageMediaBase {
  /// Decrypted Message Media Web Page constructor.
  const DecryptedMessageMediaWebPage045({required this.url}) : super._();

  /// Deserialize.
  factory DecryptedMessageMediaWebPage045.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageMediaWebPage045] fields.
    final url = reader.readString();

    // Construct [DecryptedMessageMediaWebPage045] object.
    final returnValue = DecryptedMessageMediaWebPage045(url: url);

    // Now return the deserialized [DecryptedMessageMediaWebPage045].
    return returnValue;
  }

  /// Url.
  final String url;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe50511d8.
    buffer.writeInt32(0xe50511d8);

    // Write fields.
    buffer.writeString(url);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "e50511d8",
      "\$name": "DecryptedMessageMediaWebPage045",
      "url": url,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Set Message T T L.
///
/// Layer: 8.
/// ID: `a1733aec`.
class DecryptedMessageActionSetMessageTTL008
    extends DecryptedMessageActionBase {
  /// Decrypted Message Action Set Message T T L constructor.
  const DecryptedMessageActionSetMessageTTL008({required this.ttlSeconds})
    : super._();

  /// Deserialize.
  factory DecryptedMessageActionSetMessageTTL008.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageActionSetMessageTTL008] fields.
    final ttlSeconds = reader.readInt32();

    // Construct [DecryptedMessageActionSetMessageTTL008] object.
    final returnValue = DecryptedMessageActionSetMessageTTL008(
      ttlSeconds: ttlSeconds,
    );

    // Now return the deserialized [DecryptedMessageActionSetMessageTTL008].
    return returnValue;
  }

  /// Ttl Seconds.
  ///
  /// Field type is Int32.
  final int ttlSeconds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa1733aec.
    buffer.writeInt32(0xa1733aec);

    // Write fields.
    buffer.writeInt32(ttlSeconds);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "a1733aec",
      "\$name": "DecryptedMessageActionSetMessageTTL008",
      "ttlSeconds": ttlSeconds,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Read Messages.
///
/// Layer: 8.
/// ID: `0c4f40be`.
class DecryptedMessageActionReadMessages008 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Read Messages constructor.
  const DecryptedMessageActionReadMessages008({required this.randomIds})
    : super._();

  /// Deserialize.
  factory DecryptedMessageActionReadMessages008.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageActionReadMessages008] fields.
    final randomIds = reader.readVectorInt64();

    // Construct [DecryptedMessageActionReadMessages008] object.
    final returnValue = DecryptedMessageActionReadMessages008(
      randomIds: randomIds.items,
    );

    // Now return the deserialized [DecryptedMessageActionReadMessages008].
    return returnValue;
  }

  /// Random Ids.
  final List<int> randomIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x0c4f40be.
    buffer.writeInt32(0x0c4f40be);

    // Write fields.
    buffer.writeVectorInt64(randomIds);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "0c4f40be",
      "\$name": "DecryptedMessageActionReadMessages008",
      "randomIds": randomIds,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Delete Messages.
///
/// Layer: 8.
/// ID: `65614304`.
class DecryptedMessageActionDeleteMessages008
    extends DecryptedMessageActionBase {
  /// Decrypted Message Action Delete Messages constructor.
  const DecryptedMessageActionDeleteMessages008({required this.randomIds})
    : super._();

  /// Deserialize.
  factory DecryptedMessageActionDeleteMessages008.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageActionDeleteMessages008] fields.
    final randomIds = reader.readVectorInt64();

    // Construct [DecryptedMessageActionDeleteMessages008] object.
    final returnValue = DecryptedMessageActionDeleteMessages008(
      randomIds: randomIds.items,
    );

    // Now return the deserialized [DecryptedMessageActionDeleteMessages008].
    return returnValue;
  }

  /// Random Ids.
  final List<int> randomIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x65614304.
    buffer.writeInt32(0x65614304);

    // Write fields.
    buffer.writeVectorInt64(randomIds);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "65614304",
      "\$name": "DecryptedMessageActionDeleteMessages008",
      "randomIds": randomIds,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Screenshot Messages.
///
/// Layer: 8.
/// ID: `8ac1f475`.
class DecryptedMessageActionScreenshotMessages008
    extends DecryptedMessageActionBase {
  /// Decrypted Message Action Screenshot Messages constructor.
  const DecryptedMessageActionScreenshotMessages008({required this.randomIds})
    : super._();

  /// Deserialize.
  factory DecryptedMessageActionScreenshotMessages008.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageActionScreenshotMessages008] fields.
    final randomIds = reader.readVectorInt64();

    // Construct [DecryptedMessageActionScreenshotMessages008] object.
    final returnValue = DecryptedMessageActionScreenshotMessages008(
      randomIds: randomIds.items,
    );

    // Now return the deserialized [DecryptedMessageActionScreenshotMessages008].
    return returnValue;
  }

  /// Random Ids.
  final List<int> randomIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x8ac1f475.
    buffer.writeInt32(0x8ac1f475);

    // Write fields.
    buffer.writeVectorInt64(randomIds);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "8ac1f475",
      "\$name": "DecryptedMessageActionScreenshotMessages008",
      "randomIds": randomIds,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Flush History.
///
/// Layer: 8.
/// ID: `6719e45c`.
class DecryptedMessageActionFlushHistory008 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Flush History constructor.
  const DecryptedMessageActionFlushHistory008() : super._();

  /// Deserialize.
  factory DecryptedMessageActionFlushHistory008.deserialize(
    BinaryReader reader,
  ) {
    // Construct [DecryptedMessageActionFlushHistory008] object.
    final returnValue = DecryptedMessageActionFlushHistory008();

    // Now return the deserialized [DecryptedMessageActionFlushHistory008].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6719e45c.
    buffer.writeInt32(0x6719e45c);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6719e45c",
      "\$name": "DecryptedMessageActionFlushHistory008",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Resend.
///
/// Layer: 17.
/// ID: `511110b0`.
class DecryptedMessageActionResend017 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Resend constructor.
  const DecryptedMessageActionResend017({
    required this.startSeqNo,
    required this.endSeqNo,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageActionResend017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionResend017] fields.
    final startSeqNo = reader.readInt32();
    final endSeqNo = reader.readInt32();

    // Construct [DecryptedMessageActionResend017] object.
    final returnValue = DecryptedMessageActionResend017(
      startSeqNo: startSeqNo,
      endSeqNo: endSeqNo,
    );

    // Now return the deserialized [DecryptedMessageActionResend017].
    return returnValue;
  }

  /// Start Seq No.
  ///
  /// Field type is Int32.
  final int startSeqNo;

  /// End Seq No.
  ///
  /// Field type is Int32.
  final int endSeqNo;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x511110b0.
    buffer.writeInt32(0x511110b0);

    // Write fields.
    buffer.writeInt32(startSeqNo);
    buffer.writeInt32(endSeqNo);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "511110b0",
      "\$name": "DecryptedMessageActionResend017",
      "startSeqNo": startSeqNo,
      "endSeqNo": endSeqNo,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Notify Layer.
///
/// Layer: 17.
/// ID: `f3048883`.
class DecryptedMessageActionNotifyLayer017 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Notify Layer constructor.
  const DecryptedMessageActionNotifyLayer017({required this.layer}) : super._();

  /// Deserialize.
  factory DecryptedMessageActionNotifyLayer017.deserialize(
    BinaryReader reader,
  ) {
    // Read [DecryptedMessageActionNotifyLayer017] fields.
    final layer = reader.readInt32();

    // Construct [DecryptedMessageActionNotifyLayer017] object.
    final returnValue = DecryptedMessageActionNotifyLayer017(layer: layer);

    // Now return the deserialized [DecryptedMessageActionNotifyLayer017].
    return returnValue;
  }

  /// Layer.
  ///
  /// Field type is Int32.
  final int layer;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf3048883.
    buffer.writeInt32(0xf3048883);

    // Write fields.
    buffer.writeInt32(layer);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "f3048883",
      "\$name": "DecryptedMessageActionNotifyLayer017",
      "layer": layer,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Typing.
///
/// Layer: 17.
/// ID: `ccb27641`.
class DecryptedMessageActionTyping017 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Typing constructor.
  const DecryptedMessageActionTyping017({required this.action}) : super._();

  /// Deserialize.
  factory DecryptedMessageActionTyping017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionTyping017] fields.
    final action = reader.readObject() as SendMessageActionBase;

    // Construct [DecryptedMessageActionTyping017] object.
    final returnValue = DecryptedMessageActionTyping017(action: action);

    // Now return the deserialized [DecryptedMessageActionTyping017].
    return returnValue;
  }

  /// Action.
  final SendMessageActionBase action;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xccb27641.
    buffer.writeInt32(0xccb27641);

    // Write fields.
    buffer.writeObject(action);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "ccb27641",
      "\$name": "DecryptedMessageActionTyping017",
      "action": action,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Request Key.
///
/// Layer: 20.
/// ID: `f3c9611b`.
class DecryptedMessageActionRequestKey020 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Request Key constructor.
  const DecryptedMessageActionRequestKey020({
    required this.exchangeId,
    required this.gA,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageActionRequestKey020.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionRequestKey020] fields.
    final exchangeId = reader.readInt64();
    final gA = reader.readBytes();

    // Construct [DecryptedMessageActionRequestKey020] object.
    final returnValue = DecryptedMessageActionRequestKey020(
      exchangeId: exchangeId,
      gA: gA,
    );

    // Now return the deserialized [DecryptedMessageActionRequestKey020].
    return returnValue;
  }

  /// Exchange Id.
  ///
  /// Field type is Int64.
  final int exchangeId;

  /// G A.
  final Uint8List gA;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf3c9611b.
    buffer.writeInt32(0xf3c9611b);

    // Write fields.
    buffer.writeInt64(exchangeId);
    buffer.writeBytes(gA);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "f3c9611b",
      "\$name": "DecryptedMessageActionRequestKey020",
      "exchangeId": exchangeId,
      "gA": gA,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Accept Key.
///
/// Layer: 20.
/// ID: `6fe1735b`.
class DecryptedMessageActionAcceptKey020 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Accept Key constructor.
  const DecryptedMessageActionAcceptKey020({
    required this.exchangeId,
    required this.gB,
    required this.keyFingerprint,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageActionAcceptKey020.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionAcceptKey020] fields.
    final exchangeId = reader.readInt64();
    final gB = reader.readBytes();
    final keyFingerprint = reader.readInt64();

    // Construct [DecryptedMessageActionAcceptKey020] object.
    final returnValue = DecryptedMessageActionAcceptKey020(
      exchangeId: exchangeId,
      gB: gB,
      keyFingerprint: keyFingerprint,
    );

    // Now return the deserialized [DecryptedMessageActionAcceptKey020].
    return returnValue;
  }

  /// Exchange Id.
  ///
  /// Field type is Int64.
  final int exchangeId;

  /// G B.
  final Uint8List gB;

  /// Key Fingerprint.
  ///
  /// Field type is Int64.
  final int keyFingerprint;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6fe1735b.
    buffer.writeInt32(0x6fe1735b);

    // Write fields.
    buffer.writeInt64(exchangeId);
    buffer.writeBytes(gB);
    buffer.writeInt64(keyFingerprint);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6fe1735b",
      "\$name": "DecryptedMessageActionAcceptKey020",
      "exchangeId": exchangeId,
      "gB": gB,
      "keyFingerprint": keyFingerprint,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Abort Key.
///
/// Layer: 20.
/// ID: `dd05ec6b`.
class DecryptedMessageActionAbortKey020 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Abort Key constructor.
  const DecryptedMessageActionAbortKey020({required this.exchangeId})
    : super._();

  /// Deserialize.
  factory DecryptedMessageActionAbortKey020.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionAbortKey020] fields.
    final exchangeId = reader.readInt64();

    // Construct [DecryptedMessageActionAbortKey020] object.
    final returnValue = DecryptedMessageActionAbortKey020(
      exchangeId: exchangeId,
    );

    // Now return the deserialized [DecryptedMessageActionAbortKey020].
    return returnValue;
  }

  /// Exchange Id.
  ///
  /// Field type is Int64.
  final int exchangeId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xdd05ec6b.
    buffer.writeInt32(0xdd05ec6b);

    // Write fields.
    buffer.writeInt64(exchangeId);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "dd05ec6b",
      "\$name": "DecryptedMessageActionAbortKey020",
      "exchangeId": exchangeId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Commit Key.
///
/// Layer: 20.
/// ID: `ec2e0b9b`.
class DecryptedMessageActionCommitKey020 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Commit Key constructor.
  const DecryptedMessageActionCommitKey020({
    required this.exchangeId,
    required this.keyFingerprint,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageActionCommitKey020.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageActionCommitKey020] fields.
    final exchangeId = reader.readInt64();
    final keyFingerprint = reader.readInt64();

    // Construct [DecryptedMessageActionCommitKey020] object.
    final returnValue = DecryptedMessageActionCommitKey020(
      exchangeId: exchangeId,
      keyFingerprint: keyFingerprint,
    );

    // Now return the deserialized [DecryptedMessageActionCommitKey020].
    return returnValue;
  }

  /// Exchange Id.
  ///
  /// Field type is Int64.
  final int exchangeId;

  /// Key Fingerprint.
  ///
  /// Field type is Int64.
  final int keyFingerprint;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xec2e0b9b.
    buffer.writeInt32(0xec2e0b9b);

    // Write fields.
    buffer.writeInt64(exchangeId);
    buffer.writeInt64(keyFingerprint);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "ec2e0b9b",
      "\$name": "DecryptedMessageActionCommitKey020",
      "exchangeId": exchangeId,
      "keyFingerprint": keyFingerprint,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Action Noop.
///
/// Layer: 20.
/// ID: `a82fdd63`.
class DecryptedMessageActionNoop020 extends DecryptedMessageActionBase {
  /// Decrypted Message Action Noop constructor.
  const DecryptedMessageActionNoop020() : super._();

  /// Deserialize.
  factory DecryptedMessageActionNoop020.deserialize(BinaryReader reader) {
    // Construct [DecryptedMessageActionNoop020] object.
    final returnValue = DecryptedMessageActionNoop020();

    // Now return the deserialized [DecryptedMessageActionNoop020].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa82fdd63.
    buffer.writeInt32(0xa82fdd63);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "a82fdd63",
      "\$name": "DecryptedMessageActionNoop020",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Decrypted Message Layer.
///
/// Layer: 17.
/// ID: `1be31789`.
class DecryptedMessageLayer017 extends DecryptedMessageLayerBase {
  /// Decrypted Message Layer constructor.
  const DecryptedMessageLayer017({
    required this.randomBytes,
    required this.layer,
    required this.inSeqNo,
    required this.outSeqNo,
    required this.message,
  }) : super._();

  /// Deserialize.
  factory DecryptedMessageLayer017.deserialize(BinaryReader reader) {
    // Read [DecryptedMessageLayer017] fields.
    final randomBytes = reader.readBytes();
    final layer = reader.readInt32();
    final inSeqNo = reader.readInt32();
    final outSeqNo = reader.readInt32();
    final message = reader.readObject() as DecryptedMessageBase;

    // Construct [DecryptedMessageLayer017] object.
    final returnValue = DecryptedMessageLayer017(
      randomBytes: randomBytes,
      layer: layer,
      inSeqNo: inSeqNo,
      outSeqNo: outSeqNo,
      message: message,
    );

    // Now return the deserialized [DecryptedMessageLayer017].
    return returnValue;
  }

  /// Random Bytes.
  final Uint8List randomBytes;

  /// Layer.
  ///
  /// Field type is Int32.
  final int layer;

  /// In Seq No.
  ///
  /// Field type is Int32.
  final int inSeqNo;

  /// Out Seq No.
  ///
  /// Field type is Int32.
  final int outSeqNo;

  /// Message.
  final DecryptedMessageBase message;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x1be31789.
    buffer.writeInt32(0x1be31789);

    // Write fields.
    buffer.writeBytes(randomBytes);
    buffer.writeInt32(layer);
    buffer.writeInt32(inSeqNo);
    buffer.writeInt32(outSeqNo);
    buffer.writeObject(message);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "1be31789",
      "\$name": "DecryptedMessageLayer017",
      "randomBytes": randomBytes,
      "layer": layer,
      "inSeqNo": inSeqNo,
      "outSeqNo": outSeqNo,
      "message": message,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Typing Action.
///
/// Layer: 17.
/// ID: `16bf744e`.
class SendMessageTypingAction017 extends SendMessageActionBase {
  /// Send Message Typing Action constructor.
  const SendMessageTypingAction017() : super._();

  /// Deserialize.
  factory SendMessageTypingAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageTypingAction017] object.
    final returnValue = SendMessageTypingAction017();

    // Now return the deserialized [SendMessageTypingAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x16bf744e.
    buffer.writeInt32(0x16bf744e);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "16bf744e",
      "\$name": "SendMessageTypingAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Cancel Action.
///
/// Layer: 17.
/// ID: `fd5ec8f5`.
class SendMessageCancelAction017 extends SendMessageActionBase {
  /// Send Message Cancel Action constructor.
  const SendMessageCancelAction017() : super._();

  /// Deserialize.
  factory SendMessageCancelAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageCancelAction017] object.
    final returnValue = SendMessageCancelAction017();

    // Now return the deserialized [SendMessageCancelAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xfd5ec8f5.
    buffer.writeInt32(0xfd5ec8f5);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "fd5ec8f5",
      "\$name": "SendMessageCancelAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Record Video Action.
///
/// Layer: 17.
/// ID: `a187d66f`.
class SendMessageRecordVideoAction017 extends SendMessageActionBase {
  /// Send Message Record Video Action constructor.
  const SendMessageRecordVideoAction017() : super._();

  /// Deserialize.
  factory SendMessageRecordVideoAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageRecordVideoAction017] object.
    final returnValue = SendMessageRecordVideoAction017();

    // Now return the deserialized [SendMessageRecordVideoAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa187d66f.
    buffer.writeInt32(0xa187d66f);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "a187d66f",
      "\$name": "SendMessageRecordVideoAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Upload Video Action.
///
/// Layer: 17.
/// ID: `92042ff7`.
class SendMessageUploadVideoAction017 extends SendMessageActionBase {
  /// Send Message Upload Video Action constructor.
  const SendMessageUploadVideoAction017() : super._();

  /// Deserialize.
  factory SendMessageUploadVideoAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageUploadVideoAction017] object.
    final returnValue = SendMessageUploadVideoAction017();

    // Now return the deserialized [SendMessageUploadVideoAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x92042ff7.
    buffer.writeInt32(0x92042ff7);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "92042ff7",
      "\$name": "SendMessageUploadVideoAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Record Audio Action.
///
/// Layer: 17.
/// ID: `d52f73f7`.
class SendMessageRecordAudioAction017 extends SendMessageActionBase {
  /// Send Message Record Audio Action constructor.
  const SendMessageRecordAudioAction017() : super._();

  /// Deserialize.
  factory SendMessageRecordAudioAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageRecordAudioAction017] object.
    final returnValue = SendMessageRecordAudioAction017();

    // Now return the deserialized [SendMessageRecordAudioAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xd52f73f7.
    buffer.writeInt32(0xd52f73f7);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "d52f73f7",
      "\$name": "SendMessageRecordAudioAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Upload Audio Action.
///
/// Layer: 17.
/// ID: `e6ac8a6f`.
class SendMessageUploadAudioAction017 extends SendMessageActionBase {
  /// Send Message Upload Audio Action constructor.
  const SendMessageUploadAudioAction017() : super._();

  /// Deserialize.
  factory SendMessageUploadAudioAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageUploadAudioAction017] object.
    final returnValue = SendMessageUploadAudioAction017();

    // Now return the deserialized [SendMessageUploadAudioAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe6ac8a6f.
    buffer.writeInt32(0xe6ac8a6f);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "e6ac8a6f",
      "\$name": "SendMessageUploadAudioAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Upload Photo Action.
///
/// Layer: 17.
/// ID: `990a3c1a`.
class SendMessageUploadPhotoAction017 extends SendMessageActionBase {
  /// Send Message Upload Photo Action constructor.
  const SendMessageUploadPhotoAction017() : super._();

  /// Deserialize.
  factory SendMessageUploadPhotoAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageUploadPhotoAction017] object.
    final returnValue = SendMessageUploadPhotoAction017();

    // Now return the deserialized [SendMessageUploadPhotoAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x990a3c1a.
    buffer.writeInt32(0x990a3c1a);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "990a3c1a",
      "\$name": "SendMessageUploadPhotoAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Upload Document Action.
///
/// Layer: 17.
/// ID: `8faee98e`.
class SendMessageUploadDocumentAction017 extends SendMessageActionBase {
  /// Send Message Upload Document Action constructor.
  const SendMessageUploadDocumentAction017() : super._();

  /// Deserialize.
  factory SendMessageUploadDocumentAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageUploadDocumentAction017] object.
    final returnValue = SendMessageUploadDocumentAction017();

    // Now return the deserialized [SendMessageUploadDocumentAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x8faee98e.
    buffer.writeInt32(0x8faee98e);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "8faee98e",
      "\$name": "SendMessageUploadDocumentAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Geo Location Action.
///
/// Layer: 17.
/// ID: `176f8ba1`.
class SendMessageGeoLocationAction017 extends SendMessageActionBase {
  /// Send Message Geo Location Action constructor.
  const SendMessageGeoLocationAction017() : super._();

  /// Deserialize.
  factory SendMessageGeoLocationAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageGeoLocationAction017] object.
    final returnValue = SendMessageGeoLocationAction017();

    // Now return the deserialized [SendMessageGeoLocationAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x176f8ba1.
    buffer.writeInt32(0x176f8ba1);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "176f8ba1",
      "\$name": "SendMessageGeoLocationAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Choose Contact Action.
///
/// Layer: 17.
/// ID: `628cbc6f`.
class SendMessageChooseContactAction017 extends SendMessageActionBase {
  /// Send Message Choose Contact Action constructor.
  const SendMessageChooseContactAction017() : super._();

  /// Deserialize.
  factory SendMessageChooseContactAction017.deserialize(BinaryReader reader) {
    // Construct [SendMessageChooseContactAction017] object.
    final returnValue = SendMessageChooseContactAction017();

    // Now return the deserialized [SendMessageChooseContactAction017].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x628cbc6f.
    buffer.writeInt32(0x628cbc6f);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "628cbc6f",
      "\$name": "SendMessageChooseContactAction017",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Record Round Action.
///
/// Layer: 66.
/// ID: `88f27fbc`.
class SendMessageRecordRoundAction066 extends SendMessageActionBase {
  /// Send Message Record Round Action constructor.
  const SendMessageRecordRoundAction066() : super._();

  /// Deserialize.
  factory SendMessageRecordRoundAction066.deserialize(BinaryReader reader) {
    // Construct [SendMessageRecordRoundAction066] object.
    final returnValue = SendMessageRecordRoundAction066();

    // Now return the deserialized [SendMessageRecordRoundAction066].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x88f27fbc.
    buffer.writeInt32(0x88f27fbc);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "88f27fbc",
      "\$name": "SendMessageRecordRoundAction066",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Send Message Upload Round Action.
///
/// Layer: 66.
/// ID: `bb718624`.
class SendMessageUploadRoundAction066 extends SendMessageActionBase {
  /// Send Message Upload Round Action constructor.
  const SendMessageUploadRoundAction066() : super._();

  /// Deserialize.
  factory SendMessageUploadRoundAction066.deserialize(BinaryReader reader) {
    // Construct [SendMessageUploadRoundAction066] object.
    final returnValue = SendMessageUploadRoundAction066();

    // Now return the deserialized [SendMessageUploadRoundAction066].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xbb718624.
    buffer.writeInt32(0xbb718624);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "bb718624",
      "\$name": "SendMessageUploadRoundAction066",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Image Size.
///
/// Layer: 23.
/// ID: `6c37c15c`.
class DocumentAttributeImageSize023 extends DocumentAttributeBase {
  /// Document Attribute Image Size constructor.
  const DocumentAttributeImageSize023({required this.w, required this.h})
    : super._();

  /// Deserialize.
  factory DocumentAttributeImageSize023.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeImageSize023] fields.
    final w = reader.readInt32();
    final h = reader.readInt32();

    // Construct [DocumentAttributeImageSize023] object.
    final returnValue = DocumentAttributeImageSize023(w: w, h: h);

    // Now return the deserialized [DocumentAttributeImageSize023].
    return returnValue;
  }

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6c37c15c.
    buffer.writeInt32(0x6c37c15c);

    // Write fields.
    buffer.writeInt32(w);
    buffer.writeInt32(h);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6c37c15c",
      "\$name": "DocumentAttributeImageSize023",
      "w": w,
      "h": h,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Animated.
///
/// Layer: 23.
/// ID: `11b58939`.
class DocumentAttributeAnimated023 extends DocumentAttributeBase {
  /// Document Attribute Animated constructor.
  const DocumentAttributeAnimated023() : super._();

  /// Deserialize.
  factory DocumentAttributeAnimated023.deserialize(BinaryReader reader) {
    // Construct [DocumentAttributeAnimated023] object.
    final returnValue = DocumentAttributeAnimated023();

    // Now return the deserialized [DocumentAttributeAnimated023].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x11b58939.
    buffer.writeInt32(0x11b58939);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "11b58939",
      "\$name": "DocumentAttributeAnimated023",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Sticker.
///
/// Layer: 23.
/// ID: `fb0a5727`.
class DocumentAttributeSticker023 extends DocumentAttributeBase {
  /// Document Attribute Sticker constructor.
  const DocumentAttributeSticker023() : super._();

  /// Deserialize.
  factory DocumentAttributeSticker023.deserialize(BinaryReader reader) {
    // Construct [DocumentAttributeSticker023] object.
    final returnValue = DocumentAttributeSticker023();

    // Now return the deserialized [DocumentAttributeSticker023].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xfb0a5727.
    buffer.writeInt32(0xfb0a5727);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "fb0a5727",
      "\$name": "DocumentAttributeSticker023",
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Sticker.
///
/// Layer: 45.
/// ID: `3a556302`.
class DocumentAttributeSticker045 extends DocumentAttributeBase {
  /// Document Attribute Sticker constructor.
  const DocumentAttributeSticker045({
    required this.alt,
    required this.stickerset,
  }) : super._();

  /// Deserialize.
  factory DocumentAttributeSticker045.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeSticker045] fields.
    final alt = reader.readString();
    final stickerset = reader.readObject() as InputStickerSetBase;

    // Construct [DocumentAttributeSticker045] object.
    final returnValue = DocumentAttributeSticker045(
      alt: alt,
      stickerset: stickerset,
    );

    // Now return the deserialized [DocumentAttributeSticker045].
    return returnValue;
  }

  /// Alt.
  final String alt;

  /// Stickerset.
  final InputStickerSetBase stickerset;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x3a556302.
    buffer.writeInt32(0x3a556302);

    // Write fields.
    buffer.writeString(alt);
    buffer.writeObject(stickerset);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "3a556302",
      "\$name": "DocumentAttributeSticker045",
      "alt": alt,
      "stickerset": stickerset,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Video.
///
/// Layer: 23.
/// ID: `5910cccb`.
class DocumentAttributeVideo023 extends DocumentAttributeBase {
  /// Document Attribute Video constructor.
  const DocumentAttributeVideo023({
    required this.duration,
    required this.w,
    required this.h,
  }) : super._();

  /// Deserialize.
  factory DocumentAttributeVideo023.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeVideo023] fields.
    final duration = reader.readInt32();
    final w = reader.readInt32();
    final h = reader.readInt32();

    // Construct [DocumentAttributeVideo023] object.
    final returnValue = DocumentAttributeVideo023(
      duration: duration,
      w: w,
      h: h,
    );

    // Now return the deserialized [DocumentAttributeVideo023].
    return returnValue;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x5910cccb.
    buffer.writeInt32(0x5910cccb);

    // Write fields.
    buffer.writeInt32(duration);
    buffer.writeInt32(w);
    buffer.writeInt32(h);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "5910cccb",
      "\$name": "DocumentAttributeVideo023",
      "duration": duration,
      "w": w,
      "h": h,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Video.
///
/// Layer: 66.
/// ID: `0ef02ce6`.
class DocumentAttributeVideo066 extends DocumentAttributeBase {
  /// Document Attribute Video constructor.
  const DocumentAttributeVideo066({
    required this.duration,
    required this.w,
    required this.h,
  }) : super._();

  /// Deserialize.
  factory DocumentAttributeVideo066.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeVideo066] fields.
    final _ = reader.readInt32(); // flags.
    final duration = reader.readInt32();
    final w = reader.readInt32();
    final h = reader.readInt32();

    // Construct [DocumentAttributeVideo066] object.
    final returnValue = DocumentAttributeVideo066(
      duration: duration,
      w: w,
      h: h,
    );

    // Now return the deserialized [DocumentAttributeVideo066].
    return returnValue;
  }

  /// Flags.
  int get flags {
    final v = _flag();

    return v;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x0ef02ce6.
    buffer.writeInt32(0x0ef02ce6);

    // Write fields.
    buffer.writeInt32(flags);
    buffer.writeInt32(duration);
    buffer.writeInt32(w);
    buffer.writeInt32(h);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "0ef02ce6",
      "\$name": "DocumentAttributeVideo066",
      "flags": flags,
      "duration": duration,
      "w": w,
      "h": h,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Audio.
///
/// Layer: 23.
/// ID: `051448e5`.
class DocumentAttributeAudio023 extends DocumentAttributeBase {
  /// Document Attribute Audio constructor.
  const DocumentAttributeAudio023({required this.duration}) : super._();

  /// Deserialize.
  factory DocumentAttributeAudio023.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeAudio023] fields.
    final duration = reader.readInt32();

    // Construct [DocumentAttributeAudio023] object.
    final returnValue = DocumentAttributeAudio023(duration: duration);

    // Now return the deserialized [DocumentAttributeAudio023].
    return returnValue;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x051448e5.
    buffer.writeInt32(0x051448e5);

    // Write fields.
    buffer.writeInt32(duration);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "051448e5",
      "\$name": "DocumentAttributeAudio023",
      "duration": duration,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Audio.
///
/// Layer: 45.
/// ID: `ded218e0`.
class DocumentAttributeAudio045 extends DocumentAttributeBase {
  /// Document Attribute Audio constructor.
  const DocumentAttributeAudio045({
    required this.duration,
    required this.title,
    required this.performer,
  }) : super._();

  /// Deserialize.
  factory DocumentAttributeAudio045.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeAudio045] fields.
    final duration = reader.readInt32();
    final title = reader.readString();
    final performer = reader.readString();

    // Construct [DocumentAttributeAudio045] object.
    final returnValue = DocumentAttributeAudio045(
      duration: duration,
      title: title,
      performer: performer,
    );

    // Now return the deserialized [DocumentAttributeAudio045].
    return returnValue;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Title.
  final String title;

  /// Performer.
  final String performer;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xded218e0.
    buffer.writeInt32(0xded218e0);

    // Write fields.
    buffer.writeInt32(duration);
    buffer.writeString(title);
    buffer.writeString(performer);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "ded218e0",
      "\$name": "DocumentAttributeAudio045",
      "duration": duration,
      "title": title,
      "performer": performer,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Audio.
///
/// Layer: 46.
/// ID: `9852f9c6`.
class DocumentAttributeAudio046 extends DocumentAttributeBase {
  /// Document Attribute Audio constructor.
  const DocumentAttributeAudio046({
    required this.duration,
    this.title,
    this.performer,
    this.waveform,
  }) : super._();

  /// Deserialize.
  factory DocumentAttributeAudio046.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeAudio046] fields.
    final flags = reader.readInt32();
    final duration = reader.readInt32();
    final hasTitleField = (flags & 1) != 0;
    final title = hasTitleField ? reader.readString() : null;
    final hasPerformerField = (flags & 2) != 0;
    final performer = hasPerformerField ? reader.readString() : null;
    final hasWaveformField = (flags & 4) != 0;
    final waveform = hasWaveformField ? reader.readBytes() : null;

    // Construct [DocumentAttributeAudio046] object.
    final returnValue = DocumentAttributeAudio046(
      duration: duration,
      title: title,
      performer: performer,
      waveform: waveform,
    );

    // Now return the deserialized [DocumentAttributeAudio046].
    return returnValue;
  }

  /// Flags.
  int get flags {
    final v = _flag(
      b00: title != null,
      b01: performer != null,
      b02: waveform != null,
    );

    return v;
  }

  /// Duration.
  ///
  /// Field type is Int32.
  final int duration;

  /// Title.
  final String? title;

  /// Performer.
  final String? performer;

  /// Waveform.
  final Uint8List? waveform;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x9852f9c6.
    buffer.writeInt32(0x9852f9c6);

    // Write fields.
    buffer.writeInt32(flags);
    buffer.writeInt32(duration);
    final localTitleCopy = title;
    if (localTitleCopy != null) {
      buffer.writeString(localTitleCopy);
    }
    final localPerformerCopy = performer;
    if (localPerformerCopy != null) {
      buffer.writeString(localPerformerCopy);
    }
    final localWaveformCopy = waveform;
    if (localWaveformCopy != null) {
      buffer.writeBytes(localWaveformCopy);
    }

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "9852f9c6",
      "\$name": "DocumentAttributeAudio046",
      "flags": flags,
      "duration": duration,
      "title": title,
      "performer": performer,
      "waveform": waveform,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Document Attribute Filename.
///
/// Layer: 23.
/// ID: `15590068`.
class DocumentAttributeFilename023 extends DocumentAttributeBase {
  /// Document Attribute Filename constructor.
  const DocumentAttributeFilename023({required this.fileName}) : super._();

  /// Deserialize.
  factory DocumentAttributeFilename023.deserialize(BinaryReader reader) {
    // Read [DocumentAttributeFilename023] fields.
    final fileName = reader.readString();

    // Construct [DocumentAttributeFilename023] object.
    final returnValue = DocumentAttributeFilename023(fileName: fileName);

    // Now return the deserialized [DocumentAttributeFilename023].
    return returnValue;
  }

  /// File Name.
  final String fileName;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x15590068.
    buffer.writeInt32(0x15590068);

    // Write fields.
    buffer.writeString(fileName);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "15590068",
      "\$name": "DocumentAttributeFilename023",
      "fileName": fileName,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Photo Size Empty.
///
/// Layer: 23.
/// ID: `0e17e23c`.
class PhotoSizeEmpty023 extends PhotoSizeBase {
  /// Photo Size Empty constructor.
  const PhotoSizeEmpty023({required this.type}) : super._();

  /// Deserialize.
  factory PhotoSizeEmpty023.deserialize(BinaryReader reader) {
    // Read [PhotoSizeEmpty023] fields.
    final type = reader.readString();

    // Construct [PhotoSizeEmpty023] object.
    final returnValue = PhotoSizeEmpty023(type: type);

    // Now return the deserialized [PhotoSizeEmpty023].
    return returnValue;
  }

  /// Type.
  final String type;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x0e17e23c.
    buffer.writeInt32(0x0e17e23c);

    // Write fields.
    buffer.writeString(type);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "0e17e23c",
      "\$name": "PhotoSizeEmpty023",
      "type": type,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Photo Size.
///
/// Layer: 23.
/// ID: `77bfb61b`.
class PhotoSize023 extends PhotoSizeBase {
  /// Photo Size constructor.
  const PhotoSize023({
    required this.type,
    required this.location,
    required this.w,
    required this.h,
    required this.size,
  }) : super._();

  /// Deserialize.
  factory PhotoSize023.deserialize(BinaryReader reader) {
    // Read [PhotoSize023] fields.
    final type = reader.readString();
    final location = reader.readObject() as FileLocationBase;
    final w = reader.readInt32();
    final h = reader.readInt32();
    final size = reader.readInt32();

    // Construct [PhotoSize023] object.
    final returnValue = PhotoSize023(
      type: type,
      location: location,
      w: w,
      h: h,
      size: size,
    );

    // Now return the deserialized [PhotoSize023].
    return returnValue;
  }

  /// Type.
  final String type;

  /// Location.
  final FileLocationBase location;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Size.
  ///
  /// Field type is Int32.
  final int size;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x77bfb61b.
    buffer.writeInt32(0x77bfb61b);

    // Write fields.
    buffer.writeString(type);
    buffer.writeObject(location);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeInt32(size);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "77bfb61b",
      "\$name": "PhotoSize023",
      "type": type,
      "location": location,
      "w": w,
      "h": h,
      "size": size,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Photo Cached Size.
///
/// Layer: 23.
/// ID: `e9a734fa`.
class PhotoCachedSize023 extends PhotoSizeBase {
  /// Photo Cached Size constructor.
  const PhotoCachedSize023({
    required this.type,
    required this.location,
    required this.w,
    required this.h,
    required this.bytes,
  }) : super._();

  /// Deserialize.
  factory PhotoCachedSize023.deserialize(BinaryReader reader) {
    // Read [PhotoCachedSize023] fields.
    final type = reader.readString();
    final location = reader.readObject() as FileLocationBase;
    final w = reader.readInt32();
    final h = reader.readInt32();
    final bytes = reader.readBytes();

    // Construct [PhotoCachedSize023] object.
    final returnValue = PhotoCachedSize023(
      type: type,
      location: location,
      w: w,
      h: h,
      bytes: bytes,
    );

    // Now return the deserialized [PhotoCachedSize023].
    return returnValue;
  }

  /// Type.
  final String type;

  /// Location.
  final FileLocationBase location;

  /// W.
  ///
  /// Field type is Int32.
  final int w;

  /// H.
  ///
  /// Field type is Int32.
  final int h;

  /// Bytes.
  final Uint8List bytes;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe9a734fa.
    buffer.writeInt32(0xe9a734fa);

    // Write fields.
    buffer.writeString(type);
    buffer.writeObject(location);
    buffer.writeInt32(w);
    buffer.writeInt32(h);
    buffer.writeBytes(bytes);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "e9a734fa",
      "\$name": "PhotoCachedSize023",
      "type": type,
      "location": location,
      "w": w,
      "h": h,
      "bytes": bytes,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// File Location Unavailable.
///
/// Layer: 23.
/// ID: `7c596b46`.
class FileLocationUnavailable023 extends FileLocationBase {
  /// File Location Unavailable constructor.
  const FileLocationUnavailable023({
    required this.volumeId,
    required this.localId,
    required this.secret,
  }) : super._();

  /// Deserialize.
  factory FileLocationUnavailable023.deserialize(BinaryReader reader) {
    // Read [FileLocationUnavailable023] fields.
    final volumeId = reader.readInt64();
    final localId = reader.readInt32();
    final secret = reader.readInt64();

    // Construct [FileLocationUnavailable023] object.
    final returnValue = FileLocationUnavailable023(
      volumeId: volumeId,
      localId: localId,
      secret: secret,
    );

    // Now return the deserialized [FileLocationUnavailable023].
    return returnValue;
  }

  /// Volume Id.
  ///
  /// Field type is Int64.
  final int volumeId;

  /// Local Id.
  ///
  /// Field type is Int32.
  final int localId;

  /// Secret.
  ///
  /// Field type is Int64.
  final int secret;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x7c596b46.
    buffer.writeInt32(0x7c596b46);

    // Write fields.
    buffer.writeInt64(volumeId);
    buffer.writeInt32(localId);
    buffer.writeInt64(secret);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "7c596b46",
      "\$name": "FileLocationUnavailable023",
      "volumeId": volumeId,
      "localId": localId,
      "secret": secret,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// File Location.
///
/// Layer: 23.
/// ID: `53d69076`.
class FileLocation023 extends FileLocationBase {
  /// File Location constructor.
  const FileLocation023({
    required this.dcId,
    required this.volumeId,
    required this.localId,
    required this.secret,
  }) : super._();

  /// Deserialize.
  factory FileLocation023.deserialize(BinaryReader reader) {
    // Read [FileLocation023] fields.
    final dcId = reader.readInt32();
    final volumeId = reader.readInt64();
    final localId = reader.readInt32();
    final secret = reader.readInt64();

    // Construct [FileLocation023] object.
    final returnValue = FileLocation023(
      dcId: dcId,
      volumeId: volumeId,
      localId: localId,
      secret: secret,
    );

    // Now return the deserialized [FileLocation023].
    return returnValue;
  }

  /// Dc Id.
  ///
  /// Field type is Int32.
  final int dcId;

  /// Volume Id.
  ///
  /// Field type is Int64.
  final int volumeId;

  /// Local Id.
  ///
  /// Field type is Int32.
  final int localId;

  /// Secret.
  ///
  /// Field type is Int64.
  final int secret;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x53d69076.
    buffer.writeInt32(0x53d69076);

    // Write fields.
    buffer.writeInt32(dcId);
    buffer.writeInt64(volumeId);
    buffer.writeInt32(localId);
    buffer.writeInt64(secret);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "53d69076",
      "\$name": "FileLocation023",
      "dcId": dcId,
      "volumeId": volumeId,
      "localId": localId,
      "secret": secret,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Unknown.
///
/// Layer: 45.
/// ID: `bb92ba95`.
class MessageEntityUnknown045 extends MessageEntityBase {
  /// Message Entity Unknown constructor.
  const MessageEntityUnknown045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityUnknown045.deserialize(BinaryReader reader) {
    // Read [MessageEntityUnknown045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityUnknown045] object.
    final returnValue = MessageEntityUnknown045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityUnknown045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xbb92ba95.
    buffer.writeInt32(0xbb92ba95);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "bb92ba95",
      "\$name": "MessageEntityUnknown045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Mention.
///
/// Layer: 45.
/// ID: `fa04579d`.
class MessageEntityMention045 extends MessageEntityBase {
  /// Message Entity Mention constructor.
  const MessageEntityMention045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityMention045.deserialize(BinaryReader reader) {
    // Read [MessageEntityMention045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityMention045] object.
    final returnValue = MessageEntityMention045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityMention045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xfa04579d.
    buffer.writeInt32(0xfa04579d);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "fa04579d",
      "\$name": "MessageEntityMention045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Hashtag.
///
/// Layer: 45.
/// ID: `6f635b0d`.
class MessageEntityHashtag045 extends MessageEntityBase {
  /// Message Entity Hashtag constructor.
  const MessageEntityHashtag045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityHashtag045.deserialize(BinaryReader reader) {
    // Read [MessageEntityHashtag045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityHashtag045] object.
    final returnValue = MessageEntityHashtag045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityHashtag045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6f635b0d.
    buffer.writeInt32(0x6f635b0d);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6f635b0d",
      "\$name": "MessageEntityHashtag045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Bot Command.
///
/// Layer: 45.
/// ID: `6cef8ac7`.
class MessageEntityBotCommand045 extends MessageEntityBase {
  /// Message Entity Bot Command constructor.
  const MessageEntityBotCommand045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityBotCommand045.deserialize(BinaryReader reader) {
    // Read [MessageEntityBotCommand045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityBotCommand045] object.
    final returnValue = MessageEntityBotCommand045(
      offset: offset,
      length: length,
    );

    // Now return the deserialized [MessageEntityBotCommand045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6cef8ac7.
    buffer.writeInt32(0x6cef8ac7);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6cef8ac7",
      "\$name": "MessageEntityBotCommand045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Url.
///
/// Layer: 45.
/// ID: `6ed02538`.
class MessageEntityUrl045 extends MessageEntityBase {
  /// Message Entity Url constructor.
  const MessageEntityUrl045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityUrl045.deserialize(BinaryReader reader) {
    // Read [MessageEntityUrl045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityUrl045] object.
    final returnValue = MessageEntityUrl045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityUrl045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6ed02538.
    buffer.writeInt32(0x6ed02538);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "6ed02538",
      "\$name": "MessageEntityUrl045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Email.
///
/// Layer: 45.
/// ID: `64e475c2`.
class MessageEntityEmail045 extends MessageEntityBase {
  /// Message Entity Email constructor.
  const MessageEntityEmail045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityEmail045.deserialize(BinaryReader reader) {
    // Read [MessageEntityEmail045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityEmail045] object.
    final returnValue = MessageEntityEmail045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityEmail045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x64e475c2.
    buffer.writeInt32(0x64e475c2);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "64e475c2",
      "\$name": "MessageEntityEmail045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Bold.
///
/// Layer: 45.
/// ID: `bd610bc9`.
class MessageEntityBold045 extends MessageEntityBase {
  /// Message Entity Bold constructor.
  const MessageEntityBold045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityBold045.deserialize(BinaryReader reader) {
    // Read [MessageEntityBold045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityBold045] object.
    final returnValue = MessageEntityBold045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityBold045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xbd610bc9.
    buffer.writeInt32(0xbd610bc9);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "bd610bc9",
      "\$name": "MessageEntityBold045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Italic.
///
/// Layer: 45.
/// ID: `826f8b60`.
class MessageEntityItalic045 extends MessageEntityBase {
  /// Message Entity Italic constructor.
  const MessageEntityItalic045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityItalic045.deserialize(BinaryReader reader) {
    // Read [MessageEntityItalic045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityItalic045] object.
    final returnValue = MessageEntityItalic045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityItalic045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x826f8b60.
    buffer.writeInt32(0x826f8b60);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "826f8b60",
      "\$name": "MessageEntityItalic045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Code.
///
/// Layer: 45.
/// ID: `28a20571`.
class MessageEntityCode045 extends MessageEntityBase {
  /// Message Entity Code constructor.
  const MessageEntityCode045({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityCode045.deserialize(BinaryReader reader) {
    // Read [MessageEntityCode045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityCode045] object.
    final returnValue = MessageEntityCode045(offset: offset, length: length);

    // Now return the deserialized [MessageEntityCode045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x28a20571.
    buffer.writeInt32(0x28a20571);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "28a20571",
      "\$name": "MessageEntityCode045",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Pre.
///
/// Layer: 45.
/// ID: `73924be0`.
class MessageEntityPre045 extends MessageEntityBase {
  /// Message Entity Pre constructor.
  const MessageEntityPre045({
    required this.offset,
    required this.length,
    required this.language,
  }) : super._();

  /// Deserialize.
  factory MessageEntityPre045.deserialize(BinaryReader reader) {
    // Read [MessageEntityPre045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();
    final language = reader.readString();

    // Construct [MessageEntityPre045] object.
    final returnValue = MessageEntityPre045(
      offset: offset,
      length: length,
      language: language,
    );

    // Now return the deserialized [MessageEntityPre045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Language.
  final String language;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x73924be0.
    buffer.writeInt32(0x73924be0);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);
    buffer.writeString(language);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "73924be0",
      "\$name": "MessageEntityPre045",
      "offset": offset,
      "length": length,
      "language": language,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Text Url.
///
/// Layer: 45.
/// ID: `76a6d327`.
class MessageEntityTextUrl045 extends MessageEntityBase {
  /// Message Entity Text Url constructor.
  const MessageEntityTextUrl045({
    required this.offset,
    required this.length,
    required this.url,
  }) : super._();

  /// Deserialize.
  factory MessageEntityTextUrl045.deserialize(BinaryReader reader) {
    // Read [MessageEntityTextUrl045] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();
    final url = reader.readString();

    // Construct [MessageEntityTextUrl045] object.
    final returnValue = MessageEntityTextUrl045(
      offset: offset,
      length: length,
      url: url,
    );

    // Now return the deserialized [MessageEntityTextUrl045].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Url.
  final String url;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x76a6d327.
    buffer.writeInt32(0x76a6d327);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);
    buffer.writeString(url);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "76a6d327",
      "\$name": "MessageEntityTextUrl045",
      "offset": offset,
      "length": length,
      "url": url,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Underline.
///
/// Layer: 101.
/// ID: `9c4e7e8b`.
class MessageEntityUnderline101 extends MessageEntityBase {
  /// Message Entity Underline constructor.
  const MessageEntityUnderline101({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityUnderline101.deserialize(BinaryReader reader) {
    // Read [MessageEntityUnderline101] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityUnderline101] object.
    final returnValue = MessageEntityUnderline101(
      offset: offset,
      length: length,
    );

    // Now return the deserialized [MessageEntityUnderline101].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x9c4e7e8b.
    buffer.writeInt32(0x9c4e7e8b);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "9c4e7e8b",
      "\$name": "MessageEntityUnderline101",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Strike.
///
/// Layer: 101.
/// ID: `bf0693d4`.
class MessageEntityStrike101 extends MessageEntityBase {
  /// Message Entity Strike constructor.
  const MessageEntityStrike101({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityStrike101.deserialize(BinaryReader reader) {
    // Read [MessageEntityStrike101] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityStrike101] object.
    final returnValue = MessageEntityStrike101(offset: offset, length: length);

    // Now return the deserialized [MessageEntityStrike101].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xbf0693d4.
    buffer.writeInt32(0xbf0693d4);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "bf0693d4",
      "\$name": "MessageEntityStrike101",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Blockquote.
///
/// Layer: 101.
/// ID: `020df5d0`.
class MessageEntityBlockquote101 extends MessageEntityBase {
  /// Message Entity Blockquote constructor.
  const MessageEntityBlockquote101({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntityBlockquote101.deserialize(BinaryReader reader) {
    // Read [MessageEntityBlockquote101] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntityBlockquote101] object.
    final returnValue = MessageEntityBlockquote101(
      offset: offset,
      length: length,
    );

    // Now return the deserialized [MessageEntityBlockquote101].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x020df5d0.
    buffer.writeInt32(0x020df5d0);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "020df5d0",
      "\$name": "MessageEntityBlockquote101",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Spoiler.
///
/// Layer: 144.
/// ID: `32ca960f`.
class MessageEntitySpoiler144 extends MessageEntityBase {
  /// Message Entity Spoiler constructor.
  const MessageEntitySpoiler144({required this.offset, required this.length})
    : super._();

  /// Deserialize.
  factory MessageEntitySpoiler144.deserialize(BinaryReader reader) {
    // Read [MessageEntitySpoiler144] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();

    // Construct [MessageEntitySpoiler144] object.
    final returnValue = MessageEntitySpoiler144(offset: offset, length: length);

    // Now return the deserialized [MessageEntitySpoiler144].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x32ca960f.
    buffer.writeInt32(0x32ca960f);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "32ca960f",
      "\$name": "MessageEntitySpoiler144",
      "offset": offset,
      "length": length,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Message Entity Custom Emoji.
///
/// Layer: 144.
/// ID: `c8cf05f8`.
class MessageEntityCustomEmoji144 extends MessageEntityBase {
  /// Message Entity Custom Emoji constructor.
  const MessageEntityCustomEmoji144({
    required this.offset,
    required this.length,
    required this.documentId,
  }) : super._();

  /// Deserialize.
  factory MessageEntityCustomEmoji144.deserialize(BinaryReader reader) {
    // Read [MessageEntityCustomEmoji144] fields.
    final offset = reader.readInt32();
    final length = reader.readInt32();
    final documentId = reader.readInt64();

    // Construct [MessageEntityCustomEmoji144] object.
    final returnValue = MessageEntityCustomEmoji144(
      offset: offset,
      length: length,
      documentId: documentId,
    );

    // Now return the deserialized [MessageEntityCustomEmoji144].
    return returnValue;
  }

  /// Offset.
  ///
  /// Field type is Int32.
  final int offset;

  /// Length.
  ///
  /// Field type is Int32.
  final int length;

  /// Document Id.
  ///
  /// Field type is Int64.
  final int documentId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xc8cf05f8.
    buffer.writeInt32(0xc8cf05f8);

    // Write fields.
    buffer.writeInt32(offset);
    buffer.writeInt32(length);
    buffer.writeInt64(documentId);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "c8cf05f8",
      "\$name": "MessageEntityCustomEmoji144",
      "offset": offset,
      "length": length,
      "documentId": documentId,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Input Sticker Set Short Name.
///
/// Layer: 45.
/// ID: `861cc8a0`.
class InputStickerSetShortName045 extends InputStickerSetBase {
  /// Input Sticker Set Short Name constructor.
  const InputStickerSetShortName045({required this.shortName}) : super._();

  /// Deserialize.
  factory InputStickerSetShortName045.deserialize(BinaryReader reader) {
    // Read [InputStickerSetShortName045] fields.
    final shortName = reader.readString();

    // Construct [InputStickerSetShortName045] object.
    final returnValue = InputStickerSetShortName045(shortName: shortName);

    // Now return the deserialized [InputStickerSetShortName045].
    return returnValue;
  }

  /// Short Name.
  final String shortName;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x861cc8a0.
    buffer.writeInt32(0x861cc8a0);

    // Write fields.
    buffer.writeString(shortName);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "861cc8a0",
      "\$name": "InputStickerSetShortName045",
      "shortName": shortName,
    };

    // Finished toJson.
    return returnValue;
  }
}

/// Input Sticker Set Empty.
///
/// Layer: 45.
/// ID: `ffb62b95`.
class InputStickerSetEmpty045 extends InputStickerSetBase {
  /// Input Sticker Set Empty constructor.
  const InputStickerSetEmpty045() : super._();

  /// Deserialize.
  factory InputStickerSetEmpty045.deserialize(BinaryReader reader) {
    // Construct [InputStickerSetEmpty045] object.
    final returnValue = InputStickerSetEmpty045();

    // Now return the deserialized [InputStickerSetEmpty045].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xffb62b95.
    buffer.writeInt32(0xffb62b95);

    // Finished serialization.
  }

  @override
  Map<String, dynamic> toJson() {
    final returnValue = <String, dynamic>{
      "\$hash": "ffb62b95",
      "\$name": "InputStickerSetEmpty045",
    };

    // Finished toJson.
    return returnValue;
  }
}
