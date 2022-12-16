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
              hintText: 'Nombre',
              labelText: 'Nombre completo',
              helperText: 'Solo letras',
              icon: Icons.check_circle,
              suffixIcon: Icons.supervisor_account_outlined, 
              formProperty: 'nombre', 
              formValues: formValues,
            ),

            const SizedBox(height: 30,),
        
            CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              icon: Icons.supervised_user_circle_sharp, 
              formProperty: 'apellidos', 
              formValues: formValues,
            ),
      
            const SizedBox(height: 30,),
      
            CustomTextFormField(
              hintText: 'E-Mail',
              labelText: 'E-Mail',
              icon: Icons.alternate_email_rounded,
              //Para que salga en el teclado la @ para el email
              keyboardType: TextInputType.emailAddress,
              //para que no salgan las mayusculas
              textCapitalization: TextCapitalization.none,
              formProperty: 'email', 
              formValues: formValues,
            ),
      
            const SizedBox(height: 30,),
      
            CustomTextFormField(
              hintText: 'Password',
              labelText: 'Password',
              icon: Icons.alternate_email_rounded,
              //para contrasenas
              obscureText: true,
              formProperty: 'password', 
              formValues: formValues,
            ),

            const SizedBox(height: 30,),    
      
            CustomTextFormField(
              hintText: 'Password',
              labelText: 'Password',
              icon: Icons.alternate_email_rounded,
              //para contrasenas
              obscureText: true,
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
                }else{
                  final route = MaterialPageRoute(builder: (context) => const ListView1Screen());
                  print(formValues);
                  Navigator.pushReplacement(context, route);
                }
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