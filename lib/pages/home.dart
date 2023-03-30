import 'package:flutter/material.dart';
import 'package:fluttertest/pages/containers/container1.dart';
import 'package:fluttertest/utils/constants.dart';
import 'package:fluttertest/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              NavBar(),
              SizedBox(
                height: 100,
              ),
              Container1(),
              //Container2(),
              //Container3(),
              //Container4(),
              // Container5()

              // MainContent()
            ],
          ),
        ),
      )),
    );
  }
}
