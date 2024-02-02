import 'package:flutter/material.dart';

class RowCnt4 extends StatelessWidget {
  const RowCnt4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Shadow color
                      spreadRadius: 2.0, // Spread of the shadow
                      blurRadius: 25.0, // Blurring of the shadow
                      offset: Offset(2.0, 2.0), // Offset of the shadow
                    ),
                  ],
                ),
                padding: const EdgeInsets.only(top: 7),
                child: const Column(
                  mainAxisSize: MainAxisSize.min, // Ensure compact size
                  children: [
                    Text(
                      'STEP 1',
                      style: TextStyle(
                          color: Color(0xFF9CA2AA),
                          fontSize: 12.2,
                          fontWeight: FontWeight.w600), // Adjust font size
                    ),
                    Icon(
                      Icons.person,
                      size: 22.5,
                      color: Color(0xFF9CA2AA),
                    ),
                    Text(
                      'YOU',
                      style: TextStyle(
                          color: Color(0xFF9CA2AA),
                          fontSize: 12.2,
                          fontWeight: FontWeight.w600), // Adjust font size
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Get great rewards!',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7D23E0)),
                ),
                // Text(
                //   'Tips：Share to any groups to \nget rewards faster',
                //   style: TextStyle(
                //       fontSize: 11,
                //       fontWeight: FontWeight.w400,
                //       color: Color(0xFF727272)),
                //   softWrap: true,
                // ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
