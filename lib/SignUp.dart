import 'package:flutter/material.dart';
//import 'package:country_pickers/country_pickers.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dropdownValue = '+91';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "REGISTER",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.accessibility_new_rounded),
                            border: InputBorder.none,
                            hintText: 'Name'),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.mail_outline_rounded),
                            border: InputBorder.none,
                            hintText: 'Email'),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          // DropdownButton<String>(
                          //   value: dropdownValue,
                          //   icon: Icon(Icons.arrow_drop_down),
                          //   iconSize: 24,
                          //   elevation: 16,
                          //   style: TextStyle(color: Colors.white),
                          //   // underline: Container(
                          //   //   height: 2,
                          //   //   color: Colors.deepPurpleAccent,
                          //   // ),
                          //   onChanged: (String newValue) {
                          //     setState(() {
                          //       dropdownValue = newValue;
                          //     });
                          //   },
                          //   items: <String>['+91', '+92', '+93', '+96']
                          //       .map<DropdownMenuItem<String>>((String value) {
                          //     return DropdownMenuItem<String>(
                          //       value: value,
                          //       child: Text(value),
                          //     );
                          //   }).toList(),
                          // ),
                          TextField(
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.mail_outline_rounded),
                                border: InputBorder.none,
                                hintText: 'Mobile Number'),
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.mail_outline_rounded),
                          border: InputBorder.none,
                          hintText: 'Mobile Number'),
                    ),
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
      ]),
    ));
  }
}
