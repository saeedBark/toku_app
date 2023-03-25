import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

import '../compontes/item.dart';

class familyMemberPage extends StatelessWidget {
  const familyMemberPage({Key? key}) : super(key: key);

  final List<Item> numbrs = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpNumber: 'chichi',
        enNumber: 'father'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpNumber: 'haha',
        enNumber: 'mother'),
    Item(
        sound: 'older_bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpNumber: 'ani',
        enNumber: 'older brother'),
    Item(
        sound: 'older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpNumber: 'ane',
        enNumber: 'older sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpNumber: 'musuko',
        enNumber: 'son'),
    Item(
        sound: 'grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpNumber: 'sofu',
        enNumber: 'grandfather'),
    Item(
        sound: 'younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpNumber: 'otouto',
        enNumber: 'younger brother'),
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
        title: Text('Family Members'),
        backgroundColor: Color(0xff6b4226),
      ),
      body: ListView.builder(
        itemCount: numbrs.length,
        itemBuilder: ((context, index) {
          return ListItem(
            itemType: 'family_members',
            number: numbrs[index],
            color: Colors.green,
          );
        }),
      ),
    );
  }
}
