// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DeviceContainerModel {
  double width;
  String title;
  String subtitle;
  String iconPath;
  bool isOn;
  DeviceContainerModel({
    required this.width,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.isOn,
  });
}

class DeviceContainer extends StatefulWidget {
  final DeviceContainerModel model;
  final ValueChanged<bool> onSwitchedChange;

  const DeviceContainer({
    super.key,
    required this.model,
    required this.onSwitchedChange,
  });

  @override
  State<DeviceContainer> createState() => _DeviceContainerState();
}

class _DeviceContainerState extends State<DeviceContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.model.width,
      width: widget.model.width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xff8285ee), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.model.title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.model.subtitle,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(widget.model.iconPath, height: 30),
              Switch(
                value: widget.model.isOn,
                onChanged: widget.onSwitchedChange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
