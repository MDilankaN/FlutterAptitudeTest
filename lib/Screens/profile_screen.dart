import 'package:flutter/material.dart';
import '../Models/employee.dart';

class NextPage extends StatefulWidget{
  const NextPage({Key? key, required this.empObj}) : super(key: key);
  final Employee empObj;
  @override
  State<StatefulWidget> createState()  => _NextPageState();

}

class _NextPageState extends State<NextPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text(widget.empObj.name), centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffddd6f3   ), Color(0xfffaaca8)])),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 20,),
            ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.network(widget.empObj.profileImage, width: 120, height: 120,)),
            SizedBox(height: 10,),
            Text(widget.empObj.name, textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            ProfileDetail('Job Title', widget.empObj.jobtitle),
            Divider(thickness: 1),
            ProfileDetail('Email Address', widget.empObj.email),
            Divider(thickness: 1),
            ProfileDetail('Phone Number', widget.empObj.phoneNo),
            Divider(thickness: 1),
            ProfileDetail('Region', widget.empObj.region),
            Divider(thickness: 1),

          ],
        ),
      ),
    );


  }
  Widget ProfileDetail(String title, String value){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),),
          Text(value, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),)
        ],
      ),
    );
  }

}