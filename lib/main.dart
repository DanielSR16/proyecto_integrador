import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home.dart';
import 'package:mvp_all/pages/login_2.dart';
import 'package:mvp_all/pages/progress_view.dart';
import 'package:mvp_all/pages/register.dart';
import 'package:mvp_all/pages/recuperar_password.dart';
import 'package:mvp_all/pages/vista1.dart';
import 'package:mvp_all/splash/splas_view.dart';
import 'package:mvp_all/pages/vista_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: SplashScreen(),
      initialRoute: 'vista_1',
      routes: {
        'InitialPage': (BuildContext context) => SplashScreen(),
        'login': (BuildContext context) => const login(),
        'progress': (BuildContext context) => const ProgressView(),
        'register': (BuildContext context) => Registro(),
        'login_segundaVista': (BuildContext context) => InicioSesion(),
        'recuperar_password': (BuildContext context) => RecuperarContrasenia(),
        'home': (BuildContext context) => Home(),
        'vista_1': (BuildContext context) => const vista_1()

      },
    );
  }
}
