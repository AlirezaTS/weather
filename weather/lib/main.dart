import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage("images/pic.jpg")),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    "moutain view",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "clear sky",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "14" + "\u00B0",
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "max",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "16" + "\u00B0",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.white,
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          "min",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "12" + "\u00B0",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 1,
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext contxt, int pos) {
                          return Container(
                            height: 50,
                            width: 70,
                            child: const Card(
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Text(
                                    "fri, 8pm",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.cloud,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "14" + "\u00B0",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                  child: Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text("wind speed",style: TextStyle(color: Colors.white, fontSize: 10),),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("4.7m/s",style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ],
                    ),
                   Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.white,
                      ), 
                      
                   ),const Column(
                      children: [
                        Text("sunrise",style: TextStyle(color: Colors.white, fontSize: 10),),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("6:19 AM",style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ],
                    ),
                   Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.white,
                      ), 
                      
                   ),const Column(
                      children: [
                        Text("sunset",style: TextStyle(color: Colors.white, fontSize: 10),),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("9:30 AM",style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ],
                    ),
                   Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 1,
                        height: 40,
                        color: Colors.white,
                      ), 
                      
                   ),const Column(
                      children: [
                        Text("humidity",style: TextStyle(color: Colors.white, fontSize: 10),),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text("72%",style: TextStyle(color: Colors.white, fontSize: 10),),
                        ),
                      ],
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
