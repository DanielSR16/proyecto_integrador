import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

String ip = '172.20.10.7';

Future<List<dynamic>> login_prueba(String correo, String password) async {
  print(correo);
  print(password);
  try {
    final response = await http.post(
      Uri.http(ip + ':3050', '/login'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: json.encode(
        {"correo": correo, "contrasenia": password},
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data[0] == 'incorrecto') {
        return ['incorrecto'];
      } else {
        return data;
      }
    } else {
      return ['No se ha podido conectar al servidor'];
    }
  } catch (e) {
    return ['Error'];
  }
}

Future<String> register_prueba(
    String name, String correo, String password) async {
  try {
    final response = await http.post(
      Uri.http(ip + ':3050', '/newUser'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: json.encode(
        {"nombre": name, "correo": correo, "contrasenia": password},
      ),
    );

    if (response.statusCode == 200) {
      // final data = json.decode(response.body);
      var data = response.body;
      print(data);
      if (data == 'Usuario Existente') {
        return 'El usuario ya existe';
      } else {
        return data;
      }
    } else {
      return 'No se ha podido conectar al servidor';
    }
  } catch (e) {
    return 'Error';
  }
}

Future<String> get_barners() async {
  try {
    final response = await http.post(
      Uri.http('desarrollovan-tis.dedyn.io:4030', '/GetImagesCarousel'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: json.encode(
        {"idChanel": 1},
      ),
    );

    if (response.statusCode == 200) {
      // final data = json.decode(response.body);
      var data = response.body;

      if (data == 'Usuario Existente') {
        return 'El usuario ya existe';
      } else {
        return data;
      }
    } else {
      return 'No se ha podido conectar al servidor';
    }
  } catch (e) {
    return 'Error';
  }
}

Future<dynamic> get_productos() async {
  try {
    final response = await http.post(
      Uri.http('desarrollovan-tis.dedyn.io:4030', '/GetProductsByIdSeller'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: json.encode(
        {"idSeller": 1},
      ),
    );

    if (response.statusCode == 200) {
      // final data = json.decode(response.body);
      var data = response.body;

      if (data == 'Usuario Existente') {
        return 'El usuario ya existe';
      } else {
        return data;
      }
    } else {
      return 'No se ha podido conectar al servidor';
    }
  } catch (e) {
    return 'Error';
  }
}
