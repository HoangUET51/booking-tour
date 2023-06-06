import 'package:flutter/material.dart';
import 'package:projec_8/common/color.dart';
import 'package:projec_8/page/category.dart';
import 'package:projec_8/page/touris.dart';

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categorys = [
      Category(
          content: "Top 30 places",
          icon: Icons.star_rounded,
          backgroundColor: Color(0xffEACB8E)),
      Category(
          content: "Contact",
          icon: Icons.tty_rounded,
          backgroundColor: Color(0xff8DE8C7)),
      Category(
          content: "Nature",
          icon: Icons.access_time_rounded,
          backgroundColor: Color(0xffEB5757)),
      Category(
          content: "Notify",
          icon: Icons.add_alert_outlined,
          backgroundColor: Color(0xffEACB8E)),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 24,
        title: Text(
          "Bashkortostan",
          style: TextStyle(
              color: AppColor.titleBar,
              fontSize: 34,
              fontWeight: FontWeight.w500),
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.apps_outlined,
            color: AppColor.backgroundIcon,
          ),
          SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, top: 8, right: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Choose another",
            style: TextStyle(
                fontSize: 12,
                color: AppColor.titleBar.withOpacity(0.5),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: TextField(
                style: TextStyle(
                    fontSize: 15, color: Colors.grey.withOpacity(0.5)),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(width: 0, style: BorderStyle.none)),
                    hintText: 'Enter name or category',
                    hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5), fontSize: 17),
                    contentPadding: EdgeInsets.only(
                        top: 16, bottom: 16, left: 16, right: 25))),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            "Category",
            style: TextStyle(
                color: AppColor.titleBar,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemBuilder: (context, index) =>
                  CategoryUI(category: categorys[index]),
              itemCount: categorys.length,
            ),
            width: double.infinity,
            height: 50,
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            "Popular",
            style: TextStyle(
                color: AppColor.titleBar,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => TourisUI(),
                separatorBuilder: (context, index) => SizedBox(
                      width: 12,
                    ),
                itemCount: 5),
            width: double.infinity,
            height: 280,
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.apps_outlined,
              color: AppColor.titleBar,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: AppColor.titleBar,
            ),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: AppColor.titleBar,
            ),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: AppColor.titleBar,
            ),
            label: 'Settings',
          ),
        ],
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false, //unselected item),
      ),
    );
  }
}
