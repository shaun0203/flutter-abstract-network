enum EHttpRequestAlgorithm {
  /// keep using exiting http client request of the same router
  keep,
  /// replace the existing http client request of the same router
  replace,
  /// create a new http client request
  multiple,
}