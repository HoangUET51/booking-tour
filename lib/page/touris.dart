import 'package:flutter/material.dart';
import 'package:projec_8/common/color.dart';

class Touris {
  String image;
  String title;
  String content;
  String evaluate;
  Touris(
      {required this.image,
      required this.title,
      required this.content,
      required this.evaluate});
}

class TourisUI extends StatelessWidget {
  const TourisUI({super.key, required this.touri});

  final Touris touri;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 212,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              right: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  touri.image,
                  fit: BoxFit.fill,
                ),
              )),
          Positioned(
              top: 16,
              right: 16,
              child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.favorite_rounded,
                    color: AppColor.backgroundIcon,
                  ))),
          Positioned(
              left: 24,
              bottom: 40,
              width: 115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    touri.title,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    width: 53,
                    height: 23,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black38),
                    child: Row(children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xffEACB8E),
                        size: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        touri.evaluate,
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
