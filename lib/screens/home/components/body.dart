import 'package:flutter/material.dart';
import 'package:hello_flutter/constants.dart';
import 'package:hello_flutter/screens/home/components/HomeWithSearchBox.dart';
import 'package:hello_flutter/screens/home/components/TitleWithMoreBtn.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecomendPlantCard(
                  image: "assets/images/image_1.png",
                  country: "russia",
                  title: "samantha",
                  price: 445,
                  press: () {
                    print('RecomendPlantCard');
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/image_2.png",
                  country: "russia",
                  title: "samantha",
                  price: 430,
                  press: () {
                    print('RecomendPlantCard');
                  },
                ),
                RecomendPlantCard(
                  image: "assets/images/image_3.png",
                  country: "russia",
                  title: "samantha",
                  price: 420,
                  press: () {
                    print('RecomendPlantCard');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * .4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              press();
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(.5)))
                  ])),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
