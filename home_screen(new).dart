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
                ),
                MyButton(),
                MyButton(
                  title: "Verify ",
                ),
                MyButton(
                  title: "Continue ",
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
// if we are not using 'required', then it means u can either provide th string or just leave it empty when using the constructor in the stateful widget

class MyButton extends StatelessWidget {
  final String title;

  const MyButton({super.key, this.title = 'Default Value'});

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
            title,
            style: headingTextStyle,
          ),
        ),
      ),
    );
  }
}
