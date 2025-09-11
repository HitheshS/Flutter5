import 'package:flutter/material.dart';
import 'calorie_data_model.dart';

class CalorieCalculationScreen extends StatefulWidget {
  const CalorieCalculationScreen({super.key});

  @override
  State<CalorieCalculationScreen> createState() => _CalorieCalculationScreentState();
}

class _CalorieCalculationScreentState extends State<CalorieCalculationScreen> {

  final _formkey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  final _caloriegoalcontroller = TextEditingController();
  final _breakfastcontroller = TextEditingController();
  final _lunchcontroller = TextEditingController();
  final _dinnercontroller = TextEditingController();
  final _snackscontroller = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calorie Entry Page"),backgroundColor: Colors.green,),
      body: Container(
        padding: EdgeInsets.all(20),
        child : Form(
          key : _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _agecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your age',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your age";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _breakfastcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your breakfast calorie',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your breakfast calorie";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _lunchcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your lunch calorie',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your lunch calorie";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _dinnercontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your dinner calorie',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your dinner calorie";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _snackscontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your snacks calorie',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your snacks calorie";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),


                TextFormField(
                  controller: _caloriegoalcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your daily calorie goal',
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Enter your daily calorie goal";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.black),
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      final user = User(
                        name: _namecontroller.text, 
                        age: int.parse(_agecontroller.text), 
                        dailycalorie: int.parse(_caloriegoalcontroller.text), 
                        breakfast: int.parse(_breakfastcontroller.text), 
                        lunch: int.parse(_lunchcontroller.text), 
                        dinner: int.parse(_dinnercontroller.text), 
                        snacks: int.parse(_snackscontroller.text));

                        Navigator.pushNamed(context, '/result', arguments: user);
                    }

                  }, 
                  child: Text("Submit Details"))
              ],
            ),
          ),
        )
      ),
    );
  }
}