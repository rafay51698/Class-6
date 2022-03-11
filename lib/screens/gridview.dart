import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blueAccent,
                  height: 150,
                  width: 150,
                );
              })
        ],
      ),
    );
  }
}
