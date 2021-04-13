import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import '../../../constants.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            size: size,
            title: 'Samantha',
            imageUrl: 'assets/images/image_1.png',
            country: 'Russia',
            price: '440',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            size: size,
            title: 'Angelica',
            imageUrl: 'assets/images/image_2.png',
            country: 'Russia',
            price: '440',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendPlantCard(
            size: size,
            title: 'Samantha',
            imageUrl: 'assets/images/image_3.png',
            country: 'Russia',
            price: '440',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    @required this.size,
    @required this.press,
    @required this.imageUrl,
    @required this.title,
    @required this.country,
    @required this.price,
  }) : super(key: key);

  final Size size;
  final Function press;
  final String imageUrl;
  final String title;
  final String country;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          left: kDefaultPadding,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(imageUrl),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: '$country'.toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor.withOpacity(0.5)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
