import 'package:flutter/material.dart';

class RecommandScreen extends StatefulWidget {
  const RecommandScreen({super.key});

  @override
  State<RecommandScreen> createState() => _RecommandScreenState();
}

class _RecommandScreenState extends State<RecommandScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(child: Scaffold(backgroundColor: Colors.)),
    );
  }
}
