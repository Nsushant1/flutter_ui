import 'package:dribble_ui/widgets/device_container.dart';
import 'package:dribble_ui/widgets/room_container.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<DeviceContainerModel> deviceModel = [
    DeviceContainerModel(
      width: 150,
      title: "Lamp",
      subtitle: "Kitchen",
      iconPath: "assets/lightbulb.png",
      isOn: false,
    ),
    DeviceContainerModel(
      width: 150,
      title: "AC",
      subtitle: "Bedroom",
      iconPath: "assets/air-conditioner.png",
      isOn: true,
    ),
    DeviceContainerModel(
      width: 150,
      title: "TV",
      subtitle: "Living room",
      iconPath: "assets/tv.png",
      isOn: false,
    ),
    DeviceContainerModel(
      width: 150,
      title: "Vaccum",
      subtitle: "Bedroom",
      iconPath: "assets/vacuum.png",
      isOn: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My home",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.search, color: Colors.black, size: 40),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Devices",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.add_box_outlined,
                          color: Color(0xff8285ee),
                          size: 30,
                        ),
                      ],
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff8285ee),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DeviceContainer(
                      model: deviceModel[0],
                      onSwitchedChange: (value) {},
                    ),
                    DeviceContainer(
                      model: deviceModel[1],
                      onSwitchedChange: (value) {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DeviceContainer(
                      model: deviceModel[2],
                      onSwitchedChange: (value) {},
                    ),
                    DeviceContainer(
                      model: deviceModel[3],
                      onSwitchedChange: (value) {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Rooms",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.add_box_outlined,
                          color: Color(0xff8285ee),
                          size: 30,
                        ),
                      ],
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff8285ee),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoomContainer(
                      title: "Bedroom",
                      subtitle: "4 Devices",
                      iconPath: "assets/bedroom.png",
                      width: 150,
                    ),
                    RoomContainer(
                      title: "Kitchen",
                      subtitle: "2 Devices",
                      iconPath: "assets/kitchen-set.png",
                      width: 150,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoomContainer(
                      title: "Kids Room",
                      subtitle: "3 Devices",
                      iconPath: "assets/kids.png",
                      width: 150,
                    ),
                    RoomContainer(
                      title: "Bathroom",
                      subtitle: "2 Devices",
                      iconPath: "assets/bathtub.png",
                      width: 150,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
