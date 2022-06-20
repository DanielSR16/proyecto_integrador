import 'dart:convert';

import 'package:flutter/material.dart';

import '../services/service.dart';
import '../src/styles/colors/colors_view.dart';

class vista_1 extends StatefulWidget {
  const vista_1({Key? key}) : super(key: key);

  @override
  State<vista_1> createState() => _vista_1State();
}

class _vista_1State extends State<vista_1> {
  int pages = 0;
  var datas;
  List data_list_barners = [];
  var datas_productos;
  List data_list_productos = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_barners().then(
      (value) {
        datas = jsonDecode(value);
        for (var i = 0; i < 3; i++) {
          // print(datas['dtoImageCarousels'][i]['url']);
          data_list_barners.add(datas['dtoImageCarousels'][i]['url']);
        }
      },
    );
  }

  PageController controller = PageController();

  // List<Map<String, String>> data_on_bording = [
  //   {
  //     "text": data_list_barners[0],
  //   },
  //   {
  //     "text": 'Esparcimiento',
  //   },
  //   {
  //     "text": 'Esparcimiento',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        backgroundColor: ColorSelect.appBar,
        leading: const Icon(
          Icons.arrow_back,
          color: ColorSelect.paginatorNext,
          size: 35,
        ),
        actions: [
          SizedBox(
            width: 40,
            child: Image.asset(
              'assets/images/bolsa.png',
            ),
          ),
          SizedBox(
            width: 40,
            child: Image.asset(
              'assets/images/campana.png',
            ),
          ),
          SizedBox(
            width: 40,
            child: Image.asset(
              'assets/images/user.png',
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 170,
                  margin: const EdgeInsets.only(top: 5, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Hola',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Juan',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ',',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, right: 20),
                  width: 60,
                  child: Image.asset(
                    'assets/images/splash.png',
                    scale: 0.9,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 20),
                      width: 35,
                      child: Image.asset(
                        'assets/images/ubicacion.png',
                        scale: 0.9,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                            'Entregar ahora',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontFamily: 'RobotoMono'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: Row(children: [
                            const Text(
                              'Calle 10 9',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              width: 20,
                              child: Image.asset(
                                'assets/images/flecha.png',
                              ),
                            ),
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  width: 180,
                  height: 35,
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text(
                          'Entrega a domicilio',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        width: 25,
                        child: Image.asset(
                          'assets/images/flecha.png',
                          scale: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 40,
              thickness: 3,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                'Mis mascotas',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 25),
              child: Row(
                children: [
                  Container(
                    child: Container(
                      width: 5,
                      child: Image.asset(
                        'assets/images/mas.png',
                      ),
                    ),
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      // border: Border.all(
                      //   color: Colors.red,
                      // ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Agregar\nmascotas',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/B5.png',
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Text(
                            'PRODUCTOS',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(left: 20),
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/B1.png',
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: const Text(
                            'SERVICIOS',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 23,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    margin: const EdgeInsets.only(left: 30),
                    width: 170,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          'Agregar productos o servicios... ',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                          )),
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  width: 320,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 200,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    pages = value;
                  });
                },
                itemCount: data_list_barners.length,
                itemBuilder: (context, index) =>
                    ContentBoarding(image: data_list_barners[index]),
              ),
            ),
            FloatingActionButton(onPressed: () {
              get_productos().then((value) {
                datas_productos = jsonDecode(value);
                print(datas_productos["getProducts"]["response"]["docs"][1]
                    ["urlImage"]);
                // for (var i = 0; i < 3; i++) {
                //   data_list_productos.add(datas['dtoImageCarousels'][i]['url']);
                // }
              });
            })
          ],
        ),
      ),
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
    return Container(
      // mainAxisAlignment: MainAxisAlignment.start,
      child: Image.network(
        image,
        width: 100,
      ),
    );
  }
}
