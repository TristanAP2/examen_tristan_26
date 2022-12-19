import 'package:examen_tristan_26/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:examen_tristan_26/theme/app_theme.dart';

class ReservaScreen extends StatelessWidget {
   
  const ReservaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = Colors.blueGrey;   
    final semana = <int>[]; 
    final semanadia = <String> ['L', 'M', 'X', 'J', 'V', 'S', 'D'];

    DateTime getMonday() {
      DateTime now = DateTime.now();
      int currentDay = now.weekday;
      DateTime firstDayOfWeek = now.subtract(Duration(days: currentDay - 1));
      return firstDayOfWeek;
    }

    for (var i = 0; i < 7; i++) {
      semana.add(getMonday().day + i);
    }
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservas'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: AppTheme.primary,
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            //1/5 de la pantalla
            height: MediaQuery.of(context).size.height / 5,
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Mes Anno',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for(var x = 0; x < semana.length; x++)
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(color),
                          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(borderRadius: BorderRadius.zero,)
                          ),
                          elevation : MaterialStateProperty.all(0),
                          minimumSize: MaterialStateProperty.all(const Size(40, 50)),
                        ),
                        onPressed: () { }, 
                        child: Column(
                          children: [
                            Text(semanadia.elementAt(x), style: TextStyle(fontSize: 10),),
                            SizedBox(width: 1, height: 5,),
                            Text(semana.elementAt(x).toString(), style: TextStyle(fontSize: 10)),
                            SizedBox(width: 1, height: 5,),
                          ]
                        )
                      )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 550,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Color.fromARGB(255, 213, 213, 213),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('10:00'),
                          SizedBox( width: 30,),
                          Text('|'),
                          SizedBox( width: 30,),
                          Text('Quedan X pistas'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('12:00'),
                          SizedBox( width: 30,),
                          Text('|'),
                          SizedBox( width: 30,),
                          Text('Padel'),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Color.fromARGB(255, 226, 226, 226),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.lock_clock),
                          SizedBox( width: 30,),
                          Text('Duracion \n 1h 30 min'),
                        ]
                        
                      ),
                      SizedBox( height: 30,),

                      ElevatedButton(
                            onPressed: (){},
                            child: Text('Reservar ya'),
                          )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}