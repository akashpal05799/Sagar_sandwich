import 'package:flutter/material.dart';


class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
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
              //key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    //color:Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Enter Your Code',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Enter your code we just sent',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 180,
                    //color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100,
                            //color: Colors.red,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  //color: Colors.yellow,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffD2D2D2),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                ),
                                ),
                                SizedBox(width: 30,),
                                Container(
                                  width: 60,
                                  height: 60,
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffD2D2D2),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Container(
                                  width: 60,
                                  height: 60,
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffD2D2D2),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Container(
                                  width: 60,
                                  height: 60,
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffD2D2D2),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ],
                            ),
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
                                    'Resand Code',
                                    style: TextStyle(color: Color(0xffBF0705),fontWeight: FontWeight.bold),
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                            primary: Color(0xffBF0705),
                            minimumSize: const Size.fromHeight(50)),
                        onPressed: (){},
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 18),
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
