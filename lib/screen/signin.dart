import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {

  //form ko vaklidate or submit karne ke liye use hoti hai
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
              key: _formKey,
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
                            'Login',
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
                    height: 250,
                    color: Colors.yellow,
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
                              if (email == null || email.isEmpty) {
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
                   //this is function
                              validator: (passwod) {
                              if (passwod == null || passwod.isEmpty) {
                                return 'Please enter correct password ';
                              }
                              return null;
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                    textStyle: const TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: validate,
                        child: Text(
                          'Log in',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),

                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( "Don't have an account?",),
                          SizedBox(width: 10,),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sign up',
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
