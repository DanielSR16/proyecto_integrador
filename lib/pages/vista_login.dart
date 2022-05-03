import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
            child: Image.asset(
              'assets/images/splash.png',
              scale: 4,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: 300,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff3168f5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(FontAwesomeIcons.google),
                    Text(
                      'Continuar con Google',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 300,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff324fa5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(FontAwesomeIcons.facebookSquare),
                    Text(
                      'Continuar con Facebook',
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 300,
            height: 48,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffffffff),
                  side: const BorderSide(color: Color(0xff64686f), width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'register');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.mail_rounded,
                      color: Color(0xff64686f),
                    ),
                    Text(
                      'Registratse con e-mail',
                      style: TextStyle(fontSize: 18, color: Color(0xff64686f)),
                    )
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: SizedBox(
              height: 37,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Entrar como invitado',
                  style: TextStyle(
                      color: Color(0xfffc1460),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 37,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Entrar como vendedor',
                style: TextStyle(
                    color: Color(0xff76a757),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(fontSize: 15),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_segundaVista');
                  },
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                        color: Color(0xfffc1460),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
