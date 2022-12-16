import 'package:examen_tristan_26/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String? name;
  final String? text;
  const CustomCard({super.key, required this.imageUrl, this.name, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage( imageUrl ),
              placeholder: const NetworkImage('https://media.tenor.com/1qrYT711uEoAAAAC/cargando.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 1000),
            ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text( name ??  'Unknown', style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary),),
          ),
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
            child: Text( text ?? 'unknown' ),
          ),
          Padding(
            padding: const EdgeInsets.only(right : 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Reservar', style: TextStyle(color: AppTheme.primary)),
                  
                ),
              ],
            ),
          )
        ],
      ),
      
    );
  }
}