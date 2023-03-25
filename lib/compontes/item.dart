import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.number,
      required this.color,
      required this.itemType})
      : super(key: key);
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: const Color(0xfffff6dc), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpNumber,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enNumber,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () {
                  try {
                    AudioCache player =
                        AudioCache(prefix: 'assets/sounds/$itemType/');
                    player.play(number.sound);
                  } catch (ex) {
                    print(ex);
                  }
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }
}
