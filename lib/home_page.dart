import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // controller
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool pumpkiRun = false;
  bool bookMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lotti Animation'),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                if (pumpkiRun) {
                  pumpkiRun = true;
                  _controller.forward();
                } else {
                  _controller.reverse();
                  pumpkiRun = false;
                }
              },
              child: Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_6FP3kYFVYd.json',
                controller: _controller,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  if (bookMarked == false) {
                    bookMarked = true;
                    _controller.forward();
                  } else {
                    _controller.reverse();
                    bookMarked = false;
                  }
                },
                child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_xdfeea13.json',
                  controller: _controller,
                ))
          ],
        ),
      ),
    );
    ;
  }
}
