import 'package:flutter/material.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';

import '../services/service.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({Key? key}) : super(key: key);

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  late String _mail;
  late String _passw;

  String password = '';
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Iniciar Sesión',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(
              'assets/images/splash.png',
              scale: 0.4,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            width: double.infinity,
            height: 70,
            child: Padding(
              padding: EdgeInsets.only(left: 40, top: 30),
              child: Text(
                'Inicia sesión con tu cuenta para continuar',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(right: 200, bottom: 20),
                  child: const Text(
                    'Correo electrónico',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  )),
              Container(
                width: width * 0.8,
                height: height * 0.1,
                margin: const EdgeInsets.only(top: 1),
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: ColorSelect.paginator),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 250),
                      child: const Text(
                        'Contraseña',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      width: width * 0.8,
                      height: height * 0.1,
                      margin: const EdgeInsets.only(top: 15),
                      child: TextField(
                        controller: _password,
                        onChanged: (value) =>
                            setState(() => this.password = value),
                        onSubmitted: (value) =>
                            setState(() => this.password = value),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide:
                                BorderSide(color: ColorSelect.paginator),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            color: ColorSelect.checkBox,
                            icon: isPasswordVisible
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () => setState(
                                () => isPasswordVisible = !isPasswordVisible),
                          ),
                          border: const OutlineInputBorder(),
                        ),
                        obscureText: isPasswordVisible,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 115),
                    width: width * 0.9,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'recuperar_password');
                        },
                        child: const Text(
                          '¿Has olvidado tu contraseña?',
                          style: TextStyle(
                              color: ColorSelect.paginatorNext,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 160),
                      width: 300,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: ColorSelect.btnBackgroundBo2,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {
                          login_prueba(_email.text, _password.text)
                              .then((value) {
                            print(value);
                            if (value[0] != 'incorrecto') {
                              Navigator.pushReplacementNamed(context, 'home');
                            }
                          });
                        },
                        child: const Text('Ingresar'),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 48,
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '¿Todavía no tienes cuenta? ',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            child: const Text(
                              'Registrate',
                              style: TextStyle(
                                  color: ColorSelect.paginatorNext,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
