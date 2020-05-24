part of dart_openapi;

class OAuth implements Authentication {
  String _accessToken;

  OAuth({String accessToken}) : _accessToken = accessToken;

  @override
  void applyToParams(
      List<QueryParam> queryParams, Map<String, dynamic> headerParams) {
    if (_accessToken != null) {
      headerParams["Authorization"] = "Bearer $_accessToken";
    }
  }

  set accessToken(String accessToken) => _accessToken = accessToken;
}
