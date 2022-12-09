import 'package:examen_tristan_26/Router/app_routes_26.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        //nos devuelve cada uno de lis item que le pasamos
        itemBuilder: ((context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: (() {
            //con el push sale la opcion de arriba a la izquierda retroceder
            Navigator.pushNamed(context, AppRoutes.MenuOptions[index].route);
            //con el pushRecplacement no sale la opcion de retroceder, Util en logins
            //Navigator.pushReplacement(context, route);
          }),
        )),
        //Para saber cuantos elementos tiene la lista
        separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.MenuOptions.length) ,  
      );
  }
}