import 'package:fitnessapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BodyBuildingSchedule1 extends StatefulWidget {
  const BodyBuildingSchedule1({Key? key}) : super(key: key);

  @override
  _BodyBuildingSchedule1State createState() => _BodyBuildingSchedule1State();
}

class _BodyBuildingSchedule1State extends State<BodyBuildingSchedule1> {
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
            Text("Body Building Schedule 1 -  Barbell Bench Press",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'lato')),
            SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                  'images/bodybuilding.jpg',
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
                "Lie on a flat bench with five points of contact on the bench: your head, upper back, butt, and both feet.",
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
                "Slightly arch your back and pull your shoulder blades down and together.",
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
                "Grasp the bar with an overhand grip slightly wider than shoulder-width.",
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
                "Lower the bar to the bottom of your pecs with a deep inhale, then reverse the motion with an exhale.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Step 5",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text("Avoid locking out your elbows at the top.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
          ],
        ));
  }
}
