import 'package:flutter/material.dart';
import 'src/my_app.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void validate(){
    if(_formKey.currentState!.validate()){
      print('okk');
    }else{
      print('Error');
    }
  }

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
              key:_formKey ,
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
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Enter your email and password',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    //color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'EMAIL ADDRESS',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (email) {
                              if (email!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(email)) {
                                return 'Please enter email';
                              }
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
                                    borderRadius: BorderRadius.circular(10))),
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
                                prefixIcon: Icon(Icons.phone),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'MOBILE NUMBER',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (number) {
                              if (number!.isEmpty || !RegExp (r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(number) ) {
                                return 'Please enter correct number ';
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
                                prefixIcon: Icon(Icons.person),
                                //fillColor: Color(0xffE6E6E6),
                                filled: true,
                                hintText: 'FULL NAME',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            validator: (name) {
                              if (name!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(name) ) {
                                return 'Please enter name';
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            primary: Color(0xffBF0705),
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: validate,
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "Already have an account?",),
                          SizedBox(width: 10,),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Log in',
                                style: TextStyle(color: Colors.red, fontSize: 20),
                              ))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

