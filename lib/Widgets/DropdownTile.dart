import 'package:flutter/material.dart';
import 'package:test_project/models/employee.dart';

class DropdownTile extends StatelessWidget{
  const DropdownTile({Key? key, required this.empName, required this.profileImageUrl}) : super(key: key);
  final String empName;
  final String profileImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      height: 75,
      width:  MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20,),
          ClipRRect(borderRadius: BorderRadius.circular(100), child: Image.network(profileImageUrl, width: 60, height: 60,)),
          SizedBox(width: 20,),
          Text(empName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
