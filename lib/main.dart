import 'package:flutter/material.dart';
import 'UI/card1.dart';
import 'UI/card2.dart';

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
                Card1(),
                const SizedBox(
                  height: 15,
                ),
                Card2(),
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
