import 'package:flutter/material.dart';
import 'package:toku/screen/family_member.dart';

import '../compontes/category_list.dart';
import 'number_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: Color(0xff6b4226),
        title: Text('Toku'),
      ),
      body: Column(children: [
        Category(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NumberPage();
            }));
          },
          text: 'Number',
          color: Colors.yellow,
        ),
        Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familyMemberPage();
              }));
            },
            text: 'Family_Member',
            color: Color(0xff458b00)),
        Category(
          text: 'Colors',
          color: Colors.red,
        ),
        Category(
          text: 'Phrases',
          color: Colors.blue,
        ),
      ]),
    );
  }
}



// class Category extends StatelessWidget {
//   Category({this.text, this.color , this.onTap});
//   String? text;
//   Color? color;
//   VoidCallback? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.only(left: 24),
//         alignment: Alignment.centerLeft,
//         height: 65,
//         width: double.infinity,
//         color: color,
//         child: Text(
//           text!,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//         ),
//       ),
//     );
//   }
// }
