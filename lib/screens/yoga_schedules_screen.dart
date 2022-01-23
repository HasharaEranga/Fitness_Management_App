import 'package:fitnessapp/screens/home_screen.dart';
import 'package:fitnessapp/screens/shedule/yoga_schedule1.dart';
import 'package:fitnessapp/screens/shedule/yoga_schedule2.dart';
import 'package:flutter/material.dart';

class YogaSchedule extends StatefulWidget {
  const YogaSchedule({Key? key}) : super(key: key);

  @override
  _YogaScheduleState createState() => _YogaScheduleState();
}

class _YogaScheduleState extends State<YogaSchedule> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20), fixedSize: const Size(280, 80));

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
            Text("Yoga Schedules",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'lato',
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 95,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return YogaSchedule1();
                    },
                  ),
                );
              },
              child: const Text('Schedule 1'),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return YogaSchedule2();
                    },
                  ),
                );
              },
              child: const Text('Schedule 2'),
            ),
          ],
        ));
  }
}
