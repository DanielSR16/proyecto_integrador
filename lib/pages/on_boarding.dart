import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvp_all/src/styles/colors/colors_view.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pages = 0;
  PageController controller = PageController();
  List<Map<String, String>> data_on_bording = [
    {
      "text": 'Esparcimiento',
      "text1": 'Brindamos todo los servicios para conservar a tus mascotas ',
      "image": "assets/images/B1.png"
    },
    {
      "text": 'Esparcimiento',
      "text1": 'Brindamos todo los servicios para conservar a tus mascotas ',
      "image": "assets/images/B2.png"
    },
    {
      "text": 'Esparcimiento',
      "text1": 'Brindamos todo los servicios para conservar a tus mascotas ',
      "image": "assets/images/B3.png"
    },
    {
      "text": 'Esparcimiento',
      "text1": 'Brindamos todo los servicios para conservar a tus mascotas ',
      "image": "assets/images/B4.png"
    },
    {
      "text": 'Esparcimiento',
      "text1": 'Brindamos todo los servicios para conservar a tus mascotas ',
      "image": "assets/images/B5.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: data_on_bording.length,
                    itemBuilder: (context, index) => ContentBoarding(
                        text: data_on_bording[index]["text"]!,
                        text1: data_on_bording[index]["text1"]!,
                        image: data_on_bording[index]["image"]!),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          data_on_bording.length,
                          (index) => newMethod(index: index),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 130)),
                      SizedBox(
                        width: 290,
                        height: 50,
                        child: _button(indexAll: data_on_bording.length - 1),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // <-- Radius
        ),
        //color border
        side: BorderSide(
          width: 3.0,
          color: pages == indexAll
              ? ColorSelect.btnBackgroundBo2
              : ColorSelect.txtBoSubHe,
        ),
        //color boton
        primary: pages == indexAll
            ? ColorSelect.btnBackgroundBo2
            : ColorSelect.btnBackgroundBo1,
      ),
      //on press
      onPressed: () {
        if (pages == data_on_bording.length - 1) {
          Navigator.pushNamed(context, 'progress');
        } else {
          controller.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeIn);
        }
        // print(pages);
        // print(data_on_bording.length);
      },
      child: Text(
        pages == indexAll ? 'Continuar' : 'Siguiente',
        //color letras
        style: TextStyle(
            color: pages == indexAll
                ? ColorSelect.btnBackgroundBo1
                : ColorSelect.txtBoSubHe,
            fontSize: 19,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color:
            pages == index ? ColorSelect.paginatorNext : ColorSelect.paginator,
        borderRadius: BorderRadius.circular(3),
      ),
      height: 4,
      width: pages == index ? 20 : 12,
      duration: kThemeAnimationDuration,
    );
  }
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);
  final String text, text1, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          width: 290,
          height: 200,
        ),
        Text(
          text,
          style: const TextStyle(
            color: ColorSelect.txtBoHe,
            fontSize: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            text1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ColorSelect.txtBoSubHe,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
