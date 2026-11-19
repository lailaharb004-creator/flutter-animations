import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late AnimationController ctr;
  @override
  void initState() {
    ctr=AnimationController(vsync: this, duration: Duration(seconds: 3),lowerBound: 100, upperBound: 300);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                ctr.forward();
              },
              child: AnimatedBuilder(
                animation: ctr,
                builder: (context,child) {
                  return Container(
                    width:ctr.value,
                    height: 100,
                    color: Colors.red,
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
//explicit animation 
//using withing stateful widget 
// to use it we should use AnimationController in AnimatedBuilder 
//to use them we should add SingleTickerProviderStateMixin or TickerProviderStateMixin
// if i have more than one animation controller we use TickerProviderStateMixin