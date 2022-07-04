import 'package:flutter/material.dart';
import 'package:task1/Library/myAppBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return MaterialApp(
      builder: (context, child) {
        return Directionality(textDirection: TextDirection.ltr, child: child!);
      },
      theme: ThemeData(
        primaryColor: Colors.grey[800],
      ),
      home: const myHome(),
    );
  }
}

class myHome extends StatelessWidget {
  const myHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            myAppBar(),
            ListTile(
              title: const Text("Text"),
              leading: const Icon(Icons.person),
              subtitle: const Text("................"),
              onTap: null,
              trailing: Column(
                children: const [
                  Text("6 min ago"),
                  Icon(Icons.pause),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              extendedSizeConstraints:
                  BoxConstraints.tightFor(height: 45, width: 220),
              backgroundColor: Colors.black,
            ),
          ),
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text("Start a Conversation"),
            icon: const Icon(Icons.messenger),
          ),
        ));
  }
}
