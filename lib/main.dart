import 'package:flutter/material.dart';
import 'package:ui_progress/create-class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testing App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TesTing(),
    );
  }
}

class TesTing extends StatelessWidget {
  const TesTing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CreateClass()));
            },
            child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  // image: const DecorationImage(
                  //     scale: 1,
                  //     image: AssetImage('assets/img/qr.png')
                  //     ),
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/img/qr.png'))),
                  ),
                )),
          ),
          SizedBox(width: 10),
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ],
      )),
    );
  }
}
