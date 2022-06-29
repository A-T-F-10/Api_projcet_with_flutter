// import 'package:link/link.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test_1/dataAPI/modeData.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsData newsData = NewsData();

  @override
  Widget build(BuildContext context) {
    var nD = ModalRoute.of(context)!.settings.arguments as NewsData;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 43, 76, 104),
              Color.fromARGB(255, 49, 25, 33),
            ])),
          ),
          title: Text(nD.title),
        ),
        // backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 16, 54, 17),
              Colors.black,
            ], begin: Alignment.bottomLeft)),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                const SizedBox(
                  height: 90,
                ),
                Text(
                  nD.title,
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.network(nD.image),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  nD.description,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
