import 'dart:convert';

import 'package:http/http.dart';

class SendAdressRepository {
  static Future<bool> sendAdress(Map<String, dynamic> pswData) async {
    try {
      String tok = 'Wr13dcc34SDC231';
      Response response = await post(
        Uri.parse('https://food-battle-app.onrender.com/send'),
        body: jsonEncode(pswData),
        headers: {
          'Authorization': tok,
          'Access-Control-Allow-Origin': '*',
          "Accept": "application/json",
          "content-type": "application/json",
          "Access-Control-Allow-Credentials":
              'true', // Required for cookies, authorization headers with HTTPS
          "Access-Control-Allow-Headers":
              "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
          "Access-Control-Allow-Methods": "POST, OPTIONS"
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
