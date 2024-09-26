import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Home page"),
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
        ),
      )),
    );
  }
}
