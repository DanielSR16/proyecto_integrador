import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mvp_all/painters/ProgressPainter.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double progress = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    update();
  }

  @override
  void dispose() {
    super.dispose();
    update();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // margin: EdgeInsets.all(value),
          color: Colors.transparent,
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: ProgressPainter(progress),
          ),
        ),
      ),
    );
  }

  void update() {
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (progress == 100) {
        Navigator.pushNamed(context, 'login');
        progress = 0;
        timer.cancel();
      } else {
        setState(() {
          progress = progress + 1;
        });
      }
    });
  }
}

// class Progress


