import 'package:examen_tristan_26/Router/app_routes_26.dart';
import 'package:examen_tristan_26/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        actions: [
          Container(
            child: const CircleAvatar(
              backgroundColor: AppTheme.primary,
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: ((context, index) => ListTile(
          leading: Icon(AppRoutes.ListViewOptions[index].icon),
          title: Text(AppRoutes.ListViewOptions[index].name),
          onTap: (() {
            Navigator.pushNamed(context, AppRoutes.ListViewOptions[index].route);
          }),
        )),
        separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.ListViewOptions.length) ,  
      );
  }
}