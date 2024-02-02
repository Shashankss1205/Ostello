import 'package:flutter/material.dart';
import 'package:test/UI/rowCont.dart';
import 'package:test/UI/rowCont3.dart';
import 'package:test/UI/rowCont4.dart';

import 'UI/rowCont2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ostello',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 50,
            color: Colors.grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(27.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Refer & Earn',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const Row(
                  children: [
                    SizedBox(width: 20.0),
                    CircleAvatar(
                      radius: 30.0, // Adjust radius as needed
                      backgroundImage: NetworkImage(
                          'https://s3-alpha-sig.figma.com/img/09c5/91bb/27b3f59446ea5c1e7e5065de7a358194?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pVTSWFVU5aHkL~AZpCZ-LWJawIbpu3C3ErxO7WvHgXgNigQYFE1iOFouxT9XcvbCOrhEY3RnGjP-jlhO4pfZfvepyv~F1h4bb1JILVT9QsMifjXRDzCwpkj5fv9PrjbNKZyqsSKF8xNqS4SR8yn4VvwQnxyaPD~fjRus8pZOPvMG82y4NYPeygBMLd9hVL6QVcVkDpFYVXDEaChhLv9dbWnYUkA7bIh2Tr7ui47VlxeE2Hz9kx-Z3eUfo-wFg8p-UfVetuwbzXfUzjtcLAb26bFAru5023uz5HCyWzh25ENBB4~YK4BIeLeP1dV812MX-axeEZmPdBJp7GPM9ds0eA__'),
                    ),
                    SizedBox(width: 15.0), // Add spacing between image and text
                    Text(
                        'xxxxxxxxxxxxxxx got xxx(money) just now.', // Replace with the actual text
                        style: TextStyle(
                            color: Color(0xFF7D23E0),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.2)),
                  ],
                ),
                const SizedBox(height: 30.0),
                Center(
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
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 15, left: 30, right: 30, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: const Color(0xFFF3F3F3),
                  ),
                  child: Column(
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
                      Divider(color: Colors.grey[400]),
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
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    'Refer and Earn',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
