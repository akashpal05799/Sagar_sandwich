import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                            'Reset Password',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Enter a new password',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    //color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'PASSWORD',
                                suffixIcon: Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))
                            ),
                          validator: (passwod) {
                              if (passwod == null || passwod.isEmpty) {
                                return 'Please enter correct password ';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'PASSWORD',
                                suffixIcon: Icon(Icons.remove_red_eye),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),

                          validator: (passwod) {
                              if (passwod == null || passwod.isEmpty) {
                                return 'Please enter correct password ';
                              }
                              return null;
                            },
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
                          'Change',
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
