import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_smart_ui/components/applience.dart';
import 'package:flutter_smart_ui/components/roomSpecApplience.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHome = true;
  bool isSettings = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/homeimg.jpeg"),
                radius: 18,
              )
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.list_dash,
                color: Colors.grey,
              )),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "My Smart Home",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 3,
                                      offset: Offset(3, 3)),
                                ]),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Appliance(
                              colors: Colors.yellow,
                              icon: Icons.lightbulb,
                              label: "Iight"),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          Appliance(
                              colors: Colors.blue,
                              icon: Icons.play_circle_fill_outlined,
                              label: "Media"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Appliance(
                              colors: Colors.red,
                              icon: Icons.videocam,
                              label: "camera"),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.05),
                          Appliance(
                              colors: Colors.greenAccent.shade700,
                              icon: Icons.wifi,
                              label: "wi-Fi"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Living Room",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 3,
                                      offset: Offset(3, 3)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "2 Devices",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoomApplience(
                            label: "Net Year Wi-Fi",
                            imagepath: "images/wifi-router.png",
                            imgHgt: 0.2,
                            imgwidth: 0.2,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          RoomApplience(
                            label: "Living A/C Room",
                            imagepath: "images/air-conditioner.png",
                            imgHgt: 0.25,
                            imgwidth: 0.3,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, -2),
                          blurRadius: 2)
                    ], color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isHome = true;
                                isSettings = false;
                              });
                            },
                            icon: Icon(
                              Icons.home,
                              color: isHome ? Colors.blueAccent : Colors.grey,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isHome = false;
                                isSettings = true;
                              });
                            },
                            icon: Icon(
                              Icons.settings,
                              color:
                                  isSettings ? Colors.blueAccent : Colors.grey,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: Offset(0, 2),
                                  blurRadius: 2)
                            ]),
                        padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
                        child: Container(
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent.shade700,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: Offset(0, 2),
                                    blurRadius: 2)
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
