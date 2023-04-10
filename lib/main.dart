import 'package:flutter/material.dart';
import 'package:instagram_clone/data/data.dart';
import 'package:instagram_clone/widgets/post_item.dart';
import 'package:instagram_clone/widgets/story.dart';
import 'package:username_gen/username_gen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InstagramHome(),
    );
  }
}

class InstagramHome extends StatefulWidget {
  const InstagramHome({super.key});

  @override
  State<InstagramHome> createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {

  int _index = 0;

  void onTapIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  final listPages = [
    InstagramHome1(),
    SecondPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Icon(Icons.favorite_border, color: Colors.black,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8, top: 8),
            child: Icon(Icons.comment, color: Colors.black,),
          ),  
          SizedBox(
            width: 5,
          )
        ],
        title: 
          const Text("Instagram",
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
        body: listPages.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            label: "Mensajes"
          ),
        ],
        currentIndex: _index,
        onTap: onTapIndex),
    );
  }
}

class InstagramHome1 extends StatelessWidget {
  const InstagramHome1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: stories.map((story) => Story(img: story.img, name: story.name)).toList()
          ),
        ),
        Column(
          children: stories.map((item) => PostItem(url: item.img, userName: item.name, urlImagePost: item.postImage)).toList()
        )

      ],
    );
  }
}


class CircleColor extends StatelessWidget {
  const CircleColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffee0000),
            Color(0xffeeee00)
          ]
        )
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Segunda pantalla"));
  }
}