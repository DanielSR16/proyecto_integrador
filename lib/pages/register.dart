import 'package:flutter/material.dart';
import 'package:mvp_all/services/service.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  late String _name;
  late String _mail;
  late String _passw;
  final _user = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Regìstrate',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Image.asset(
            'assets/images/splash.png',
            scale: 0.4,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            label(),
            Container(
                child: Container(
              height: 330,
              child: Column(
                children: [
                  Container(
                      padding: const EdgeInsets.only(right: 270),
                      child: const Text(
                        'Nombre',
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
                      controller: _user,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: ColorSelect.paginator),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'Nombre completo',
                      ),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(right: 200),
                      child: const Text(
                        'Correo Electrónico',
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
                          borderSide:
                              const BorderSide(color: ColorSelect.paginator),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'Dirección de correo',
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(right: 250),
                          child: const Text(
                            'Contraseña',
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
                          controller: _password,
                          onChanged: (value) =>
                              setState(() => this.password = value),
                          onSubmitted: (value) =>
                              setState(() => this.password = value),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                  color: ColorSelect.paginator),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            hintText: 'Contraseña',
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
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: width * 0.8,
                          height: 35,
                          child: const Center(
                              child: Text(
                            'La contraseña debe contener caracteres, nùmeros y simbolos con un minimo de 6 caracteres.',
                            style: TextStyle(
                                color: ColorSelect.paginator, fontSize: 13),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
                // color: Colors.amber,
                ),
            Container(
              // color: Colors.amber,
              margin: const EdgeInsets.only(bottom: 100),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: ColorSelect.checkBox,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: width * 0.8,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Al registrarme, acepto los ',
                                  ),
                                  Text('términos y ',
                                      style: TextStyle(
                                          color: ColorSelect.paginatorNext)),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text('condiciones ',
                                      style: TextStyle(
                                          color: ColorSelect.paginatorNext)),
                                  Text(' y la '),
                                  Text(' política de privacidad',
                                      style: TextStyle(
                                          color: ColorSelect.paginatorNext))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 300,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ColorSelect.btnBackgroundBo2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        register_prueba(_user.text, _email.text, _password.text)
                            .then((value) {
                          if (value == 'true') {
                            Navigator.pushReplacementNamed(
                                context, 'login_segundaVista');
                          }
                        });
     
                      },
                      child: const Text('Crear Cuenta '),
                    ),
                  ),
                  finalText(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container finalText(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¿ya tienes cuenta? ',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login_segundaVista');
              },
              child: const Text(
                'Iniciar Sesion',
                style: TextStyle(
                    color: ColorSelect.paginatorNext,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }

  // Container inputs(double width, double height) {
  //   return
  // }

  SizedBox label() {
    return const SizedBox(
      width: double.infinity,
      height: 70,
      child: Padding(
        padding: EdgeInsets.only(left: 40, top: 30),
        child: Text(
          'Crear una cuenta para empezar a usar la app ',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget buildPassword(width, height) => Column(
        children: [
          Container(
              padding: const EdgeInsets.only(right: 250),
              child: const Text(
                'Contraseña',
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
              onChanged: (value) => setState(() => this.password = value),
              onSubmitted: (value) => setState(() => this.password = value),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: ColorSelect.paginator),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                ),
                border: const OutlineInputBorder(),
              ),
              obscureText: isPasswordVisible,
            ),
          ),
        ],
      );
}
