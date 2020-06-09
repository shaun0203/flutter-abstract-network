enum HttpMethod {
  get,
  put,
  post,
  delete
}

extension HttpMethodExtension on HttpMethod {
  static const methods = {
    HttpMethod.get: 'GET',
    HttpMethod.put: 'PUT',
    HttpMethod.post: 'POST',
    HttpMethod.delete: 'DELETE',
  };

  String get value => methods[this];
}

enum HttpCode {
  success,
  serverError,
  unauthorized,
}

extension HttpCodeExtension on HttpCode {
  static const values = {
    HttpCode.success: 200,
    HttpCode.serverError: 500,
    HttpCode.unauthorized: 401,
  };

  int get value => values[this];
}
