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

  /// Session id.
  final int id;

  /// Id of the last message sent to the server.
  int lastSentMessageId;

  /// Message sequence number.
  int seqno;

  /// Authorization information.
  final AuthorizationKey authKey;
}
