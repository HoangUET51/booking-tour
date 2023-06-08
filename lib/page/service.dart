import 'package:flutter/material.dart';

class Service {
  String content;
  IconData icon;
  Color backgroundColor;

  Service(
      {required this.content,
      required this.icon,
      required this.backgroundColor});
}

class ServiceUI extends StatelessWidget {
  const ServiceUI({super.key, required this.service});

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 92,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 245, 242, 247),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: service.backgroundColor),
            padding: EdgeInsets.all(7),
            child: Icon(
              service.icon,
              size: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            service.content,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
