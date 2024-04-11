part of '../t.dart';

/// Represents a logged-in user.
class Session {
  /// Constructor.
  Session({
    required this.id,
    required this.authKey,
    this.lastSentMessageId = 0,
    this.seqno = 0,
  });

  /// Creates an instance of [Session] from JSON.
  factory Session.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as int;
    final authKeyJson = Map<String, dynamic>.from(data['authKey']);
    final authKey = AuthorizationKey.fromJson(authKeyJson);
    final seqno = data['seqno'] as int;
    final lastSentMessageId = data['lastSentMessageId'] as int;

    return Session(
      id: id,
      authKey: authKey,
      seqno: seqno,
      lastSentMessageId: lastSentMessageId,
    );
  }

  /// Session id.
  final int id;

  /// Id of the last message sent to the server.
  int lastSentMessageId;

  /// Message sequence number.
  int seqno;

  /// Authorization information.
  final AuthorizationKey authKey;

  /// Converts this instance to JSON.
  Map<String, dynamic> toJson() => {
        'id': id,
        'authKey': authKey.toJson(),
        'seqno': seqno,
        'lastSentMessageId': lastSentMessageId,
      };
}
