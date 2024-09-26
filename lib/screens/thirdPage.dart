import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Third page"),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        context.goNamed('/secondPage');
                      },
                      child: Text('Page 2'))),
              SizedBox(
                width: 4,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        context.goNamed('/home');
                      },
                      child: Text('Page 1'))),
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
