import 'package:fitnessapp/screens/add_workout.dart';
import 'package:fitnessapp/screens/bodystretching_schedules_screen.dart';
import 'package:fitnessapp/screens/fullbody_schedules_screen.dart';
import 'package:fitnessapp/screens/home_screen.dart';
import 'package:fitnessapp/screens/login_screen.dart';
import 'package:fitnessapp/screens/pilate_schedules_screen.dart';
import 'package:fitnessapp/screens/registration_screen.dart';
import 'package:fitnessapp/screens/shedule/bodybuilding_schedule1.dart';
import 'package:fitnessapp/screens/shedule/bodybuilding_schedule2.dart';
import 'package:fitnessapp/screens/shedule/bodystretching_schedule1.dart';
import 'package:fitnessapp/screens/shedule/bodystretching_schedule2.dart';
import 'package:fitnessapp/screens/shedule/pilates_schedule1.dart';
import 'package:fitnessapp/screens/shedule/pilates_schedule2.dart';
import 'package:fitnessapp/screens/shedule/yoga_schedule1.dart';
import 'package:fitnessapp/screens/shedule/yoga_schedule2.dart';
import 'package:fitnessapp/screens/splash_screen.dart';
import 'package:fitnessapp/screens/update_workout.dart';
import 'package:fitnessapp/screens/yoga_schedules_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'login': (context) => LoginScreen(),
        'registration': (context) => RegistrationScreen(),
        'home': (context) => HomeScreen(),
        'add': (context) => AddWorkout(),
        'yoga': (context) => YogaSchedule(),
        'yoga1': (context) => YogaSchedule1(),
        'yoga2': (context) => YogaSchedule2(),
        'pilates': (context) => PilateSchedule(),
        'pilates1': (context) => PilatesSchedule1(),
        'pilates2': (context) => PilatesSchedule2(),
        'bodybuilding': (context) => FullbodySchedule(),
        'bodybuilding': (context) => BodyBuildingSchedule1(),
        'bodybuilding': (context) => BodyBuildingSchedule2(),
        'bodystretching': (context) => BodystretchingScgedule(),
        'bodystretching': (context) => BodyStretchingSchedule1(),
        'bodystretching': (context) => BodyStretchingSchedule2(),



    },
    );
  }
}



