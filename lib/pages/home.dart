import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../src/styles/colors/colors_view.dart';
import '../widgets/dialog.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  List<String> gridImages = [
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png',
  ];
  int pages = 0;
  PageController controller = PageController();
  List<Map<String, String>> data_on_bording = [
    {"image": "assets/images/tlacuache.jpg"},
    {"image": "assets/images/tlacuache.jpg"},
    {"image": "assets/images/tlacuache.jpg"},
    {"image": "assets/images/tlacuache.jpg"},
    {"image": "assets/images/tlacuache.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    int _count = 0;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Image.asset(
            'assets/images/splash.png',
            scale: 0.4,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Home',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: ColorSelect.txtBoHe,
        currentIndex: 1,
        onTap: (index) {},
        // backgroundColor: ColorSelect.txtBoHe,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                width: 300,
                height: 200,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      pages = value;
                    });
                  },
                  itemCount: data_on_bording.length,
                  itemBuilder: (context, index) =>
                      ContentBoarding(image: data_on_bording[index]["image"]!),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        data_on_bording.length,
                        (index) => newMethod(index: index),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 400,
                height: 80,
                color: Colors.amber,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      // decoration: Decoration(),
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/bulbasur.png',
                        scale: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                width: double.infinity,
                height: 180,
                color: ColorSelect.txtBoSubHe,
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 4,
                  children:
                      gridImages.map((item) => _createCards(item)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Card _createCards(String image) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: InkWell(
          onTap: () async {
            await showDialog(
                context: context,
                builder: (_) => DialogContainer(image: image));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ));
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
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          width: 290,
          height: 200,
        ),
      ],
    );
  }
}
