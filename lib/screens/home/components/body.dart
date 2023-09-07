import 'package:flutter/material.dart';
import 'package:hello_flutter/constants.dart';
import 'package:hello_flutter/screens/home/components/HomeWithSearchBox.dart';
import 'package:hello_flutter/screens/home/components/TitleWithMoreBtn.dart';
import 'package:hello_flutter/screens/home/components/feature_plants.dart';
import 'package:hello_flutter/screens/home/components/recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "hello",
            press: () {
              print('TitleWithMoreButton');
            },
          ),
          const RecommendsPlants(),
          TitleWithMoreButton(title: 'Feature Plants', press: () {}),
          const FeaturePlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
