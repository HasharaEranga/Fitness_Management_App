import 'package:fitnessapp/screens/add_workout.dart';
import 'package:fitnessapp/screens/bodystretching_schedules_screen.dart';
import 'package:fitnessapp/screens/fullbody_schedules_screen.dart';
import 'package:fitnessapp/screens/pilate_schedules_screen.dart';
import 'package:fitnessapp/screens/update_workout.dart';
import 'package:fitnessapp/screens/yoga_schedules_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/flutter_swipe_action_cell.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //ToDo: Connecting the Firebase Database
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref("task");


  //ToDo: Creating Text Editing Controllers
  TextEditingController searchController = TextEditingController();

  String searchText = '';

  //ToDo: Creating Task List
  List taskList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData().then((v){

      setState(() {
        taskList.addAll(v);
      });
    });


    searchController.addListener(() {
      setState(() {
        searchText = searchController.text;
      });
    });
  }


  getData() async {
    var data_ = [];
    await ref.once().then((snapshot) {
      var val = snapshot.snapshot.children;
      val.forEach((element) {



        var snp = [];
        snp.add({'key':element.key,'value': element.value});
        data_.add(snp);

      });
    });
    return data_;
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Future<void> didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AddWorkout();
                  },
                ),
              );
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      // ToDo: Body of the UI
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Workout Plans',
                    style: TextStyle(
                      fontFamily: 'roboto',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  //ToDo: Workout List Length
                  Text(
                    '${taskList.length} Workout Plans',
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
        Expanded(
          flex: 3,
          child: Container(
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
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: taskList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _item(index);
                    },
                    padding: EdgeInsets.all(30),

                  ),
                ),

              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget _item(int index) {
    return searchText.isEmpty
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: SwipeActionCell(
        key: ObjectKey(taskList[index]),
        trailingActions: <SwipeAction>[
          SwipeAction(
              title: "Delete",
              onTap: (CompletionHandler handler) async {
                showCupertinoDialog(
                    context: context,
                    builder: (c) {
                      return CupertinoAlertDialog(
                        title: Text('Are You sure to Delete?'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('Delete'),
                            isDestructiveAction: true,
                            onPressed: () async {


                              print(taskList[index][0]['key']);
                              await ref.child("${taskList[index][0]['key']}").remove();

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return HomeScreen();
                                  },
                                ),
                              );


                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              color: Colors.green),
          SwipeAction(
              widthSpace: 80,
              title: "Update",
              onTap: (CompletionHandler handler) async {
                ///false means that you just do nothing,it will close
                /// action buttons by default
                handler(false);
                 var result = await Navigator.push(
                   context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UpdateWorkout(task: taskList[index][0]);
                    },
                  ),
                );

                if (result) {
                  //loadAllTasks();
                }
              },
              color: Colors.deepPurple),
        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  taskList[index][0]['value']['name'],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    value: taskList[index][0]['value']['status'],
                    onChanged: (status) async {
                      bool newstatus = status!;
                      ref.child("/${taskList[index][0]['key']}").update({'status':newstatus});
                      setState(() {
                        taskList[index][0]['value']['status'] = newstatus;
                      print(taskList[index][0]['value']['status']);

                      });

                    }),
              ],
            ),
          ),
        ),
      ),
    )
        : taskList[index][0]['value']['name']
        .toLowerCase()
        .contains(searchText.toLowerCase())
        ? Padding(
      padding: const EdgeInsets.all(8.0),
      child: SwipeActionCell(
        key: ObjectKey(taskList[index]),
        trailingActions: <SwipeAction>[
          SwipeAction(
              title: "Delete",
              onTap: (CompletionHandler handler) async {
                showCupertinoDialog(
                    context: context,
                    builder: (c) {
                      return CupertinoAlertDialog(
                        title: Text('Are You sure to Delete?'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('Delete'),
                            isDestructiveAction: true,
                            onPressed: () async {

                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('Cancel'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
              color: Colors.green),
          SwipeAction(
              widthSpace: 80,
              title: "Update",
              onTap: (CompletionHandler handler) async {
                ///false means that you just do nothing,it will close
                /// action buttons by default
                handler(false);

              },
              color: Colors.deepPurple),
        ],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  taskList[index][0]['value']['name'],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Checkbox(
                    value: taskList[index][0]['value']['status'],
                    onChanged: (status) async {

                    }),
              ],
            ),
          ),
        ),
      ),
    )
        : SizedBox.shrink();
  }

  Widget _getIconButton(color, icon) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),

        ///set you real bg color in your content
        color: color,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}