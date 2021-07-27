import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// threr are mainly two types
// 1)Stateless wigets
// 2)Stateful wigets

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //bool or boolean=false,true
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get currentAccountPicture => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Raju Rai"),
              accountEmail: Text("abcd@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),title: Text("Home"),
            ),

             ListTile(
              leading: Icon(Icons.settings),title: Text("Setting"),
            ),
             ListTile(
              leading: Icon(Icons.contacts),title:Text("Contacts"),
            ),
              ListTile(
              leading: Icon(Icons.exit_to_app),title:Text("Exit"),
            ),
             
           
          ]
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "MY APP",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }
}
