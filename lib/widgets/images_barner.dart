import 'package:flutter/material.dart';

// class image_barner extends StatelessWidget {
//   const image_barner({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }

//   Widget Container; barner(){

//   };
// }

Widget barner(String URL, double tamanoAncho) {
  return Container(
    child: Image(image: NetworkImage(URL)),
    width: tamanoAncho,
  );
}
