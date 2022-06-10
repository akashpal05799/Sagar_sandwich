import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  // color:Colors.red,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Form(
              //key:_formKey ,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 75,
                    //color:Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Enter your password',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    //color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'MOBILE NUMBER',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                           /* validator: (number) {
                              if (number!.isEmpty ||
                                  !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                      .hasMatch(number!)) {
                                return 'Please enter correct number ';
                              }
                              return null;
                            },*/
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            primary: Color(0xffBF0705),
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: () {},
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
