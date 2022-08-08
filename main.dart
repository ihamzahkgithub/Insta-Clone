import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    if (currentPage == 0) {}
                  });
                },
                icon: const Icon(Icons.home, color: Colors.pinkAccent)),
            const Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: const Icon(
                  Icons.search,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ondemand_video,
                )),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                )),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
