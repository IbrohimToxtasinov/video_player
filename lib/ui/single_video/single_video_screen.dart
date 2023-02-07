import 'package:flutter/material.dart';

class SingleVideoScreen extends StatefulWidget {
  const SingleVideoScreen({Key? key}) : super(key: key);

  @override
  State<SingleVideoScreen> createState() => _SingleVideoScreenState();
}

class _SingleVideoScreenState extends State<SingleVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Video Screen"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
