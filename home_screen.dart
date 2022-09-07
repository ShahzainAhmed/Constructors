import 'package:flutter/material.dart';
import 'package:practiceflutter/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components Creation"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                MyButton(
                  title: "Login ",
                  subtitle: "1",
                ),
                MyButton(
                  title: "Sign-up ",
                  subtitle: "2",
                ),
                MyButton(
                  title: "Verify ",
                  subtitle: "3",
                ),
                MyButton(
                  title: "Continue ",
                  subtitle: "4",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// MyButton is a Constructor we used required this.title and a final String
// no need of subtitle, but just for practice

class MyButton extends StatelessWidget {
  final String title, subtitle;

  const MyButton({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.deepPurple,
        ),
        height: 60,
        child: Center(
          child: Text(
            title + subtitle,
            style: headingTextStyle,
          ),
        ),
      ),
    );
  }
}
