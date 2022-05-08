import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
        child: Text("The counter is: $count",
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20.0,
            letterSpacing: 1.0,
          ),
        ),
        ),
          SizedBox(height:10.0),
          RaisedButton.icon(
              onPressed: (){
                setState(() {
                  count--;
                });
              },
            icon: Icon(Icons.edit),
            label: Text('Hit me'),
    )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         setState(() {
           count++;
         });
        },
backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),

      );
  }
}
