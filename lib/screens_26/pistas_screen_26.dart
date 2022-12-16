import 'package:examen_tristan_26/theme/app_theme.dart';
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
              backgroundColor: AppTheme.primary,
              backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
            ),
          ),
        ],
      ), 
      body: Center(
         child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [

              CustomCard( imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', 
                name : 'Pista de padel',
                text: 'Lorem Ipsun  Lorem Ipsun Lorem Ipsun Lorem Lorem IpsunLorem IpsunLorem Ipsun',
              ),
              
              SizedBox( height: 10,),
              CustomCard(
                imageUrl: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg',
                name: 'Piscina cubierta',
                text: 'Lorem Ipsun  Lorem Ipsun Lorem Ipsun Lorem Lorem IpsunLorem IpsunLorem Ipsun',
              ),
              
              SizedBox( height: 10,),
              CustomCard(
                imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg',
                name: 'Campo de baloncesto',
                text: 'Lorem Ipsun  Lorem Ipsun Lorem Ipsun Lorem Lorem IpsunLorem IpsunLorem Ipsun',
              ),
              
              SizedBox( height: 10,),
              CustomCard(
                imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', 
                name: 'Campo de futbol',
                text: 'Lorem Ipsun  Lorem Ipsun Lorem Ipsun Lorem Lorem IpsunLorem IpsunLorem Ipsun',
              ),
                
            ],
          ),
      ),
    );
  }
}