import 'package:fitnessapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BodyStretchingSchedule1 extends StatefulWidget {
  const BodyStretchingSchedule1({Key? key}) : super(key: key);

  @override
  _BodyStretchingSchedule1State createState() =>
      _BodyStretchingSchedule1State();
}

class _BodyStretchingSchedule1State extends State<BodyStretchingSchedule1> {
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
            Text("Body Stretching Schedule 1 -  Calf stretch",
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
                  'images/bodystretching.jpg',
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
                "Stand with your hands against the back of a chair or on a wall.",
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
                "Stagger your feet, one in front of the other. Keep your back leg straight, your front knee slightly bent, and both feet flat on the ground.",
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
                "Keeping your back knee straight and back your foot flat on the ground, bend your front knee to lean toward the chair or wall. Do this until you feel a gentle stretch in the calf of your back leg.",
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
            Text("Hold the stretch for about 30 seconds.",
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
            Text("Repeat on the other side.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
          ],
        ));
  }
}
