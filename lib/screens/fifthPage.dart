import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({super.key});

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          const Text("Fifth page"),
          const SizedBox(
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
                        context.goNamed('/home');
                      },
                      child: Text('Page 1'))),
            ],
          )
        ],
      )),
    );
  }
}
