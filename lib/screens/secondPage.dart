import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Second page"),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        context.goNamed('/home');
                      },
                      child: Text('Page 1'))),
              SizedBox(
                width: 4,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        context.goNamed('/thirdPage');
                      },
                      child: Text('Page 3'))),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        context.goNamed('/fourthPage');
                      },
                      child: Text('Page 4'))),
              SizedBox(
                width: 4,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        context.goNamed('/fifthPage');
                      },
                      child: Text('Page 5'))),
            ],
          )
        ],
      )),
    );
  }
}
