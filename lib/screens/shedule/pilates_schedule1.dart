import 'package:fitnessapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class PilatesSchedule1 extends StatefulWidget {
  const PilatesSchedule1({Key? key}) : super(key: key);

  @override
  _PilatesSchedule1State createState() => _PilatesSchedule1State();
}

class _PilatesSchedule1State extends State<PilatesSchedule1> {
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
            Text("Pilates Schedule 1 -  Hundreds",
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
                  'images/pilates.png',
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
            Text("Lie with your back flat on the mat.",
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
                "Draw your belly button to your spine to anchor your back into the ground.",
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
                "Lift your legs and bend your knees, making sure your hips aren’t lifted.",
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
            Text("Lift your arms to a 45-degree angle.",
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
            Text(
                "Pump your arms up and down in very small movements as you take one long breath in through your nose for five counts, then exhale (through your nose or mouth) for another five counts, pulling your belly button into your spine. ",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
            SizedBox(
              height: 20,
            ),
            Text("Step 6",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            Text("Repeat 10 times (hence the name, ‘hundreds’).",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 22,
                )),
          ],
        ));
  }
}
