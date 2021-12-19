import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  const BasicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('E41200036'),
            Text('Moh Ibnu Abdurrohman Sutio'),
          ],
        ),
      ),
    );

    /*
    AppBar
    Scaffold(
      appBar: AppBar(
        title: const Text('Simple App'),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('ini adalah alarm'),
              ));
            },
            icon: const Icon(Icons.access_alarm),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.accessible_forward_sharp),
            tooltip: 'Show tooltips',
          ),
        ],
        backgroundColor: const Color(0xff2a2a2a),
      ),
    );
    */
  }
}
