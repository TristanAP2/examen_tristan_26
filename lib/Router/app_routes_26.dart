import 'package:examen_tristan_26/models/menu_option.dart';
import 'package:examen_tristan_26/screens_26/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final ListViewOptions = <MenuOption>[
    MenuOption(route: 'pistas', icon: Icons.psychology, name: 'Pistas', screens: const PistasScreen()),
    MenuOption(route: 'monitores', icon: Icons.supervised_user_circle, name: 'Monitores', screens: const MonitoresScreen()),
    MenuOption(route: 'reservas', icon: Icons.phone, name: 'Reservas', screens: const ReservaScreen()),
  ];

  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.home, name: 'Home Screen', screens: const HomeScreen()),
    MenuOption(route: 'singin', icon: Icons.signal_cellular_null_sharp, name: 'Sing in Screen', screens: const SingInScreen()),
    MenuOption(route: 'listView1', icon: Icons.list, name: 'List View1', screens: const ListView1Screen()),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in MenuOptions) {
      appRoutes.addAll({option.route :( BuildContext context ) => option.screens});
    }
    for (var option in ListViewOptions) {
      appRoutes.addAll({option.route :( BuildContext context ) => option.screens});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }

}