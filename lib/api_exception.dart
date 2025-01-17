part of dart_openapi;

class ApiException implements Exception {
  int code = 0;
  String? message;
  Exception? innerException;
  StackTrace? stackTrace;

  ApiException(this.code, this.message);

  ApiException.withInner(
      this.code, this.message, this.innerException, this.stackTrace);

  String toString() {
    if (message == null && code == 0) return "ApiException";

    if (message == null) return "ApiException $code";

    if (innerException == null) {
      return "ApiException $code: $message";
    }

    return "ApiException $code: $message (Inner exception: $innerException)\n\n" +
        stackTrace.toString();
  }
}
