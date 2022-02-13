import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material'),
        ),
        body: Center(
          child: Container(
              width: 400,
              height: 385,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                color: Colors.grey[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 40),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'Email',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Container(
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Password',
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Container(
                              height: 45,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'Log in',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: RichText(
                          text: const TextSpan(
                              text: "Don't have an account ",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                              children: [
                            TextSpan(
                                text: 'Sign up?',
                                style: TextStyle(
                                  color: Colors.blue,
                                ))
                          ])),
                      margin: EdgeInsets.only(bottom: 4),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
