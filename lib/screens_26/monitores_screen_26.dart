import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
   
  const MonitoresScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('TA'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Column(
                children: const [
                  CircleAvatar(
                  maxRadius: 120,
                  backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
                  ),

                  SizedBox( height: 30,),

                  Text('Rafa nadal'),
                  CircleAvatar(
                  maxRadius: 120,
                  backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
                  ),
                  Text('Gisela Pulido'),

                  SizedBox( height: 30,),

                  CircleAvatar(
                  maxRadius: 120,
                  backgroundImage: NetworkImage('https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
                  ),
                  Text('Raul Gonzalez'),

                  SizedBox( height: 30,),
                  CircleAvatar(
                  maxRadius: 120,
                  backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
                  ),
                  Text('Mireia Belmonte'),
                  
                ],


              ),
            ],
          ),
        ),
      )
    );
  }
}