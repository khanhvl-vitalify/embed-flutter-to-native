// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:my_flutter/Database/database.dart';
import 'package:my_flutter/Resources/strings.dart';
import 'package:flutter/material.dart';

import '../../Global/functions.dart';

class BirdSettings extends StatelessWidget {
  const BirdSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: myText("Characters", Colors.black, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/bird.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: !kIsWeb
                    ? Image.asset(
                        "assets/pics/bird.png",
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        AssetImage(
                          "assets/pics/bird.png",
                        ).assetName,
                        package: 'my_flutter',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/blue.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: !kIsWeb
                    ? Image.asset(
                        "assets/pics/blue.png",
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        AssetImage(
                          "assets/pics/blue.png",
                        ).assetName,
                        package: 'my_flutter',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Str.bird = "assets/pics/green.png";
                write("bird", Str.bird);
              },
              child: SizedBox(
                width: 75,
                height: 75,
                child: !kIsWeb
                    ? Image.asset(
                        "assets/pics/green.png",
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        AssetImage(
                          "assets/pics/green.png",
                        ).assetName,
                        package: 'my_flutter',
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
