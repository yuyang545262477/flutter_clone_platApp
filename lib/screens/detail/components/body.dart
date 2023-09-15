import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/detail/components/image_and_Icons.dart';

import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FilledButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20)),
                  ))),
                  onPressed: () {},
                  child: const Text(
                    'Buy now',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: const Text("Description"),
              )),
            ],
          )
        ],
      ),
    );
  }
}
