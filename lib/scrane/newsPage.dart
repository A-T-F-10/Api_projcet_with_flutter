// import 'package:link/link.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test_1/dataAPI/modeData.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsData m = NewsData();

  @override
  Widget build(BuildContext context) {
    var mom = ModalRoute.of(context)!.settings.arguments as NewsData;

    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.green,
            Colors.black,
          ], begin: Alignment.bottomLeft)),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              SizedBox(
                height: 90,
              ),

              Text(
                mom.title,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              Image.network(mom.image),
              SizedBox(
                height: 40,
              ),

              Text(
                mom.description,
                style: TextStyle(color: Colors.white),
              ),

              SizedBox(
                height: 30,
              ),
              // Link(url: mom.url,
              // child: Text('data'),

              // )
            ],
          ),
        ),
      ),
    );
  }
}
