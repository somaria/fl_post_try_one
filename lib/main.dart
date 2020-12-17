import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  // var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

  var url = 'http://192.168.56.1:3001/';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  if (response.statusCode == 200) {
    // var jsonResponse = convert.jsonDecode(response.body);
    // var itemCount = jsonResponse['totalItems'];
    print('Number of books about http');
    print(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}