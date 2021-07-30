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
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("MÁY TÍNH BỎ TÚI",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
                    child: TextField(
                      onChanged: (text){

                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Number 1",
                        hintText: "Example : 123" ,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5))
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10 , right:  10 , bottom: 10),
                    child: TextField(
                      onChanged: (text){

                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: "Number 1",
                          hintText: "Example : 123" ,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}
