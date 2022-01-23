
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var status = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLoginStatus();
    Future.delayed(Duration(seconds:10),(){

      if(status){
        Navigator.pushNamed(context, 'home');

      }else{
        Navigator.pushNamed(context, 'login');
      }
    });
  }

  checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var uid = prefs.getString('uid');
    if(uid != null){
      status =  true;
    }else{status = false;}
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Image(
              image: AssetImage(
                'images/applogo.jpg',
              ),
              height: 100,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Fitness Management App',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'praise', fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
