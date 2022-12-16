import 'package:flutter/material.dart';
import 'package:examen_tristan_26/screens_26/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const FlutterLogo( size: 200,),

              const SizedBox( height: 30,),

              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(builder: (context) => const SingInScreen());
                  Navigator.push(context, route);
                },
                child: const Text('Sing in', style: TextStyle( fontSize: 20)),
              ),

              const SizedBox( height: 30,),

              ElevatedButton(
                onPressed: null,
                child: Text('Sing up' , style: TextStyle( fontSize: 20),),
              ),
            ],
          ),
        )
    );
  }
}