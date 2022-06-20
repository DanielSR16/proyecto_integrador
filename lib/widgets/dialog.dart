import 'package:flutter/material.dart';

class DialogContainer extends StatelessWidget {
  DialogContainer({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 450,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 130,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                'Descripción',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum in suscipit ante. Etiam ornare nec leo quis aliquet. Suspendisse tincidunt ultrices ipsum quis malesuada. Morbi aliquet nec nulla in pretium. Aenean pharetra luctus est vitae fermentum. In hac habitasse platea dictumst. Donec non lectus pharetra, consequat diam sit amet, ornare eros. Ut a euismod mauris. In euismod diam ut mi fermentum mollis et vel dui. Sed dapibus ante metus, vel finibus neque imperdiet sed. Aenean tincidunt laoreet laoreet. Nulla facilisi. Duis blandit est vitae elementum finibus. Donec eu quam vitae massa ultricies ullamcorper.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
