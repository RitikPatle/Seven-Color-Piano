import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '7 Colors Piano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: XplashScreen(),
    ),
  );
}

class XplashScreen extends StatefulWidget {
  const XplashScreen({Key key}) : super(key: key);

  @override
  _XplashScreenState createState() => _XplashScreenState();
}

class _XplashScreenState extends State<XplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new SevenColorPiano(),
        title: new Text(
          '7 Color Piano',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.white,
        loaderColor: Colors.redAccent);
  }
}

class SevenColorPiano extends StatefulWidget {
  const SevenColorPiano({Key key}) : super(key: key);

  @override
  _SevenColorPianoState createState() => _SevenColorPianoState();
}

class _SevenColorPianoState extends State<SevenColorPiano> {
  static const Height = 91.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.blueAccent,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note1.wav')
                      ..play()
                      ..dispose();
                    print("BLUE");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.amberAccent,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note2.wav')
                      ..play()
                      ..dispose();
                    print("YELLOW");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.teal,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note3.wav')
                      ..play()
                      ..dispose();
                    print("GREEN");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.deepOrangeAccent,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note4.wav')
                      ..play()
                      ..dispose();
                    print("ORANGE");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.deepPurpleAccent,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note5.wav')
                      ..play()
                      ..dispose();
                    print("PURPLE");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.pinkAccent,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note6.wav')
                      ..play()
                      ..dispose();
                    print("PINK");
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: Height,
                color: Colors.blueGrey,
                child: MaterialButton(
                  onPressed: () {
                    Audio.load('assets/note7.wav')
                      ..play()
                      ..dispose();
                    print("GREY");
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
