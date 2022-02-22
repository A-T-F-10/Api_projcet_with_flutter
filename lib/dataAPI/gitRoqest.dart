import 'dart:convert' as convert;
import 'package:flutter_test_1/dataAPI/apiKay.dart';
import 'package:flutter_test_1/dataAPI/modeData.dart';
import 'package:flutter_test_1/dataAPI/response.dart';
import 'package:http/http.dart' as http;

class MyRequest {
  var url = Uri.parse(KayApi.kay);

  PassResponse passResponse = PassResponse();
  Future<List<NewsData>> format() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);

      passResponse = PassResponse.fromJSON(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return passResponse.article;
  }

  Future postData() async {
    var response = http.delete(url);
    return response;
  }
}
