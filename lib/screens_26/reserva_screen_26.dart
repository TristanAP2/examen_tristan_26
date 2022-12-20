import 'package:examen_tristan_26/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ReservaScreen extends StatefulWidget {
   
  const ReservaScreen({Key? key}) : super(key: key);

  @override
  State<ReservaScreen> createState() => _ReservaScreenState();
}

class _ReservaScreenState extends State<ReservaScreen> {
  bool btnState = true;

  DateTime today = DateTime.now();
  DateTime now = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
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
        child: TableCalendar(
          locale: 'en_US',
          rowHeight: 43,
          calendarFormat: CalendarFormat.week,
          headerStyle: 
            const HeaderStyle(
              formatButtonVisible: false, 
              titleCentered: true
            ),
          firstDay: now,
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today, 
          lastDay: DateTime.utc(2030,3,14),
          onDaySelected: _onDaySelected,
        ),
      ),
      Container(
          padding: EdgeInsets.all(20),
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
                          onPressed: btnState ? () { 
                            this.btnState = !btnState;
                            setState(() {
                              
                            });
                          }: null,
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