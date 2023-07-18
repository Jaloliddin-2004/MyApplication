import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_app3/Flowersmodel.dart';

class Service {
  Future<List<Flowersmodel>> getPosts() async {
    try {
      var responce =
          await http.get(Uri.parse('http://192.168.42.46:3000/flowers'));
      print(responce.statusCode);
      print(responce.body);
      if (responce.statusCode == 200) {
        var res = flowersmodelFromJson(responce.body);
        if (responce.statusCode == 200) {
          print(res);
        }
      }
      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List> postPupil() async {
    final url = 'http://192.168.42.46:3000/account';
    var response = await http.post(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      print('Muvafaqiyatli qabul bo`ldi');
    } else {
      print('Yuborilmadi ${response.statusCode}');
    }
    return [];
  }

  Future<List> deleteData() async {
    final url = 'http://192.168.42.46:3000/account';
    final response = await http.delete(Uri.parse(url));

    if (response.statusCode == 200) {
      print('Muvafaqiyatli');
    } else {
      print('Xato ochirilmadi : ${response.statusCode}');
    }
    return [];
  }
}
