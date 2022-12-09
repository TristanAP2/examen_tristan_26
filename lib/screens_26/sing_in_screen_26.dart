import 'package:examen_tristan_26/screens_26/screens.dart';
import 'package:examen_tristan_26/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SingInScreen extends StatelessWidget {
   
  const SingInScreen({Key? key}) : super(key: key);

  
  
  @override
  Widget build(BuildContext context) {
    
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
    'usuario': 'default',
    'password': 'default'
    };
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox( height: 50,),

            const FlutterLogo( size: 100,),

            const SizedBox( height: 30,),

            CustomTextFormField(
              hintText: 'Usuario',
              labelText: 'Usuario',
              icon: Icons.supervised_user_circle,
              formProperty: 'usuario',
              formValues: formValues,
            ),

            const SizedBox( height: 30,),

            CustomTextFormField(
              hintText: 'Password',
              labelText: 'Password',
              obscureText: true,
              icon: Icons.supervised_user_circle,
              formProperty: 'password',
              formValues: formValues,
            ),

            const SizedBox( height: 30,),

            ElevatedButton(
              child: const SizedBox(
                width: double.infinity,
                child: Center(child: Text('Sing in'))
              ),
              onPressed: () {
                if ( !myFormKey.currentState!.validate()) {
                  print('Formuario no valido');
                  
                  return;
                }
                final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
                  Navigator.push(context, route);
                print(formValues);
              },
            ),

          ],

         )
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.close),
              onPressed: () => Navigator.pop(context),
            ),
    );
  }
}