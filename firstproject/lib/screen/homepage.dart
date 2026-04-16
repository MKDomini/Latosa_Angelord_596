import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String ? title ;
  int counter = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = 'Welcome to My Home Page';
    number1.text = '0';
    number2.text = '0';
    super.initState();
  }

  void handlebuttonclick(){
    setState(() {
      counter +=1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(title!),
          ),
          Center(
            child: Text('$counter')
          ),
          ElevatedButton(onPressed: (){
            handlebuttonclick();
          }, child: Text('Counter')),

          SizedBox(height: 20,),
          TextField(controller: number1,),
          SizedBox(height: 20,),
          TextField(controller: number2,),
          ElevatedButton(onPressed: (){}, child: Text('Addition')),
          SizedBox(height: 20,),
          Center(child: Text('$total'),),
        ],
      ),
    );
  }
}