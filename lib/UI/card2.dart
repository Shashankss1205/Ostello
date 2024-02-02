import 'package:flutter/material.dart';
import 'rowCont.dart';
import 'rowCont2.dart';
import 'rowCont3.dart';
import 'rowCont4.dart';
class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 15, left: 30, right: 30, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.0),
        color: const Color(0xFFF3F3F3),
      ),
      child: const Column(
        crossAxisAlignment:
        CrossAxisAlignment.center, // Align content to the left
        children: [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Spread items
            children: [
              Text('How to EARN',
                  style: TextStyle(
                      color: Color(0x907D23E0),
                      fontWeight: FontWeight.w600,
                      fontSize: 16)),
              Icon(Icons.keyboard_arrow_up_rounded,
                  color: Colors.purple, size: 40), // Dropdown arrow
            ],
          ),
          RowCnt(),
          RowCnt2(),
          RowCnt3(),
          RowCnt4(),
          SizedBox(
            height: 20,
          ),
          Text(
            'RULES',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
          SizedBox(height: 5.0),
          Divider(color: Colors.grey),
          SizedBox(height: 5.0),
          Text(
            '1. Each round of activity is 7 days. When the \n'
                'activity expires, if the user\'s amount has\n'
                'reached the withdrawal threshold and has not\n'
                'been withdrawn, the reward amount will be\n'
                'automatically withdrawn;\n'
                '\n '
                '2. After the event expires, the reward amount\n'
                'will be reissued, and the relationship between\n'
                'the inviter and the invitee will be cleared;\n'
                '\n'
                '3. If the invitee participates in other registration\n'
                'activities at the same time after registration, the\n'
                'status in the activity will be marked as [Invalid], \n'
                'and the inviter will not be able to get rewards.\n',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

