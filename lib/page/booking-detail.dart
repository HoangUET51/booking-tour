import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:projec_8/common/color.dart';
import 'package:projec_8/page/service.dart';

@RoutePage()
class BookingDetail extends StatelessWidget {
  const BookingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Service> services = [
      Service(
          content: 'From 90 \$',
          icon: Icons.card_travel_rounded,
          backgroundColor: Color(0xff8DBCE8)),
      Service(
          content: '6 часа',
          icon: Icons.car_crash_rounded,
          backgroundColor: Color(0xffFFC187)),
      Service(
          content: 'Full Board',
          icon: Icons.place_rounded,
          backgroundColor: Color(0xff81D4A3)),
      Service(
          content: 'Insurance',
          icon: Icons.book_rounded,
          backgroundColor: Color(0xffA8BAC5)),
      Service(
          content: '8 часа',
          icon: Icons.deck_rounded,
          backgroundColor: Color(0xffFFC187)),
    ];
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 64,
        margin: const EdgeInsets.all(16),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffFF678B),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              'Buy a tour',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(children: [
            Container(
              height: 397,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: AssetImage('assets/images/halong.jpg'),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              right: 35,
              bottom: 0,
              child: Container(
                width: 32,
                height: 32,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.favorite_rounded,
                  color: AppColor.backgroundIcon,
                ),
              ),
            )
          ]),
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
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                width: 12,
              ),
              itemBuilder: (context, index) =>
                  ServiceUI(service: services[index]),
              itemCount: services.length,
            ),
            width: double.infinity,
            height: 92,
          ),
        ]),
      ),
    );
  }
}
