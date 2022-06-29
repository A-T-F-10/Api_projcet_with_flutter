import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 240, 240, 243),
        child: Column(children: [
          const Card(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
                title: Text(
                  'Drawer',
                  textAlign: TextAlign.start,
                ),
                leading: Icon(
                  Icons.menu,
                  size: 30,
                ),
                style: ListTileStyle.drawer),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
                onTap: () {},
                title: const Text(
                  'Home Page',
                  textAlign: TextAlign.start,
                ),
                leading: const Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
                style: ListTileStyle.drawer),
          ),
          Divider(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: ListTile(
                onTap: () {},
                title: const Text(
                  'Language',
                  textAlign: TextAlign.start,
                ),
                leading: const Icon(
                  Icons.g_translate_rounded,
                  size: 30,
                ),
                style: ListTileStyle.drawer),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: ListTile(
                onTap: () {},
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Colors Theme',
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                leading: const Icon(
                  Icons.dark_mode_outlined,
                  size: 30,
                ),
                style: ListTileStyle.drawer),
          ),
          Divider(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            child: const ListTile(
                title: Text(
                  'Exit',
                  textAlign: TextAlign.start,
                ),
                leading: Icon(
                  Icons.login_sharp,
                  size: 30,
                ),
                style: ListTileStyle.drawer),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.white)),
                  margin: EdgeInsets.zero,
                  child: ListTile(
                      title: Text(
                        ' About App',
                        textAlign: TextAlign.start,
                      ),
                      leading: Icon(
                        Icons.info,
                        size: 30,
                        color: Colors.red,
                      ),
                      style: ListTileStyle.drawer),
                ),
              ],
            ),
          ),
        ]),
        elevation: 30,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          ),
          borderSide: BorderSide(
            width: 0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
