import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';
import 'dart:ui' as ui;
// Importaciones clase Vistas
import '../pages/on_boarding.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ui.Image? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadImage('assets/images/splash.png');

    _toOnBording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _SplashScreanCanvas(image),
          ),
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }

  _toOnBording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});

    // print('Hola');

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoarding()));
    setState(() {
      
    });
  }

  void _loadImage(String s) async {
    final data = await rootBundle.load(s);

    final bytes = data.buffer.asUint8List();

    final image = await decodeImageFromList(bytes);

    setState(() {
      this.image = image;
    });
  }
}

class _SplashScreanCanvas extends CustomPainter {
  ui.Image? imageCanvas;

  _SplashScreanCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final pincel1 = Paint();

    pincel1.color = ColorSelect.splashColor;

    pincel1.style = PaintingStyle.fill;

    pincel1.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height * 0.10);

    path.quadraticBezierTo(size.width * 0.1, size.height * 0.19, size.width / 3,
        size.height * 0.12);

    path.quadraticBezierTo(size.width / 2.0, size.height * 0.06,
        2 * (size.width / 3), size.height * 0.12);

    path.quadraticBezierTo(size.width / 1.2, size.height * 0.16,
        3 * (size.width / 3), size.height * 0.1);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, pincel1);







    final pincel2 = Paint();

    pincel2.color = ColorSelect.splashColor;

    pincel2.style = PaintingStyle.fill;

    pincel2.strokeWidth = 5;

    final path2 = Path();

    path2.lineTo(0, size.height);

    path2.quadraticBezierTo(
        size.width * 0.70, size.height * 0.85, size.width, size.height);

    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, pincel2);

    canvas.scale(0.30, 0.30);

    canvas.drawImage(imageCanvas!, const Offset(125 * 2.5, 320 * 3.0), pincel1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
