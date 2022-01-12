import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(children: [
        Row(
          children: [
            Column(children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: size.width * 0.3,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.orange,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.blueAccent.shade400,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.pink,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: size.width * 0.1,
                              color: Colors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width * 0.3,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width * 0.3,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: size.width * 0.3,
                  color: Colors.white,
                ),
              )
            ]),
            Expanded(
              child: Container(
                width: size.width,
                color: Colors.pink,
              ),
            )
          ],
        ),
        Positioned(
          left: size.width * 0.2,
          top: size.height * 0.5,
          child: Container(
            width: size.width * 0.3,
            height: size.height * 0.15,
            color: Colors.black38,
          ),
        ),
        Positioned(
          right: size.width * 0.25,
          child: Container(
            width: size.width * 0.03,
            height: size.height,
            color: Colors.white,
          ),
        ),
        Positioned(
            right: 15,
            bottom: 15,
            child: SizedBox(
              width: size.width * 0.1,
              height: size.height * 0.1,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.play_arrow,
                ),
              ),
            )),
      ]),
    );
  }
}
