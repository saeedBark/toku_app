import 'package:flutter/material.dart';
import 'package:toku/compontes/item.dart';
import 'package:toku/models/number.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({Key? key}) : super(key: key);
  final List<Item> numbrs = const [
    Item(
        sound: 'number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        jpNumber: 'ichi',
        enNumber: 'one'),
    Item(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpNumber: 'ni',
        enNumber: 'two'),
    Item(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpNumber: 'san',
        enNumber: 'three'),
    Item(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpNumber: 'shi, yon',
        enNumber: 'four'),
    Item(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpNumber: 'go',
        enNumber: 'five'),
    Item(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpNumber: 'roku',
        enNumber: 'six'),
    Item(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpNumber: 'shichi',
        enNumber: 'seven'),
    Item(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpNumber: 'hachi',
        enNumber: 'eight'),
    Item(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpNumber: 'ku',
        enNumber: 'nine'),
    Item(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpNumber: 'juu',
        enNumber: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number'),
        backgroundColor: Color(0xff6b4226),
      ),
      body: ListView.builder(
        itemCount: numbrs.length,
        itemBuilder: ((context, index) {
          return ListItem(
            itemType: 'numbers',
            number: numbrs[index],
            color: Colors.yellow,
          );
        }),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbrs) {
  //   List<Widget> itemList = [];
  //   for (var i = 0; i < numbrs.length; i++) {
  //     itemList.add(Item(number: numbrs[i]));
  //   }
  //   return itemList;
  //}
}
