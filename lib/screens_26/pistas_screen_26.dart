import 'package:flutter/material.dart';
import 'package:examen_tristan_26/widgets/widgets.dart';

class PistasScreen extends StatelessWidget {
   
  const PistasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
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
      body: Center(
         child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [

              CustomCard( imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
              name : 'Pista de padel \nLorem Ipsun  Lorem Ipsun Lorem Ipsun Lorem \n Lorem IpsunLorem IpsunLorem Ipsun s'),
              
              SizedBox( height: 10,),
              CustomCard(imageUrl: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg'
              , name: 'Piscina cubierta',),
              
              SizedBox( height: 10,),
              CustomCard(imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg',
               name: 'Campo de baloncesto'
              ),
              
              SizedBox( height: 10,),
              CustomCard(
                imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
                name: 'Campo de futbol',),
              
            ],
          ),
      ),
    );
  }
}