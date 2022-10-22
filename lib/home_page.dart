import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lotti Animation'),
      ),
      body: Center(
        child: Column(
          children: [
            Lottie.network('https://assets3.lottiefiles.com/packages/lf20_6FP3kYFVYd.json'),
            const SizedBox(height: 20),
            Lottie.network('https://assets8.lottiefiles.com/packages/lf20_xdfeea13.json')
          ],
        ),
      ),
    );;
  }
}
