import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Fourth page"),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        context.goNamed('/secondPage 2');
                      },
                      child: Text('Page'))),
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
                        context.goNamed('/home');
                      },
                      child: Text('Page 1'))),
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
