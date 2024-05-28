import 'dart:convert';
import 'dart:io';
import 'package:getx_mvvm/data/app_exceptions.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getApi(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = getResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }

    return responseJson;
  }

  @override
  Future postApi(body, String url) async {
    dynamic jsonResponse;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(body))
          .timeout(Duration(seconds: 10));
      jsonResponse = getResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    }
    return jsonResponse;
  }

  dynamic getResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw InvalidUrlExceptions();
      default:
        throw FetchDataExceptions('Error accure${response.statusCode}');
    }
  }
}
