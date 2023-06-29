import 'package:flutter/material.dart';

List<String> text = [
  'Sports',
  'Health',
  'Cooking',
  'Cars',
  'Technology',
  'Economy',
  'Bauitfully',
  'Knowledge',
  'Poloticies',
  'Tourism',
];
List<String> ImagePath = [
  'assets/images/sports.jpg',
  'assets/images/health.png',
  'assets/images/cook.jpg',
  'assets/images/cars.jpg',
  'assets/images/tech.jpg',
  'assets/images/econmic.jpg',
  'assets/images/7uoa.jpg',
  'assets/images/knowladge.jpg',
  'assets/images/poloticies.jpg',
  'assets/images/tourism.jpg',
];

Widget newsItems() => ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Image.asset(
            ImagePath[index],
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsetsDirectional.all(5),
              color: Color.fromRGBO(227, 140, 186, 50.0),
              child: Text(
                text[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      separatorBuilder: (context, index) => SizedBox(
        height: 5,
      ),
      itemCount: text.length,
    );
