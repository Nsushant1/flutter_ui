import 'package:flutter/material.dart';

class RoomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final double width;
  const RoomContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width / 1.5,
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xfff1f1f1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset(iconPath, height: 25),
            ],
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
