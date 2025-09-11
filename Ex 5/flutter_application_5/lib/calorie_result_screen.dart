import 'package:flutter/material.dart';
import 'calorie_data_model.dart';

class CalorieResultScreen extends StatelessWidget {
  const CalorieResultScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final user = ModalRoute.of(context)!.settings.arguments as User;
    final totalcalorie = user.breakfast + user.lunch + user.dinner + user.snacks;
    final rem_cal = user.dailycalorie - totalcalorie;
    return Scaffold(
      appBar: AppBar(title: Text("Calorie Details"), backgroundColor: Colors.green,),
      body : Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 4,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Name:  ${user.name}'),
                subtitle: Text('Age: ${user.age}'),
              ),
            ),

            Card(
              elevation: 4,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.fork_left),
                title: Text('Name:  ${user.name}'),
                subtitle: Text('Age: ${user.age}'),
              ),
            ),

            Card(
              elevation: 4,
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('Name:  ${user.name}'),
                subtitle: Text('Age: ${user.age}'),
              ),
            ),


          ],
        ),

      )
    );
  }
}