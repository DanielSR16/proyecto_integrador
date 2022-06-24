import 'package:flutter/material.dart';
import '../services/service_images.dart';
import '../splash/styles/colors/colors_views.dart';

class ServiceSecaWidget extends StatefulWidget {
  const ServiceSecaWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ServiceSecaWidget> createState() => _OptionCarrousel();
}

class _OptionCarrousel extends State<ServiceSecaWidget> {
  int count = 0;
  int actual = 0;
  bool _hasBeenPressed = false;
  List<dynamic> listOptions = [];

  final PageController controller = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();

    getImages();
    controller.addListener(() {
      if (controller.page!.round() != actual) {
        setState(() {
          actual = controller.page!.round();
        });
      }
    });
  }

  void getImages() async {
    var options = await GetTitles();
    setState(() {
      listOptions = options;
      count = options.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.08,
      width: widget.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.amber,
            height: widget.size.height * 0.08,
            width: widget.size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: options(count),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> options(var optionsLenght) {
    List<Widget> options = [];
    options.add(
      const Padding(
        padding: EdgeInsets.only(left: 18.0, bottom: 0),
        child: Text(
          'Servicios cerca',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
    options.add(
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: _hasBeenPressed ? Colors.white : ColorsSelect.buttonColor,
          ),
          child: Text(
            'Paseadores',
            style: TextStyle(
                color: _hasBeenPressed
                    ? ColorsSelect.text_subtitle
                    : Colors.white),
          ),
          onPressed: () {
            setState(
              () {
                _hasBeenPressed = !_hasBeenPressed;
              },
            );
          },
        ),
      ),
    );
    for (int i = 1; i < optionsLenght; i++) {
      options.add(
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            listOptions[i],
            style: const TextStyle(color: ColorsSelect.text_subtitle),
          ),
        ),
      );
    }
    return options;
  }
}
