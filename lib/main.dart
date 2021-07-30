import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

// root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex : 1,
                    child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text("MÁY TÍNH BỎ TÚI",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))),
                  ),
                  Expanded(
                    flex : 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        onChanged: (text) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Number 1",
                            hintText: "Example : 123",
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                      ),
                    ),
                  ),
                  Expanded(
                    flex : 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: TextField(
                        onChanged: (text) {},
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Number 2",
                            hintText: "Example : 123",
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)))),
                      ),
                    ),
                  ),
                  Expanded(
                    flex : 3,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: () {}, child: Text("+", style: TextStyle(fontSize: 20))),
                              ElevatedButton(onPressed: () {}, child: Text("-", style: TextStyle(fontSize: 20))),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: () {}, child: Text("*" , style: TextStyle(fontSize: 20))),
                              ElevatedButton(onPressed: () {}, child: Text("/", style: TextStyle(fontSize: 20))),
                            ],
                          )
                        ],
                      ),
                    ),
                  ), 
                  Expanded(
                    flex : 3,
                    child: Container(
                      child: Text("Kết quả = 5" , style: TextStyle(color : Colors.red , fontSize: 35)),
                    ),
                  )
                ],
              ),
            )));
  }
}
