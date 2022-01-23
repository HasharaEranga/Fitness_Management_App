
import 'package:fitnessapp/screens/home_screen.dart';
import 'package:fitnessapp/screens/shedule/bodystretching_schedule1.dart';
import 'package:fitnessapp/screens/shedule/bodystretching_schedule2.dart';
import 'package:flutter/material.dart';

class BodystretchingScgedule extends StatefulWidget {
  const BodystretchingScgedule({Key? key}) : super(key: key);

  @override
  _BodystretchingScgeduleState createState() => _BodystretchingScgeduleState();
}

class _BodystretchingScgeduleState extends State<BodystretchingScgedule> {
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
            Text("Body Stretching Schedules",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'lato')),
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
                      return BodyStretchingSchedule1();
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
                      return BodyStretchingSchedule2();
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
