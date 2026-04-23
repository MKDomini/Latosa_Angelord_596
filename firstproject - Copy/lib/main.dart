
import 'package:firstproject/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://wrhoaprquhlpqshuhjxe.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndyaG9hcHJxdWhscHFzaHVoanhlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzI3MDEzNjgsImV4cCI6MjA4ODI3NzM2OH0.MeSLbEvL0TK3ErsCZHiwqwRvOKHWuqIHf3PYQwnBDgU',
  );
  runApp(const MyApp());
}
 

class MyApp extends StatelessWidget {

  const MyApp({super.key});

 

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Student Info Manager',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

        useMaterial3: true,

      ),

      home: const LoginPage(),

    );

  }

}
