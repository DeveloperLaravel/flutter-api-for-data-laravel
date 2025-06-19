class StringData {
  static const String baseUrl = 'https://dummyjson.com';
  static const String endGet = '/todos';
  static const String endAdd = '/todos';
  static String endSingle(int id) => 'todos/$id';
}
