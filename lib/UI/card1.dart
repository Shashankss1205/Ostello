import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // Shadow color
              spreadRadius: 2.0, // Spread of the shadow
              blurRadius: 25.0, // Blurring of the shadow
              offset: Offset(2.0, 2.0), // Offset of the shadow
            ),
          ],
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Coins',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 14),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF38D79F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'WITHDRAW',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            // Stack(
            //   children: [
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(10.0),
            //       child: LinearProgressIndicator(
            //         value: 0.2,
            //         backgroundColor: Colors.grey[200],
            //         valueColor: const AlwaysStoppedAnimation<Color>(
            //             Colors.purple),
            //         minHeight: 10.0,
            //       ),
            //     ),
            //     // Add circle indicators here
            //   ],
            // ),
            Image.asset(
              'images/progress.png', // Path to your asset
              // width: , // Optional: Set width
              // height: 80, // Optional: Set height
              fit: BoxFit
                  .cover, // Optional: Adjust how image fills space
            ),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                text: 'Invite 3 new users to get ',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'N500',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5.0),
            Divider(color: Colors.grey[400]),
            SizedBox(height: 5.0),
            RichText(
              text: TextSpan(
                text: 'Cash will expire in ',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '6Day 13h 59min 34s',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(276, 50),
                backgroundColor: Color(0xFF7D23E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2000.0),
                ),
              ),
              child: Text(
                'Invite',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
