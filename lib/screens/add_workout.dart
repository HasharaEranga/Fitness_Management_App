

import 'package:firebase_database/firebase_database.dart';
import 'package:fitnessapp/screens/bodystretching_schedules_screen.dart';
import 'package:fitnessapp/screens/pilate_schedules_screen.dart';
import 'package:fitnessapp/screens/yoga_schedules_screen.dart';
import 'package:flutter/material.dart';

import 'fullbody_schedules_screen.dart';
import 'home_screen.dart';

class AddWorkout extends StatefulWidget {
  const AddWorkout({Key? key}) : super(key: key);

  @override
  _AddWorkoutState createState() => _AddWorkoutState();
}

class _AddWorkoutState extends State<AddWorkout> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedEndDate = DateTime.now();
  TimeOfDay selectedEndTime = TimeOfDay.now();

  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref("task");

  //ToDo: Create Data Access Objects
  //TaskDao? taskDao;
  //TaskManagerDatabase? taskManagerDatabase;

  //ToDo: Creating Text Editing Controllers
  TextEditingController taskNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue,
      // ToDo: Drawer
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/menu.jpg"), fit: BoxFit.cover)),
              child: Text(
                'Welcome Fitness Management App..!!',
                style: TextStyle(
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text(
                'Yoga',
                style: TextStyle(
                    fontFamily: 'lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.deepOrange),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return YogaSchedule();
                    },
                  ),
                );

                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'Pilate',
                style: TextStyle(
                    fontFamily: 'lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.deepOrange),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PilateSchedule();
                    },
                  ),
                );

                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'Full Body',
                style: TextStyle(
                    fontFamily: 'lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.deepOrange),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FullbodySchedule();
                    },
                  ),
                );

                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'Body Stretching',
                style: TextStyle(
                    fontFamily: 'lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.deepOrange),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BodystretchingScgedule();
                    },
                  ),
                );

                // Update the state of the app.
                // ...
              },
            ),

          ],
        ),
      ),
      // ToDo: AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [IconButton(icon: Icon(Icons.home),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HomeScreen();
          },),);

        },),],
        iconTheme: IconThemeData(color: Colors.black87),

      ),
      // ToDo: Body of the UI
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 40, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add New Workout Plan',
                      style: TextStyle(
                        fontFamily: 'roboto',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('You can add New Workout Plans from here..!!',
                      style: TextStyle(
                        fontFamily: 'roboto',
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    offset: Offset(1,2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: taskNameController,
                      decoration: InputDecoration(
                        hintText: 'Enter Plan Name:',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hintText: 'Enter Description:',

                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Date:',
                              style: TextStyle(color: Colors.black,fontFamily: 'roboto',fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: (){
                                _selectDate(context);
                              },
                              child: Text(
                                '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Start Time:',
                              style: TextStyle(color: Colors.black,fontFamily: 'roboto',fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: (){
                                _selectTime(context);
                              },
                              child: Text(
                                '${selectedTime.hour}:${selectedTime.minute}',
                                style: TextStyle(fontFamily: 'roboto',fontWeight: FontWeight.bold),
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End Date:',
                              style: TextStyle(color: Colors.black,fontFamily: 'roboto',fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: (){
                                _selectEndDate(context);
                              },
                              child: Text(
                                '${selectedEndDate.year}/${selectedEndDate.month}/${selectedEndDate.day}',
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'End Time:',
                              style: TextStyle(color: Colors.black,fontFamily: 'roboto',fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: (){
                                _selectEndTime(context);
                              },
                              child: Text(
                                '${selectedEndTime.hour}:${selectedEndTime.minute}',
                                style: TextStyle(fontFamily: 'roboto',fontWeight: FontWeight.bold),
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            ElevatedButton(onPressed: () async{
                              await  ref.push().set({'name':taskNameController.text,
                                'dis':descriptionController.text,
                                'start_date':"${selectedDate.year}-${selectedDate.month}-${selectedDate.day}",
                                'start_time':'${selectedTime.hour}.${selectedTime.minute}',
                                'end_date':"${selectedEndDate.year}-${selectedEndDate.month}-${selectedEndDate.day}",
                                'end_time':'${selectedEndTime.hour}.${selectedEndTime.minute}',
                                'status': true});

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen();
                                  },
                                ),
                              );

                            },child: Text('Add'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),),),
                          ],
                        ),
                        Column(
                          children: [
                            ElevatedButton(onPressed: () async{
                              Navigator.pop(context);

                            },child: Text('Cancel'),style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  //ToDo: Method for Pick the Date from the Calendar
  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    setState(() {
      selectedDate = picked!;
    });
  }

  //ToDo: Method for Pick the Time from the Clock
  Future<void> _selectTime(BuildContext context) async{
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      selectedTime = picked!;
    });
  }

  //ToDo: Method for Pick the Date from the Calendar
  Future<void> _selectEndDate(BuildContext context) async{
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    setState(() {
      selectedEndDate = picked!;
    });
  }

  //ToDo: Method for Pick the Time from the Clock
  Future<void> _selectEndTime(BuildContext context) async{
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      selectedEndTime = picked!;
    });
  }

}
