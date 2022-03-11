import 'package:flutter/material.dart';
import 'package:shop_app/screens/gridview.dart';

import 'screens/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: MyGrid()
      ),
    );
  }
}

class HorView extends StatefulWidget {
  const HorView({Key? key}) : super(key: key);

  @override
  _HorViewState createState() => _HorViewState();
}

class _HorViewState extends State<HorView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return horizontal(items[index].name);
          
          }),
    );
  }

  Widget horizontal(name) {
    return Container(

      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.8), blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(10)),

      width: MediaQuery.of(context).size.width * 0.4,
      child: Center(
        child: Text(
          name,
          style:
               TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
