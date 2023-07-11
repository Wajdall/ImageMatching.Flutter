// ignore_for_file: unnecessary_string_escapes
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            " GAME ",
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        body: imagep(),
      ),
    ),
  );
}

class imagep extends StatefulWidget {
  const imagep({super.key});

  @override
  State<imagep> createState() => _imagepState();
}

class _imagepState extends State<imagep> {
  var leftimage=Random().nextInt(3)+1 ;
  var rightimage=Random().nextInt(3)+1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimage==rightimage?"MATCHING ":" TRY AGAIN  ",
          
          style: TextStyle(fontSize: 42, color: Colors.white),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                child: Image.asset('Image/cat$leftimage.png'),
                onPressed: () {
                  setState(() {
                    rightimage = Random().nextInt(3) + 1;
                    leftimage = Random().nextInt(3) + 1;
                  });
                  print("Left button has been clicked");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                child: Image.asset('Image/cat$rightimage.png'),
                onPressed: () {
                  setState(() {
                    leftimage = Random().nextInt(3) + 1;
                                    rightimage = Random().nextInt(3) + 1;
                  });
  
                  print("Right button has been clicked");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              ),
            ),
          ],
        )
      ],
    );
  }
}


/*       home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text("CAT")),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.pink,
      ), */