import 'package:firebase_database/firebase_database.dart';
import 'package:fitnessapp/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref("users");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Fitness Management App',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: 'lato',
            fontWeight: FontWeight.bold,
          )
        ),
        elevation: 0,
        automaticallyImplyLeading: false, //ToDo: Removing Back Icon
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'User Login...!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Enter UserName:',
                hintStyle: TextStyle(fontFamily: 'Lato', color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Enter Password:',
                hintStyle: TextStyle(fontFamily: 'Lato', color: Colors.black),
              ),
              maxLength: 20,
              obscureText: true,
            ),
            SizedBox(
              height: 20
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'If You have not registered to the system',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Register',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegistrationScreen();
                              },
                            ),
                          );
                        },
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //ToDo: Login Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: ElevatedButton(
                onPressed: () async {
                  ref.once().then((data){
                    data.snapshot.children.forEach((element) async {
                      var d = [];
                      var val = element.value;
                      d.add(val);
                      print(d[0]['email']);
                      var uname = d[0]['username'];
                      var passw = d[0]['password'];
                      if(passw == passwordController.text && uname == usernameController.text){
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        var uid = element.key;
                        print(uid);
                        prefs.setString('uid', uid.toString());
                        Navigator.pushReplacementNamed(context, 'home');

                      }else {
                        print('Login Fail..!!');
                      }

                    });
                  });

                },
                child: Text('LogIn'),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.teal),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
