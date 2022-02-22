import 'package:flutter/material.dart';
import 'package:flutter_test_1/dataAPI/gitRoqest.dart';
import 'package:flutter_test_1/dataAPI/modeData.dart';
import 'package:flutter_test_1/scrane/newsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NewsData m = NewsData();
  List<NewsData> data = [];
  MyRequest zff = MyRequest();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.pink,
          ])),
        ),
        centerTitle: true,
        title: const Text('NewsApi'),
        actions: const [
          Icon(
            Icons.restart_alt_sharp,
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: MyRequest().format(),
          builder: (context, snapshot) {
            try {
              data = snapshot.data as List<NewsData>;
            } catch (e) {
              print(e);
            }

            print(data);

            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else {
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    m = data[index];

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
          m.title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: Image.network(
          m.image,
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
            m.image,
          ),
          // Container(color: Colors.black,width: double.infinity,height: double.infinity,),
          Text(
            m.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
