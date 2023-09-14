import 'package:flutter/material.dart';
import 'package:hello_flutter/constants.dart';
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
          ImageAndIcons(),
          TitleAndPrice(
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
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ))),
                  onPressed: () {},
                  child: Text('Buy now'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
