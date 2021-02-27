import 'package:doorbell/SignUp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          accentColor: Colors.deepOrange,
          primaryColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
        home: SignUp(),/*Scaffold(
          body: Container(
            child: Column(children: [
              // Image(
              //   image: AssetImage('resources/doorbell_pic.jpg'),
              // ),
              Stack(
                children: [
                  Image(
                    image: AssetImage('resources/doorbell_pic.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                    child: Card(
                      elevation: 5,
                      shape: Border(
                        bottom: BorderSide(color: Colors.deepOrange, width: 5),
                      ),
                      color: Colors.black,
                      margin: EdgeInsets.all(20.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20,0,20,0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.contacts_outlined),
                                  border: InputBorder.none,
                                  hintText: 'Mobile Number'),
                            ),
                          ),
                          SizedBox(
                            height: 85,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(162, 562, 100, 100),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.deepOrange)),
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      padding: EdgeInsets.all(8.0),
                      onPressed: () {},
                      child: Text(
                        "go".toUpperCase(),
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  //go buttn
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  SizedBox(width: 5),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                      )),
                ],
              ),
            ]),
          ),
        )*/);
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border(
          bottom: BorderSide(
        color: Colors.deepOrange,
        width: 5.0,
      )),
    );
  }
}
