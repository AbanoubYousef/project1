import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/login_model.dart';
import 'models/taples_model.dart';

Future<LoginModel> loginUser(accno, password, deviceid, gemail) async {
  final String url = 'http://api.assealcloud.net:5555/apis/login';
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  final Map<String, dynamic> data = {
    "SalesmanAccountNo": accno,
    "password": password,
    "DeviceID": deviceid,
    "GroupEmail": gemail,
  };

  final http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: jsonEncode(data),
  );
  print(response.body);
  var responsedata = jsonDecode(response.body);
  return LoginModel.fromJson(responsedata[0]);
}

Future<List<TableModel>> GetTaples(String token) async {
  final String url = "http://api.assealcloud.net:5555/Dealers/GetDealers";
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $token',
  };
  final Map<String, dynamic> data = {
    'salesManAccountNo': 2,
  };

  final http.Response response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: jsonEncode(data),
  );

  var responsedata = jsonDecode(response.body);
  // print(responsedata['data']);

  List jsonResponse = responsedata['data'];
  return jsonResponse.map((data) => TableModel.fromJson(data)).toList();
}
