import 'package:fitnessapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BodyStretchingSchedule2 extends StatefulWidget {
  const BodyStretchingSchedule2({Key? key}) : super(key: key);

  @override
  _BodyStretchingSchedule2State createState() =>
      _BodyStretchingSchedule2State();
}

class _BodyStretchingSchedule2State extends State<BodyStretchingSchedule2> {
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
            Text("Body Stretching Schedule 2 - \nLeg swings",
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
                  'images/bodystretching2.jpg',
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
            Text("Stand with your feet shoulder-width apart.",
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
                "Balancing on your left leg, swing your right leg back and forth in front of your body, only going as far as is comfortable.",
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
            Text("Perform 20 reps.",
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
            Text("Repeat on the other side.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
          ],
        ));
  }
}
