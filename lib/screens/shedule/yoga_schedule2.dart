import 'package:fitnessapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class YogaSchedule2 extends StatefulWidget {
  const YogaSchedule2({Key? key}) : super(key: key);

  @override
  _YogaSchedule2State createState() => _YogaSchedule2State();
}

class _YogaSchedule2State extends State<YogaSchedule2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.home), color: Colors.black, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomeScreen();
              },),);
            },)

          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Text("Yoga Schedule 1 -  Cat-Cow",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Lato',
                )),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                  'images/yoga2.jpg',
                ),
                height: 200,
                width: 150,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Step 1",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                "Get on your mat on all fours with your hands directly below your shoulders and your knees directly below your hips. ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Step 2",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                "Distribute your weight equally between your hands and spread your fingers wide.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Step 3",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                "Distribute your weight equally between your hands and spread your fingers wide.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Step 4",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                "As you exhale, lower your back down all the way to a scoop shape as you lift your head, and tilt it back.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
          ],
        ));
  }
}
