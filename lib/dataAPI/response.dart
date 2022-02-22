import 'package:flutter_test_1/dataAPI/modeData.dart';

class PassResponse {
  List<NewsData> article = [];

  PassResponse();

  factory PassResponse.fromJSON(Map<String, dynamic> json) {
    PassResponse passResponse = PassResponse();

    for (var pass in json['articles']) {
      NewsData temp = NewsData.fromJSON(pass);

      passResponse.article.add(temp);
    }
    // print(passResponse.article);

    return passResponse;
  }
}
