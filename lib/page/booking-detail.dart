import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projec_8/common/color.dart';

@RoutePage()
class BookingDetail extends StatelessWidget {
  const BookingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Stack(children: [
          Positioned(
            left: 25,
            top: 15,
            child: const BackButton(
              color: Colors.black,
            ),
          ),
        ]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 397,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: AssetImage('assets/images/halong.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              "Shulgaт-Tash cave",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: AppColor.titleBar),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 37, bottom: 52),
              child: Text(
                "A truly amazing example of the creation of nature, the Kapova cave with cave paintings of ancient people with...",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
