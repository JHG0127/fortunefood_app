import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fortune Food'),
        backgroundColor: Colors.white,
        elevation: 0.2,
        shadowColor: Colors.grey.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.green.shade200),
                    child: Text('MAP', textAlign: TextAlign.center),
                  ),
                ),
                // SizedBox(width: 20),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.replay_rounded, size: 100),
            ),
          ],
        ),
      ),
    );
  }
}
