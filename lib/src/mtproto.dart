part of '../t.dart';

/// Res P Q.
///
/// ID: `05162463`.
class ResPQ extends ResPQBase {
  /// Res P Q constructor.
  const ResPQ({
    required this.nonce,
    required this.serverNonce,
    required this.pq,
    required this.serverPublicKeyFingerprints,
  }) : super._();

  /// Deserialize.
  factory ResPQ.deserialize(BinaryReader reader) {
    // Read [ResPQ] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final pq = reader.readBytes();
    final serverPublicKeyFingerprints = reader.readVectorInt64();

    // Construct [ResPQ] object.
    final returnValue = ResPQ(
      nonce: nonce,
      serverNonce: serverNonce,
      pq: pq,
      serverPublicKeyFingerprints: serverPublicKeyFingerprints,
    );

    // Now return the deserialized [ResPQ].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// Pq.
  final Uint8List pq;

  /// Server Public Key Fingerprints.
  final List<int> serverPublicKeyFingerprints;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x05162463.
    buffer.writeInt32(0x05162463);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeBytes(pq);
    buffer.writeVectorInt64(serverPublicKeyFingerprints);

    // Finished serialization.
  }
}

/// P Q Inner Data Dc.
///
/// ID: `a9f55f95`.
class PQInnerDataDc extends PQInnerDataBase {
  /// P Q Inner Data Dc constructor.
  const PQInnerDataDc({
    required this.pq,
    required this.p,
    required this.q,
    required this.nonce,
    required this.serverNonce,
    required this.newNonce,
    required this.dc,
  }) : super._();

  /// Deserialize.
  factory PQInnerDataDc.deserialize(BinaryReader reader) {
    // Read [PQInnerDataDc] fields.
    final pq = reader.readBytes();
    final p = reader.readBytes();
    final q = reader.readBytes();
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final newNonce = reader.readInt256();
    final dc = reader.readInt32();

    // Construct [PQInnerDataDc] object.
    final returnValue = PQInnerDataDc(
      pq: pq,
      p: p,
      q: q,
      nonce: nonce,
      serverNonce: serverNonce,
      newNonce: newNonce,
      dc: dc,
    );

    // Now return the deserialized [PQInnerDataDc].
    return returnValue;
  }

  /// Pq.
  final Uint8List pq;

  /// P.
  final Uint8List p;

  /// Q.
  final Uint8List q;

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// New Nonce.
  final Int256 newNonce;

  /// Dc.
  ///
  /// Field type is Int32.
  final int dc;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa9f55f95.
    buffer.writeInt32(0xa9f55f95);

    // Write fields.
    buffer.writeBytes(pq);
    buffer.writeBytes(p);
    buffer.writeBytes(q);
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt256(newNonce);
    buffer.writeInt32(dc);

    // Finished serialization.
  }
}

/// P Q Inner Data Temp Dc.
///
/// ID: `56fddf88`.
class PQInnerDataTempDc extends PQInnerDataBase {
  /// P Q Inner Data Temp Dc constructor.
  const PQInnerDataTempDc({
    required this.pq,
    required this.p,
    required this.q,
    required this.nonce,
    required this.serverNonce,
    required this.newNonce,
    required this.dc,
    required this.expiresIn,
  }) : super._();

  /// Deserialize.
  factory PQInnerDataTempDc.deserialize(BinaryReader reader) {
    // Read [PQInnerDataTempDc] fields.
    final pq = reader.readBytes();
    final p = reader.readBytes();
    final q = reader.readBytes();
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final newNonce = reader.readInt256();
    final dc = reader.readInt32();
    final expiresIn = reader.readInt32();

    // Construct [PQInnerDataTempDc] object.
    final returnValue = PQInnerDataTempDc(
      pq: pq,
      p: p,
      q: q,
      nonce: nonce,
      serverNonce: serverNonce,
      newNonce: newNonce,
      dc: dc,
      expiresIn: expiresIn,
    );

    // Now return the deserialized [PQInnerDataTempDc].
    return returnValue;
  }

  /// Pq.
  final Uint8List pq;

  /// P.
  final Uint8List p;

  /// Q.
  final Uint8List q;

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// New Nonce.
  final Int256 newNonce;

  /// Dc.
  ///
  /// Field type is Int32.
  final int dc;

  /// Expires In.
  ///
  /// Field type is Int32.
  final int expiresIn;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x56fddf88.
    buffer.writeInt32(0x56fddf88);

    // Write fields.
    buffer.writeBytes(pq);
    buffer.writeBytes(p);
    buffer.writeBytes(q);
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt256(newNonce);
    buffer.writeInt32(dc);
    buffer.writeInt32(expiresIn);

    // Finished serialization.
  }
}

/// Server D H Params Ok.
///
/// ID: `d0e8075c`.
class ServerDHParamsOk extends ServerDHParamsBase {
  /// Server D H Params Ok constructor.
  const ServerDHParamsOk({
    required this.nonce,
    required this.serverNonce,
    required this.encryptedAnswer,
  }) : super._();

  /// Deserialize.
  factory ServerDHParamsOk.deserialize(BinaryReader reader) {
    // Read [ServerDHParamsOk] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final encryptedAnswer = reader.readBytes();

    // Construct [ServerDHParamsOk] object.
    final returnValue = ServerDHParamsOk(
      nonce: nonce,
      serverNonce: serverNonce,
      encryptedAnswer: encryptedAnswer,
    );

    // Now return the deserialized [ServerDHParamsOk].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// Encrypted Answer.
  final Uint8List encryptedAnswer;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xd0e8075c.
    buffer.writeInt32(0xd0e8075c);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeBytes(encryptedAnswer);

    // Finished serialization.
  }
}

/// Server D H Inner Data.
///
/// ID: `b5890dba`.
class ServerDHInnerData extends ServerDHInnerDataBase {
  /// Server D H Inner Data constructor.
  const ServerDHInnerData({
    required this.nonce,
    required this.serverNonce,
    required this.g,
    required this.dhPrime,
    required this.gA,
    required this.serverTime,
  }) : super._();

  /// Deserialize.
  factory ServerDHInnerData.deserialize(BinaryReader reader) {
    // Read [ServerDHInnerData] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final g = reader.readInt32();
    final dhPrime = reader.readBytes();
    final gA = reader.readBytes();
    final serverTime = reader.readDateTime();

    // Construct [ServerDHInnerData] object.
    final returnValue = ServerDHInnerData(
      nonce: nonce,
      serverNonce: serverNonce,
      g: g,
      dhPrime: dhPrime,
      gA: gA,
      serverTime: serverTime,
    );

    // Now return the deserialized [ServerDHInnerData].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// G.
  ///
  /// Field type is Int32.
  final int g;

  /// Dh Prime.
  final Uint8List dhPrime;

  /// G A.
  final Uint8List gA;

  /// Server Time.
  final DateTime serverTime;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xb5890dba.
    buffer.writeInt32(0xb5890dba);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt32(g);
    buffer.writeBytes(dhPrime);
    buffer.writeBytes(gA);
    buffer.writeDateTime(serverTime);

    // Finished serialization.
  }
}

/// Client D H Inner Data.
///
/// ID: `6643b654`.
class ClientDHInnerData extends ClientDHInnerDataBase {
  /// Client D H Inner Data constructor.
  const ClientDHInnerData({
    required this.nonce,
    required this.serverNonce,
    required this.retryId,
    required this.gB,
  }) : super._();

  /// Deserialize.
  factory ClientDHInnerData.deserialize(BinaryReader reader) {
    // Read [ClientDHInnerData] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final retryId = reader.readInt64();
    final gB = reader.readBytes();

    // Construct [ClientDHInnerData] object.
    final returnValue = ClientDHInnerData(
      nonce: nonce,
      serverNonce: serverNonce,
      retryId: retryId,
      gB: gB,
    );

    // Now return the deserialized [ClientDHInnerData].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// Retry Id.
  ///
  /// Field type is Int64.
  final int retryId;

  /// G B.
  final Uint8List gB;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x6643b654.
    buffer.writeInt32(0x6643b654);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt64(retryId);
    buffer.writeBytes(gB);

    // Finished serialization.
  }
}

/// Dh Gen Ok.
///
/// ID: `3bcbf734`.
class DhGenOk extends SetClientDHParamsAnswerBase {
  /// Dh Gen Ok constructor.
  const DhGenOk({
    required this.nonce,
    required this.serverNonce,
    required this.newNonceHash1,
  }) : super._();

  /// Deserialize.
  factory DhGenOk.deserialize(BinaryReader reader) {
    // Read [DhGenOk] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final newNonceHash1 = reader.readInt128();

    // Construct [DhGenOk] object.
    final returnValue = DhGenOk(
      nonce: nonce,
      serverNonce: serverNonce,
      newNonceHash1: newNonceHash1,
    );

    // Now return the deserialized [DhGenOk].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// New Nonce Hash1.
  final Int128 newNonceHash1;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x3bcbf734.
    buffer.writeInt32(0x3bcbf734);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt128(newNonceHash1);

    // Finished serialization.
  }
}

/// Dh Gen Retry.
///
/// ID: `46dc1fb9`.
class DhGenRetry extends SetClientDHParamsAnswerBase {
  /// Dh Gen Retry constructor.
  const DhGenRetry({
    required this.nonce,
    required this.serverNonce,
    required this.newNonceHash2,
  }) : super._();

  /// Deserialize.
  factory DhGenRetry.deserialize(BinaryReader reader) {
    // Read [DhGenRetry] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final newNonceHash2 = reader.readInt128();

    // Construct [DhGenRetry] object.
    final returnValue = DhGenRetry(
      nonce: nonce,
      serverNonce: serverNonce,
      newNonceHash2: newNonceHash2,
    );

    // Now return the deserialized [DhGenRetry].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// New Nonce Hash2.
  final Int128 newNonceHash2;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x46dc1fb9.
    buffer.writeInt32(0x46dc1fb9);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt128(newNonceHash2);

    // Finished serialization.
  }
}

/// Dh Gen Fail.
///
/// ID: `a69dae02`.
class DhGenFail extends SetClientDHParamsAnswerBase {
  /// Dh Gen Fail constructor.
  const DhGenFail({
    required this.nonce,
    required this.serverNonce,
    required this.newNonceHash3,
  }) : super._();

  /// Deserialize.
  factory DhGenFail.deserialize(BinaryReader reader) {
    // Read [DhGenFail] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final newNonceHash3 = reader.readInt128();

    // Construct [DhGenFail] object.
    final returnValue = DhGenFail(
      nonce: nonce,
      serverNonce: serverNonce,
      newNonceHash3: newNonceHash3,
    );

    // Now return the deserialized [DhGenFail].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// New Nonce Hash3.
  final Int128 newNonceHash3;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa69dae02.
    buffer.writeInt32(0xa69dae02);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeInt128(newNonceHash3);

    // Finished serialization.
  }
}

/// Bind Auth Key Inner.
///
/// ID: `75a3f765`.
class BindAuthKeyInner extends BindAuthKeyInnerBase {
  /// Bind Auth Key Inner constructor.
  const BindAuthKeyInner({
    required this.nonce,
    required this.tempAuthKeyId,
    required this.permAuthKeyId,
    required this.tempSessionId,
    required this.expiresAt,
  }) : super._();

  /// Deserialize.
  factory BindAuthKeyInner.deserialize(BinaryReader reader) {
    // Read [BindAuthKeyInner] fields.
    final nonce = reader.readInt64();
    final tempAuthKeyId = reader.readInt64();
    final permAuthKeyId = reader.readInt64();
    final tempSessionId = reader.readInt64();
    final expiresAt = reader.readInt32();

    // Construct [BindAuthKeyInner] object.
    final returnValue = BindAuthKeyInner(
      nonce: nonce,
      tempAuthKeyId: tempAuthKeyId,
      permAuthKeyId: permAuthKeyId,
      tempSessionId: tempSessionId,
      expiresAt: expiresAt,
    );

    // Now return the deserialized [BindAuthKeyInner].
    return returnValue;
  }

  /// Nonce.
  ///
  /// Field type is Int64.
  final int nonce;

  /// Temp Auth Key Id.
  ///
  /// Field type is Int64.
  final int tempAuthKeyId;

  /// Perm Auth Key Id.
  ///
  /// Field type is Int64.
  final int permAuthKeyId;

  /// Temp Session Id.
  ///
  /// Field type is Int64.
  final int tempSessionId;

  /// Expires At.
  ///
  /// Field type is Int32.
  final int expiresAt;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x75a3f765.
    buffer.writeInt32(0x75a3f765);

    // Write fields.
    buffer.writeInt64(nonce);
    buffer.writeInt64(tempAuthKeyId);
    buffer.writeInt64(permAuthKeyId);
    buffer.writeInt64(tempSessionId);
    buffer.writeInt32(expiresAt);

    // Finished serialization.
  }
}

/// Rpc Result.
///
/// ID: `f35c6d01`.
class RpcResult extends RpcResultBase {
  /// Rpc Result constructor.
  const RpcResult({
    required this.reqMsgId,
    required this.result,
  }) : super._();

  /// Deserialize.
  factory RpcResult.deserialize(BinaryReader reader) {
    // Read [RpcResult] fields.
    final reqMsgId = reader.readInt64();
    final result = reader.readObject();

    // Construct [RpcResult] object.
    final returnValue = RpcResult(
      reqMsgId: reqMsgId,
      result: result,
    );

    // Now return the deserialized [RpcResult].
    return returnValue;
  }

  /// Req Msg Id.
  ///
  /// Field type is Int64.
  final int reqMsgId;

  /// Result.
  final TlObject result;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf35c6d01.
    buffer.writeInt32(0xf35c6d01);

    // Write fields.
    buffer.writeInt64(reqMsgId);
    buffer.writeObject(result);

    // Finished serialization.
  }
}

/// Rpc Error.
///
/// ID: `2144ca19`.
class RpcError extends RpcErrorBase {
  /// Rpc Error constructor.
  const RpcError({
    required this.errorCode,
    required this.errorMessage,
  }) : super._();

  /// Deserialize.
  factory RpcError.deserialize(BinaryReader reader) {
    // Read [RpcError] fields.
    final errorCode = reader.readInt32();
    final errorMessage = reader.readString();

    // Construct [RpcError] object.
    final returnValue = RpcError(
      errorCode: errorCode,
      errorMessage: errorMessage,
    );

    // Now return the deserialized [RpcError].
    return returnValue;
  }

  /// Error Code.
  ///
  /// Field type is Int32.
  final int errorCode;

  /// Error Message.
  final String errorMessage;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x2144ca19.
    buffer.writeInt32(0x2144ca19);

    // Write fields.
    buffer.writeInt32(errorCode);
    buffer.writeString(errorMessage);

    // Finished serialization.
  }
}

/// Rpc Answer Unknown.
///
/// ID: `5e2ad36e`.
class RpcAnswerUnknown extends RpcDropAnswerBase {
  /// Rpc Answer Unknown constructor.
  const RpcAnswerUnknown() : super._();

  /// Deserialize.
  factory RpcAnswerUnknown.deserialize(BinaryReader reader) {
    // Construct [RpcAnswerUnknown] object.
    final returnValue = RpcAnswerUnknown();

    // Now return the deserialized [RpcAnswerUnknown].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x5e2ad36e.
    buffer.writeInt32(0x5e2ad36e);

    // Finished serialization.
  }
}

/// Rpc Answer Dropped Running.
///
/// ID: `cd78e586`.
class RpcAnswerDroppedRunning extends RpcDropAnswerBase {
  /// Rpc Answer Dropped Running constructor.
  const RpcAnswerDroppedRunning() : super._();

  /// Deserialize.
  factory RpcAnswerDroppedRunning.deserialize(BinaryReader reader) {
    // Construct [RpcAnswerDroppedRunning] object.
    final returnValue = RpcAnswerDroppedRunning();

    // Now return the deserialized [RpcAnswerDroppedRunning].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xcd78e586.
    buffer.writeInt32(0xcd78e586);

    // Finished serialization.
  }
}

/// Rpc Answer Dropped.
///
/// ID: `a43ad8b7`.
class RpcAnswerDropped extends RpcDropAnswerBase {
  /// Rpc Answer Dropped constructor.
  const RpcAnswerDropped({
    required this.msgId,
    required this.seqNo,
    required this.bytes,
  }) : super._();

  /// Deserialize.
  factory RpcAnswerDropped.deserialize(BinaryReader reader) {
    // Read [RpcAnswerDropped] fields.
    final msgId = reader.readInt64();
    final seqNo = reader.readInt32();
    final bytes = reader.readInt32();

    // Construct [RpcAnswerDropped] object.
    final returnValue = RpcAnswerDropped(
      msgId: msgId,
      seqNo: seqNo,
      bytes: bytes,
    );

    // Now return the deserialized [RpcAnswerDropped].
    return returnValue;
  }

  /// Msg Id.
  ///
  /// Field type is Int64.
  final int msgId;

  /// Seq No.
  ///
  /// Field type is Int32.
  final int seqNo;

  /// Bytes.
  ///
  /// Field type is Int32.
  final int bytes;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa43ad8b7.
    buffer.writeInt32(0xa43ad8b7);

    // Write fields.
    buffer.writeInt64(msgId);
    buffer.writeInt32(seqNo);
    buffer.writeInt32(bytes);

    // Finished serialization.
  }
}

/// Future Salt.
///
/// ID: `0949d9dc`.
class FutureSalt extends FutureSaltBase {
  /// Future Salt constructor.
  const FutureSalt({
    required this.validSince,
    required this.validUntil,
    required this.salt,
  }) : super._();

  /// Deserialize.
  factory FutureSalt.deserialize(BinaryReader reader) {
    // Read [FutureSalt] fields.
    final validSince = reader.readInt32();
    final validUntil = reader.readInt32();
    final salt = reader.readInt64();

    // Construct [FutureSalt] object.
    final returnValue = FutureSalt(
      validSince: validSince,
      validUntil: validUntil,
      salt: salt,
    );

    // Now return the deserialized [FutureSalt].
    return returnValue;
  }

  /// Valid Since.
  ///
  /// Field type is Int32.
  final int validSince;

  /// Valid Until.
  ///
  /// Field type is Int32.
  final int validUntil;

  /// Salt.
  ///
  /// Field type is Int64.
  final int salt;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x0949d9dc.
    buffer.writeInt32(0x0949d9dc);

    // Write fields.
    buffer.writeInt32(validSince);
    buffer.writeInt32(validUntil);
    buffer.writeInt64(salt);

    // Finished serialization.
  }
}

/// Future Salts.
///
/// ID: `ae500895`.
class FutureSalts extends FutureSaltsBase {
  /// Future Salts constructor.
  const FutureSalts({
    required this.reqMsgId,
    required this.now,
    required this.salts,
  }) : super._();

  /// Deserialize.
  factory FutureSalts.deserialize(BinaryReader reader) {
    // Read [FutureSalts] fields.
    final reqMsgId = reader.readInt64();
    final now = reader.readInt32();
    final salts = reader.readVectorObject<FutureSaltBase>();

    // Construct [FutureSalts] object.
    final returnValue = FutureSalts(
      reqMsgId: reqMsgId,
      now: now,
      salts: salts,
    );

    // Now return the deserialized [FutureSalts].
    return returnValue;
  }

  /// Req Msg Id.
  ///
  /// Field type is Int64.
  final int reqMsgId;

  /// Now.
  ///
  /// Field type is Int32.
  final int now;

  /// Salts.
  final List<FutureSaltBase> salts;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xae500895.
    buffer.writeInt32(0xae500895);

    // Write fields.
    buffer.writeInt64(reqMsgId);
    buffer.writeInt32(now);
    buffer.writeVectorObject(salts);

    // Finished serialization.
  }
}

/// Pong.
///
/// ID: `347773c5`.
class Pong extends PongBase {
  /// Pong constructor.
  const Pong({
    required this.msgId,
    required this.pingId,
  }) : super._();

  /// Deserialize.
  factory Pong.deserialize(BinaryReader reader) {
    // Read [Pong] fields.
    final msgId = reader.readInt64();
    final pingId = reader.readInt64();

    // Construct [Pong] object.
    final returnValue = Pong(
      msgId: msgId,
      pingId: pingId,
    );

    // Now return the deserialized [Pong].
    return returnValue;
  }

  /// Msg Id.
  ///
  /// Field type is Int64.
  final int msgId;

  /// Ping Id.
  ///
  /// Field type is Int64.
  final int pingId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x347773c5.
    buffer.writeInt32(0x347773c5);

    // Write fields.
    buffer.writeInt64(msgId);
    buffer.writeInt64(pingId);

    // Finished serialization.
  }
}

/// Destroy Session Ok.
///
/// ID: `e22045fc`.
class DestroySessionOk extends DestroySessionResBase {
  /// Destroy Session Ok constructor.
  const DestroySessionOk({
    required this.sessionId,
  }) : super._();

  /// Deserialize.
  factory DestroySessionOk.deserialize(BinaryReader reader) {
    // Read [DestroySessionOk] fields.
    final sessionId = reader.readInt64();

    // Construct [DestroySessionOk] object.
    final returnValue = DestroySessionOk(
      sessionId: sessionId,
    );

    // Now return the deserialized [DestroySessionOk].
    return returnValue;
  }

  /// Session Id.
  ///
  /// Field type is Int64.
  final int sessionId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe22045fc.
    buffer.writeInt32(0xe22045fc);

    // Write fields.
    buffer.writeInt64(sessionId);

    // Finished serialization.
  }
}

/// Destroy Session None.
///
/// ID: `62d350c9`.
class DestroySessionNone extends DestroySessionResBase {
  /// Destroy Session None constructor.
  const DestroySessionNone({
    required this.sessionId,
  }) : super._();

  /// Deserialize.
  factory DestroySessionNone.deserialize(BinaryReader reader) {
    // Read [DestroySessionNone] fields.
    final sessionId = reader.readInt64();

    // Construct [DestroySessionNone] object.
    final returnValue = DestroySessionNone(
      sessionId: sessionId,
    );

    // Now return the deserialized [DestroySessionNone].
    return returnValue;
  }

  /// Session Id.
  ///
  /// Field type is Int64.
  final int sessionId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x62d350c9.
    buffer.writeInt32(0x62d350c9);

    // Write fields.
    buffer.writeInt64(sessionId);

    // Finished serialization.
  }
}

/// New Session Created.
///
/// ID: `9ec20908`.
class NewSessionCreated extends NewSessionBase {
  /// New Session Created constructor.
  const NewSessionCreated({
    required this.firstMsgId,
    required this.uniqueId,
    required this.serverSalt,
  }) : super._();

  /// Deserialize.
  factory NewSessionCreated.deserialize(BinaryReader reader) {
    // Read [NewSessionCreated] fields.
    final firstMsgId = reader.readInt64();
    final uniqueId = reader.readInt64();
    final serverSalt = reader.readInt64();

    // Construct [NewSessionCreated] object.
    final returnValue = NewSessionCreated(
      firstMsgId: firstMsgId,
      uniqueId: uniqueId,
      serverSalt: serverSalt,
    );

    // Now return the deserialized [NewSessionCreated].
    return returnValue;
  }

  /// First Msg Id.
  ///
  /// Field type is Int64.
  final int firstMsgId;

  /// Unique Id.
  ///
  /// Field type is Int64.
  final int uniqueId;

  /// Server Salt.
  ///
  /// Field type is Int64.
  final int serverSalt;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x9ec20908.
    buffer.writeInt32(0x9ec20908);

    // Write fields.
    buffer.writeInt64(firstMsgId);
    buffer.writeInt64(uniqueId);
    buffer.writeInt64(serverSalt);

    // Finished serialization.
  }
}

/// Msg Container.
///
/// ID: `73f1f8dc`.
class MsgContainer extends MessageContainerBase {
  /// Msg Container constructor.
  const MsgContainer({
    required this.messages,
  }) : super._();

  /// Deserialize.
  factory MsgContainer.deserialize(BinaryReader reader) {
    // Read [MsgContainer] fields.
    final messages = reader.readVectorObject<Msg>();

    // Construct [MsgContainer] object.
    final returnValue = MsgContainer(
      messages: messages,
    );

    // Now return the deserialized [MsgContainer].
    return returnValue;
  }

  /// Messages.
  final List<Msg> messages;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x73f1f8dc.
    buffer.writeInt32(0x73f1f8dc);

    // Write fields.
    buffer.writeVectorObject(messages);

    // Finished serialization.
  }
}

/// Message.
///
/// ID: `5bb8e511`.
class Msg extends TlConstructor {
  /// Message constructor.
  const Msg({
    required this.msgId,
    required this.seqno,
    required this.bytes,
    required this.body,
  }) : super._();

  /// Deserialize.
  factory Msg.deserialize(BinaryReader reader) {
    // Read [Msg] fields.
    final msgId = reader.readInt64();
    final seqno = reader.readInt32();
    final bytes = reader.readInt32();
    final body = reader.readObject();

    // Construct [Msg] object.
    final returnValue = Msg(
      msgId: msgId,
      seqno: seqno,
      bytes: bytes,
      body: body,
    );

    // Now return the deserialized [Msg].
    return returnValue;
  }

  /// Msg Id.
  ///
  /// Field type is Int64.
  final int msgId;

  /// Seqno.
  ///
  /// Field type is Int32.
  final int seqno;

  /// Bytes.
  ///
  /// Field type is Int32.
  final int bytes;

  /// Body.
  final TlObject body;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x5bb8e511.
    buffer.writeInt32(0x5bb8e511);

    // Write fields.
    buffer.writeInt64(msgId);
    buffer.writeInt32(seqno);
    buffer.writeInt32(bytes);
    buffer.writeObject(body);

    // Finished serialization.
  }
}

/// Msg Copy.
///
/// ID: `e06046b2`.
class MsgCopy extends MessageCopyBase {
  /// Msg Copy constructor.
  const MsgCopy({
    required this.origMessage,
  }) : super._();

  /// Deserialize.
  factory MsgCopy.deserialize(BinaryReader reader) {
    // Read [MsgCopy] fields.
    final origMessage = reader.readObject() as Msg;

    // Construct [MsgCopy] object.
    final returnValue = MsgCopy(
      origMessage: origMessage,
    );

    // Now return the deserialized [MsgCopy].
    return returnValue;
  }

  /// Orig Message.
  final Msg origMessage;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe06046b2.
    buffer.writeInt32(0xe06046b2);

    // Write fields.
    buffer.writeObject(origMessage);

    // Finished serialization.
  }
}

/// Gzip Packed.
///
/// ID: `3072cfa1`.
class GzipPacked extends TlObject {
  /// Gzip Packed constructor.
  const GzipPacked({
    required this.packedData,
  }) : super._();

  /// Deserialize.
  factory GzipPacked.deserialize(BinaryReader reader) {
    // Read [GzipPacked] fields.
    final packedData = reader.readBytes();

    // Construct [GzipPacked] object.
    final returnValue = GzipPacked(
      packedData: packedData,
    );

    // Now return the deserialized [GzipPacked].
    return returnValue;
  }

  /// Packed Data.
  final Uint8List packedData;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x3072cfa1.
    buffer.writeInt32(0x3072cfa1);

    // Write fields.
    buffer.writeBytes(packedData);

    // Finished serialization.
  }
}

/// Msgs Ack.
///
/// ID: `62d6b459`.
class MsgsAck extends MsgsAckBase {
  /// Msgs Ack constructor.
  const MsgsAck({
    required this.msgIds,
  }) : super._();

  /// Deserialize.
  factory MsgsAck.deserialize(BinaryReader reader) {
    // Read [MsgsAck] fields.
    final msgIds = reader.readVectorInt64();

    // Construct [MsgsAck] object.
    final returnValue = MsgsAck(
      msgIds: msgIds,
    );

    // Now return the deserialized [MsgsAck].
    return returnValue;
  }

  /// Msg Ids.
  final List<int> msgIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x62d6b459.
    buffer.writeInt32(0x62d6b459);

    // Write fields.
    buffer.writeVectorInt64(msgIds);

    // Finished serialization.
  }
}

/// Bad Msg Notification.
///
/// ID: `a7eff811`.
class BadMsgNotification extends BadMsgNotificationBase {
  /// Bad Msg Notification constructor.
  const BadMsgNotification({
    required this.badMsgId,
    required this.badMsgSeqno,
    required this.errorCode,
  }) : super._();

  /// Deserialize.
  factory BadMsgNotification.deserialize(BinaryReader reader) {
    // Read [BadMsgNotification] fields.
    final badMsgId = reader.readInt64();
    final badMsgSeqno = reader.readInt32();
    final errorCode = reader.readInt32();

    // Construct [BadMsgNotification] object.
    final returnValue = BadMsgNotification(
      badMsgId: badMsgId,
      badMsgSeqno: badMsgSeqno,
      errorCode: errorCode,
    );

    // Now return the deserialized [BadMsgNotification].
    return returnValue;
  }

  /// Bad Msg Id.
  ///
  /// Field type is Int64.
  final int badMsgId;

  /// Bad Msg Seqno.
  ///
  /// Field type is Int32.
  final int badMsgSeqno;

  /// Error Code.
  ///
  /// Field type is Int32.
  final int errorCode;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xa7eff811.
    buffer.writeInt32(0xa7eff811);

    // Write fields.
    buffer.writeInt64(badMsgId);
    buffer.writeInt32(badMsgSeqno);
    buffer.writeInt32(errorCode);

    // Finished serialization.
  }
}

/// Bad Server Salt.
///
/// ID: `edab447b`.
class BadServerSalt extends BadMsgNotificationBase {
  /// Bad Server Salt constructor.
  const BadServerSalt({
    required this.badMsgId,
    required this.badMsgSeqno,
    required this.errorCode,
    required this.newServerSalt,
  }) : super._();

  /// Deserialize.
  factory BadServerSalt.deserialize(BinaryReader reader) {
    // Read [BadServerSalt] fields.
    final badMsgId = reader.readInt64();
    final badMsgSeqno = reader.readInt32();
    final errorCode = reader.readInt32();
    final newServerSalt = reader.readInt64();

    // Construct [BadServerSalt] object.
    final returnValue = BadServerSalt(
      badMsgId: badMsgId,
      badMsgSeqno: badMsgSeqno,
      errorCode: errorCode,
      newServerSalt: newServerSalt,
    );

    // Now return the deserialized [BadServerSalt].
    return returnValue;
  }

  /// Bad Msg Id.
  ///
  /// Field type is Int64.
  final int badMsgId;

  /// Bad Msg Seqno.
  ///
  /// Field type is Int32.
  final int badMsgSeqno;

  /// Error Code.
  ///
  /// Field type is Int32.
  final int errorCode;

  /// New Server Salt.
  ///
  /// Field type is Int64.
  final int newServerSalt;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xedab447b.
    buffer.writeInt32(0xedab447b);

    // Write fields.
    buffer.writeInt64(badMsgId);
    buffer.writeInt32(badMsgSeqno);
    buffer.writeInt32(errorCode);
    buffer.writeInt64(newServerSalt);

    // Finished serialization.
  }
}

/// Msg Resend Req.
///
/// ID: `7d861a08`.
class MsgResendReq extends MsgResendReqBase {
  /// Msg Resend Req constructor.
  const MsgResendReq({
    required this.msgIds,
  }) : super._();

  /// Deserialize.
  factory MsgResendReq.deserialize(BinaryReader reader) {
    // Read [MsgResendReq] fields.
    final msgIds = reader.readVectorInt64();

    // Construct [MsgResendReq] object.
    final returnValue = MsgResendReq(
      msgIds: msgIds,
    );

    // Now return the deserialized [MsgResendReq].
    return returnValue;
  }

  /// Msg Ids.
  final List<int> msgIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x7d861a08.
    buffer.writeInt32(0x7d861a08);

    // Write fields.
    buffer.writeVectorInt64(msgIds);

    // Finished serialization.
  }
}

/// Msgs State Req.
///
/// ID: `da69fb52`.
class MsgsStateReq extends MsgsStateReqBase {
  /// Msgs State Req constructor.
  const MsgsStateReq({
    required this.msgIds,
  }) : super._();

  /// Deserialize.
  factory MsgsStateReq.deserialize(BinaryReader reader) {
    // Read [MsgsStateReq] fields.
    final msgIds = reader.readVectorInt64();

    // Construct [MsgsStateReq] object.
    final returnValue = MsgsStateReq(
      msgIds: msgIds,
    );

    // Now return the deserialized [MsgsStateReq].
    return returnValue;
  }

  /// Msg Ids.
  final List<int> msgIds;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xda69fb52.
    buffer.writeInt32(0xda69fb52);

    // Write fields.
    buffer.writeVectorInt64(msgIds);

    // Finished serialization.
  }
}

/// Msgs State Info.
///
/// ID: `04deb57d`.
class MsgsStateInfo extends MsgsStateInfoBase {
  /// Msgs State Info constructor.
  const MsgsStateInfo({
    required this.reqMsgId,
    required this.info,
  }) : super._();

  /// Deserialize.
  factory MsgsStateInfo.deserialize(BinaryReader reader) {
    // Read [MsgsStateInfo] fields.
    final reqMsgId = reader.readInt64();
    final info = reader.readBytes();

    // Construct [MsgsStateInfo] object.
    final returnValue = MsgsStateInfo(
      reqMsgId: reqMsgId,
      info: info,
    );

    // Now return the deserialized [MsgsStateInfo].
    return returnValue;
  }

  /// Req Msg Id.
  ///
  /// Field type is Int64.
  final int reqMsgId;

  /// Info.
  final Uint8List info;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x04deb57d.
    buffer.writeInt32(0x04deb57d);

    // Write fields.
    buffer.writeInt64(reqMsgId);
    buffer.writeBytes(info);

    // Finished serialization.
  }
}

/// Msgs All Info.
///
/// ID: `8cc0d131`.
class MsgsAllInfo extends MsgsAllInfoBase {
  /// Msgs All Info constructor.
  const MsgsAllInfo({
    required this.msgIds,
    required this.info,
  }) : super._();

  /// Deserialize.
  factory MsgsAllInfo.deserialize(BinaryReader reader) {
    // Read [MsgsAllInfo] fields.
    final msgIds = reader.readVectorInt64();
    final info = reader.readBytes();

    // Construct [MsgsAllInfo] object.
    final returnValue = MsgsAllInfo(
      msgIds: msgIds,
      info: info,
    );

    // Now return the deserialized [MsgsAllInfo].
    return returnValue;
  }

  /// Msg Ids.
  final List<int> msgIds;

  /// Info.
  final Uint8List info;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x8cc0d131.
    buffer.writeInt32(0x8cc0d131);

    // Write fields.
    buffer.writeVectorInt64(msgIds);
    buffer.writeBytes(info);

    // Finished serialization.
  }
}

/// Msg Detailed Info.
///
/// ID: `276d3ec6`.
class MsgDetailedInfo extends MsgDetailedInfoBase {
  /// Msg Detailed Info constructor.
  const MsgDetailedInfo({
    required this.msgId,
    required this.answerMsgId,
    required this.bytes,
    required this.status,
  }) : super._();

  /// Deserialize.
  factory MsgDetailedInfo.deserialize(BinaryReader reader) {
    // Read [MsgDetailedInfo] fields.
    final msgId = reader.readInt64();
    final answerMsgId = reader.readInt64();
    final bytes = reader.readInt32();
    final status = reader.readInt32();

    // Construct [MsgDetailedInfo] object.
    final returnValue = MsgDetailedInfo(
      msgId: msgId,
      answerMsgId: answerMsgId,
      bytes: bytes,
      status: status,
    );

    // Now return the deserialized [MsgDetailedInfo].
    return returnValue;
  }

  /// Msg Id.
  ///
  /// Field type is Int64.
  final int msgId;

  /// Answer Msg Id.
  ///
  /// Field type is Int64.
  final int answerMsgId;

  /// Bytes.
  ///
  /// Field type is Int32.
  final int bytes;

  /// Status.
  ///
  /// Field type is Int32.
  final int status;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x276d3ec6.
    buffer.writeInt32(0x276d3ec6);

    // Write fields.
    buffer.writeInt64(msgId);
    buffer.writeInt64(answerMsgId);
    buffer.writeInt32(bytes);
    buffer.writeInt32(status);

    // Finished serialization.
  }
}

/// Msg New Detailed Info.
///
/// ID: `809db6df`.
class MsgNewDetailedInfo extends MsgDetailedInfoBase {
  /// Msg New Detailed Info constructor.
  const MsgNewDetailedInfo({
    required this.answerMsgId,
    required this.bytes,
    required this.status,
  }) : super._();

  /// Deserialize.
  factory MsgNewDetailedInfo.deserialize(BinaryReader reader) {
    // Read [MsgNewDetailedInfo] fields.
    final answerMsgId = reader.readInt64();
    final bytes = reader.readInt32();
    final status = reader.readInt32();

    // Construct [MsgNewDetailedInfo] object.
    final returnValue = MsgNewDetailedInfo(
      answerMsgId: answerMsgId,
      bytes: bytes,
      status: status,
    );

    // Now return the deserialized [MsgNewDetailedInfo].
    return returnValue;
  }

  /// Answer Msg Id.
  ///
  /// Field type is Int64.
  final int answerMsgId;

  /// Bytes.
  ///
  /// Field type is Int32.
  final int bytes;

  /// Status.
  ///
  /// Field type is Int32.
  final int status;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x809db6df.
    buffer.writeInt32(0x809db6df);

    // Write fields.
    buffer.writeInt64(answerMsgId);
    buffer.writeInt32(bytes);
    buffer.writeInt32(status);

    // Finished serialization.
  }
}

/// Destroy Auth Key Ok.
///
/// ID: `f660e1d4`.
class DestroyAuthKeyOk extends DestroyAuthKeyResBase {
  /// Destroy Auth Key Ok constructor.
  const DestroyAuthKeyOk() : super._();

  /// Deserialize.
  factory DestroyAuthKeyOk.deserialize(BinaryReader reader) {
    // Construct [DestroyAuthKeyOk] object.
    final returnValue = DestroyAuthKeyOk();

    // Now return the deserialized [DestroyAuthKeyOk].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf660e1d4.
    buffer.writeInt32(0xf660e1d4);

    // Finished serialization.
  }
}

/// Destroy Auth Key None.
///
/// ID: `0a9f2259`.
class DestroyAuthKeyNone extends DestroyAuthKeyResBase {
  /// Destroy Auth Key None constructor.
  const DestroyAuthKeyNone() : super._();

  /// Deserialize.
  factory DestroyAuthKeyNone.deserialize(BinaryReader reader) {
    // Construct [DestroyAuthKeyNone] object.
    final returnValue = DestroyAuthKeyNone();

    // Now return the deserialized [DestroyAuthKeyNone].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x0a9f2259.
    buffer.writeInt32(0x0a9f2259);

    // Finished serialization.
  }
}

/// Destroy Auth Key Fail.
///
/// ID: `ea109b13`.
class DestroyAuthKeyFail extends DestroyAuthKeyResBase {
  /// Destroy Auth Key Fail constructor.
  const DestroyAuthKeyFail() : super._();

  /// Deserialize.
  factory DestroyAuthKeyFail.deserialize(BinaryReader reader) {
    // Construct [DestroyAuthKeyFail] object.
    final returnValue = DestroyAuthKeyFail();

    // Now return the deserialized [DestroyAuthKeyFail].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xea109b13.
    buffer.writeInt32(0xea109b13);

    // Finished serialization.
  }
}

/// Req Pq Multi.
///
/// ID: `be7e8ef1`.
class ReqPqMulti extends TlMethod<ResPQBase> {
  /// Req Pq Multi constructor.
  const ReqPqMulti({
    required this.nonce,
  }) : super._();

  /// Deserialize.
  factory ReqPqMulti.deserialize(BinaryReader reader) {
    // Read [ReqPqMulti] fields.
    final nonce = reader.readInt128();

    // Construct [ReqPqMulti] object.
    final returnValue = ReqPqMulti(
      nonce: nonce,
    );

    // Now return the deserialized [ReqPqMulti].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xbe7e8ef1.
    buffer.writeInt32(0xbe7e8ef1);

    // Write fields.
    buffer.writeInt128(nonce);

    // Finished serialization.
  }
}

/// Req D H Params.
///
/// ID: `d712e4be`.
class ReqDHParams extends TlMethod<ServerDHParamsBase> {
  /// Req D H Params constructor.
  const ReqDHParams({
    required this.nonce,
    required this.serverNonce,
    required this.p,
    required this.q,
    required this.publicKeyFingerprint,
    required this.encryptedData,
  }) : super._();

  /// Deserialize.
  factory ReqDHParams.deserialize(BinaryReader reader) {
    // Read [ReqDHParams] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final p = reader.readBytes();
    final q = reader.readBytes();
    final publicKeyFingerprint = reader.readInt64();
    final encryptedData = reader.readBytes();

    // Construct [ReqDHParams] object.
    final returnValue = ReqDHParams(
      nonce: nonce,
      serverNonce: serverNonce,
      p: p,
      q: q,
      publicKeyFingerprint: publicKeyFingerprint,
      encryptedData: encryptedData,
    );

    // Now return the deserialized [ReqDHParams].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// P.
  final Uint8List p;

  /// Q.
  final Uint8List q;

  /// Public Key Fingerprint.
  ///
  /// Field type is Int64.
  final int publicKeyFingerprint;

  /// Encrypted Data.
  final Uint8List encryptedData;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xd712e4be.
    buffer.writeInt32(0xd712e4be);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeBytes(p);
    buffer.writeBytes(q);
    buffer.writeInt64(publicKeyFingerprint);
    buffer.writeBytes(encryptedData);

    // Finished serialization.
  }
}

/// Set Client D H Params.
///
/// ID: `f5045f1f`.
class SetClientDHParams extends TlMethod<SetClientDHParamsAnswerBase> {
  /// Set Client D H Params constructor.
  const SetClientDHParams({
    required this.nonce,
    required this.serverNonce,
    required this.encryptedData,
  }) : super._();

  /// Deserialize.
  factory SetClientDHParams.deserialize(BinaryReader reader) {
    // Read [SetClientDHParams] fields.
    final nonce = reader.readInt128();
    final serverNonce = reader.readInt128();
    final encryptedData = reader.readBytes();

    // Construct [SetClientDHParams] object.
    final returnValue = SetClientDHParams(
      nonce: nonce,
      serverNonce: serverNonce,
      encryptedData: encryptedData,
    );

    // Now return the deserialized [SetClientDHParams].
    return returnValue;
  }

  /// Nonce.
  final Int128 nonce;

  /// Server Nonce.
  final Int128 serverNonce;

  /// Encrypted Data.
  final Uint8List encryptedData;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf5045f1f.
    buffer.writeInt32(0xf5045f1f);

    // Write fields.
    buffer.writeInt128(nonce);
    buffer.writeInt128(serverNonce);
    buffer.writeBytes(encryptedData);

    // Finished serialization.
  }
}

/// Rpc Drop Answer.
///
/// ID: `58e4a740`.
class RpcDropAnswer extends TlMethod<RpcDropAnswerBase> {
  /// Rpc Drop Answer constructor.
  const RpcDropAnswer({
    required this.reqMsgId,
  }) : super._();

  /// Deserialize.
  factory RpcDropAnswer.deserialize(BinaryReader reader) {
    // Read [RpcDropAnswer] fields.
    final reqMsgId = reader.readInt64();

    // Construct [RpcDropAnswer] object.
    final returnValue = RpcDropAnswer(
      reqMsgId: reqMsgId,
    );

    // Now return the deserialized [RpcDropAnswer].
    return returnValue;
  }

  /// Req Msg Id.
  ///
  /// Field type is Int64.
  final int reqMsgId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x58e4a740.
    buffer.writeInt32(0x58e4a740);

    // Write fields.
    buffer.writeInt64(reqMsgId);

    // Finished serialization.
  }
}

/// Get Future Salts.
///
/// ID: `b921bd04`.
class GetFutureSalts extends TlMethod<FutureSaltsBase> {
  /// Get Future Salts constructor.
  const GetFutureSalts({
    required this.num,
  }) : super._();

  /// Deserialize.
  factory GetFutureSalts.deserialize(BinaryReader reader) {
    // Read [GetFutureSalts] fields.
    final num = reader.readInt32();

    // Construct [GetFutureSalts] object.
    final returnValue = GetFutureSalts(
      num: num,
    );

    // Now return the deserialized [GetFutureSalts].
    return returnValue;
  }

  /// Num.
  ///
  /// Field type is Int32.
  final int num;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xb921bd04.
    buffer.writeInt32(0xb921bd04);

    // Write fields.
    buffer.writeInt32(num);

    // Finished serialization.
  }
}

/// Ping.
///
/// ID: `7abe77ec`.
class Ping extends TlMethod<PongBase> {
  /// Ping constructor.
  const Ping({
    required this.pingId,
  }) : super._();

  /// Deserialize.
  factory Ping.deserialize(BinaryReader reader) {
    // Read [Ping] fields.
    final pingId = reader.readInt64();

    // Construct [Ping] object.
    final returnValue = Ping(
      pingId: pingId,
    );

    // Now return the deserialized [Ping].
    return returnValue;
  }

  /// Ping Id.
  ///
  /// Field type is Int64.
  final int pingId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x7abe77ec.
    buffer.writeInt32(0x7abe77ec);

    // Write fields.
    buffer.writeInt64(pingId);

    // Finished serialization.
  }
}

/// Ping Delay Disconnect.
///
/// ID: `f3427b8c`.
class PingDelayDisconnect extends TlMethod<PongBase> {
  /// Ping Delay Disconnect constructor.
  const PingDelayDisconnect({
    required this.pingId,
    required this.disconnectDelay,
  }) : super._();

  /// Deserialize.
  factory PingDelayDisconnect.deserialize(BinaryReader reader) {
    // Read [PingDelayDisconnect] fields.
    final pingId = reader.readInt64();
    final disconnectDelay = reader.readInt32();

    // Construct [PingDelayDisconnect] object.
    final returnValue = PingDelayDisconnect(
      pingId: pingId,
      disconnectDelay: disconnectDelay,
    );

    // Now return the deserialized [PingDelayDisconnect].
    return returnValue;
  }

  /// Ping Id.
  ///
  /// Field type is Int64.
  final int pingId;

  /// Disconnect Delay.
  ///
  /// Field type is Int32.
  final int disconnectDelay;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xf3427b8c.
    buffer.writeInt32(0xf3427b8c);

    // Write fields.
    buffer.writeInt64(pingId);
    buffer.writeInt32(disconnectDelay);

    // Finished serialization.
  }
}

/// Destroy Session.
///
/// ID: `e7512126`.
class DestroySession extends TlMethod<DestroySessionResBase> {
  /// Destroy Session constructor.
  const DestroySession({
    required this.sessionId,
  }) : super._();

  /// Deserialize.
  factory DestroySession.deserialize(BinaryReader reader) {
    // Read [DestroySession] fields.
    final sessionId = reader.readInt64();

    // Construct [DestroySession] object.
    final returnValue = DestroySession(
      sessionId: sessionId,
    );

    // Now return the deserialized [DestroySession].
    return returnValue;
  }

  /// Session Id.
  ///
  /// Field type is Int64.
  final int sessionId;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xe7512126.
    buffer.writeInt32(0xe7512126);

    // Write fields.
    buffer.writeInt64(sessionId);

    // Finished serialization.
  }
}

/// Http Wait.
///
/// ID: `9299359f`.
class HttpWait extends TlMethod<HttpWait> {
  /// Http Wait constructor.
  const HttpWait({
    required this.maxDelay,
    required this.waitAfter,
    required this.maxWait,
  }) : super._();

  /// Deserialize.
  factory HttpWait.deserialize(BinaryReader reader) {
    // Read [HttpWait] fields.
    final maxDelay = reader.readInt32();
    final waitAfter = reader.readInt32();
    final maxWait = reader.readInt32();

    // Construct [HttpWait] object.
    final returnValue = HttpWait(
      maxDelay: maxDelay,
      waitAfter: waitAfter,
      maxWait: maxWait,
    );

    // Now return the deserialized [HttpWait].
    return returnValue;
  }

  /// Max Delay.
  ///
  /// Field type is Int32.
  final int maxDelay;

  /// Wait After.
  ///
  /// Field type is Int32.
  final int waitAfter;

  /// Max Wait.
  ///
  /// Field type is Int32.
  final int maxWait;

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0x9299359f.
    buffer.writeInt32(0x9299359f);

    // Write fields.
    buffer.writeInt32(maxDelay);
    buffer.writeInt32(waitAfter);
    buffer.writeInt32(maxWait);

    // Finished serialization.
  }
}

/// Destroy Auth Key.
///
/// ID: `d1435160`.
class DestroyAuthKey extends TlMethod<DestroyAuthKeyResBase> {
  /// Destroy Auth Key constructor.
  const DestroyAuthKey() : super._();

  /// Deserialize.
  factory DestroyAuthKey.deserialize(BinaryReader reader) {
    // Construct [DestroyAuthKey] object.
    final returnValue = DestroyAuthKey();

    // Now return the deserialized [DestroyAuthKey].
    return returnValue;
  }

  /// Serialize.
  @override
  void serialize(List<int> buffer) {
    // Write type-id 0xd1435160.
    buffer.writeInt32(0xd1435160);

    // Finished serialization.
  }
}
