import 'package:flutter/material.dart';
//import 'package:country_pickers/country_pickers.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.accessibility_new_rounded),
                          border: InputBorder.none,
                          hintText: 'Name'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.mail_outline_rounded),
                          border: InputBorder.none,
                          hintText: 'Email'),
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: CountryPickerDropdown(
                            initialValue: 'in',
                            itemBuilder: _buildDropdownItem,
                            onValuePicked: (Country country) {
                              print("${country.name}");
                            },
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone Number",
                            ),
                            onChanged: (value) {
                              // this.phoneNo=value;
                              print(value);
                            },
                          ),
                        ),
                      ],
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("New User?"),
            SizedBox(width: 5),
            InkWell(
                onTap: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                )),
          ],
        ),
      ]),
    ));
  }
}
