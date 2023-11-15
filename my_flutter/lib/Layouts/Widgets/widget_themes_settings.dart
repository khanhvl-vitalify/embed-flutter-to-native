// ignore_for_file: prefer_const_constructors
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:my_flutter/Database/database.dart';
import 'package:my_flutter/Resources/strings.dart';
import 'package:flutter/material.dart';
import '../../Global/functions.dart';

class ThemesSettings extends StatefulWidget {
  const ThemesSettings({Key? key}) : super(key: key);
  @override
  State<ThemesSettings> createState() => _ThemesSettingsState();
}

class _ThemesSettingsState extends State<ThemesSettings> {
  late int themeNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text("Themes",
                    style: TextStyle(fontSize: 20, fontFamily: "Magic4"))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      Str.image = "0";
                      write("background", Str.image);
                      background(Str.image);
                      themeNumber = 1;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: themeNumber == 1
                              ? Colors.orange
                              : Colors.transparent,
                        ),
                      ),
                      child: !kIsWeb
                          ? Image.asset(
                              "assets/pics/0.png",
                              width: 73,
                              height: 70,
                            )
                          : Image.asset(
                              AssetImage("assets/pics/0.png").assetName,
                              package: 'my_flutter',
                              width: 73,
                              height: 70,
                            ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      Str.image = "1";
                      write("background", Str.image);
                      background(Str.image);
                      themeNumber = 2;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: themeNumber == 2
                              ? Colors.orange
                              : Colors.transparent,
                        ),
                      ),
                      child: !kIsWeb
                          ? Image.asset(
                              "assets/pics/1.png",
                              width: 73,
                              height: 70,
                            )
                          : Image.asset(
                              AssetImage("assets/pics/1.png").assetName,
                              package: 'my_flutter',
                              width: 73,
                              height: 70,
                            ))),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      Str.image = "2";
                      write("background", Str.image);
                      background(Str.image);
                      themeNumber = 3;
                    });
                  },
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: themeNumber == 3
                              ? Colors.orange
                              : Colors.transparent,
                        ),
                      ),
                      child: !kIsWeb
                          ? Image.asset(
                              "assets/pics/2.png",
                              width: 73,
                              height: 70,
                            )
                          : Image.asset(
                              AssetImage("assets/pics/2.png").assetName,
                              package: 'my_flutter',
                              width: 73,
                              height: 70,
                            ))),
            ],
          ),
        ],
      ),
    );
  }
}
