part of '../t.dart';

class Result<T extends TlObject> {
  const Result._(this.result, this.error);

  final T? result;
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
