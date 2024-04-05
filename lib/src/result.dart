part of '../t.dart';

/// RPC Result.
class Result<T extends TlObject> {
  const Result._(this.result, this.error);

  /// Actual result.
  final T? result;

  /// Error.
  final RpcError? error;

  Result<S> _to<S extends TlObject>() {
    if (result == null) {
      return Result<S>._(null, error);
    } else {
      return Result<S>._(result as S, null);
    }
  }

  @override
  String toString() {
    if (result != null) {
      return result.toString();
    }

    if (error != null) {
      return error.toString();
    }

    return '';
  }
}
