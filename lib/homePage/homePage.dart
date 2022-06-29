import 'package:flutter/material.dart';
import 'package:flutter_test_1/dataAPI/gitRoqest.dart';
import 'package:flutter_test_1/dataAPI/modeData.dart';
import 'package:flutter_test_1/scrane/newsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NewsData newsData = NewsData();
  List<NewsData> data = [];
  MyRequest myRequest = MyRequest();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 30, 61, 88),
            Color.fromARGB(255, 112, 57, 76),
          ])),
        ),
        centerTitle: true,
        title: const Text('News Api'),
      ),
      backgroundColor: Color.fromARGB(255, 39, 39, 39),
      body: FutureBuilder(
          future: MyRequest().format(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              data = snapshot.data as List<NewsData>;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    newsData = data[index];

                    return bulidPadding(index);
                  });
            }
          }),
    );
  }

  bulidNewsPage(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const NewsPage(),
            settings: RouteSettings(
              arguments: data[index],
            )));
  }

  Widget bulidPadding(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: ListTile(
        onTap: () => bulidNewsPage(index),
        title: Text(
          newsData.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: Image.network(
          newsData.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget bulidNow() {
    return Card(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            newsData.image,
          ),
          // Container(color: Colors.black,width: double.infinity,height: double.infinity,),
          Text(
            newsData.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
