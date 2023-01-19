import 'package:flutter/material.dart';
import 'package:test_project/Widgets/DropdownTile.dart';
import 'package:test_project/Screens/profile_screen.dart';

import '../Models/employee.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Employee> empList = [
    Employee('John Doe', 'https://cdn-icons-png.flaticon.com/512/236/236831.png', 'CTO', 'john.doe@gamil.com', '0890098765', 'IND'),
    Employee('Richard Miles', 'https://cdn-icons-png.flaticon.com/512/2202/2202112.png', 'CTO', 'richad.miles@gamil.com', '0890098765',
        'IND'),
    Employee(
        'Ralph Roe', 'https://cdn-icons-png.flaticon.com/512/3135/3135715.png', 'CTO', 'ralph.roe@gamil.com', '0890098765', 'IND'),
    Employee('Priya T', 'https://cdn-icons-png.flaticon.com/512/201/201634.png', 'CTO', 'priya.t@gamil.com', '0890098765', 'IND'),
    Employee('Vince Toe', 'https://cdn-icons-png.flaticon.com/512/201/201634.png', 'CTO', 'vince.toe@gamil.com', '0890098765', 'IND')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffddd6f3   ), Color(0xfffaaca8)])),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(8),
              child: Text(
                'Employee List',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
              ),
            ),
            Divider(thickness: 2),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: empList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>  NextPage(empObj: empList[index])));
                },
                child: Column(
                  children: [
                    DropdownTile(empName: empList[index].name, profileImageUrl: empList[index].profileImage),
                    Divider(thickness: 1),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
