import 'dart:async';

import 'package:clase23/widget/app_bar_action.dart';
import 'package:clase23/widget/foot.dart';
import 'package:clase23/widget/mapa.dart';
import 'package:clase23/widget/navegacion.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() => runApp(const Contactos());

class Contactos extends StatelessWidget {
  const Contactos({super.key});

  @override
  Widget build(BuildContext context) {
    final formu = GlobalKey<FormState>();
    String nombre = '';
    final isDestor = MediaQuery.of(context).size.width > 600;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1A237E),
          title: const Text(
            'FinanTech',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: isDestor ? const [AppBarAction()] : null,
        ),
        drawer: isDestor ? null : const Navegacion(),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Stack(children: [
                Positioned.fill(
                    child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40'),
                  fit: BoxFit.cover,
                )))),
                Positioned.fill(
                    child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1)
                  ],
                )))),
                const Center(
                  child: Text('Contactados',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            // const MapSample(),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: [
                const cardDireccion(
                  sucursal: 'Sucursal moca',
                  direccion: 'Av. Juan de la Cruz, 100',
                  horario: 'Lunes a Viernes ',
                  dias: 'Lunes a Viernes',
                  finsemana: 'Sabado',
                  horarioFin: '18:00 a 02:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal San Francisco',
                  direccion: 'Av. Juan pablo duarte',
                  dias: 'Lunes a Viernes',
                  horario: ' 8:00 a 18:00',
                  finsemana: 'Domingo',
                  horarioFin: '08:00 a 02:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal Samana',
                  direccion: 'calle 1, esquina mella',
                  dias: 'Lunes a Viernes',
                  horario: '8:00 a 18:00',
                  finsemana: 'Sabado y Domingo',
                  horarioFin: '08:00 a 01:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal San Jose',
                  direccion: 'calle 3, frente a Claro',
                  dias: 'Lunes a Viernes',
                  horario: '8:00 a 18:00',
                  finsemana: 'Sabado',
                  horarioFin: '08:00 a 02:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal Santo Domingo',
                  direccion: 'calle 1, frente a la Catedral',
                  dias: 'Lunes a Viernes',
                  horario: '8:00 a 18:00',
                  finsemana: 'Sabado',
                  horarioFin: '08:00 a 02:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal Mao',
                  direccion: 'av. Presidente Vasquez',
                  dias: 'Lunes a Viernes',
                  horario: '8:00 a 18:00',
                  finsemana: 'Sabado',
                  horarioFin: '08:00 a 02:00',
                ),
                const cardDireccion(
                  sucursal: 'Sucursal Puerto Plata',
                  direccion: 'cale pedro Brean',
                  dias: 'Lunes a Viernes',
                  horario: '8:00 a 18:00',
                  finsemana: 'Sabado',
                  horarioFin: '08:00 a 02:00',
                ),
                Container(
                  width: 1000,
                  height: 300,
                  child: Stack(children: [
                    Positioned.fill(
                        child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                      image: NetworkImage(
                          'https://th.bing.com/th/id/R.db7bcfe050fcd3e08fdc9fd45232eaab?rik=bKGPGu4fUMOMAA&riu=http%3a%2f%2f4.bp.blogspot.com%2f-BfKgDGRQkss%2fT5CxfUnMn_I%2fAAAAAAAAObE%2fHsTZxgLqfhs%2fs1600%2f9.%2bMapa%2bde%2bRepublica%2bDominicana%2c%2bGoogle%2bMaps%2b2012.jpg&ehk=32yaIuLb0hcr29zu2lWhAWDNX5sOSLizQvNT93arBeQ%3d&risl=&pid=ImgRaw&r=0'),
                      fit: BoxFit.cover,
                    )))),
                  ]),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Container(
                  width: 500,
                  child: Form(
                      key: formu,
                      child: Column(children: [
                        const Text(
                          'Contactanos',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nombre completo',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Ingrese un nombre';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            nombre = value.toString();
                          },
                          canRequestFocus: true,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Ingrese un email';
                              }
                              return null;
                            }),
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Teléfono',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Ingrese un teléfono';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          maxLines: 5,
                          textAlign: TextAlign.justify,
                          decoration: const InputDecoration(
                            labelText: 'Comentarios',
                            hintText: 'Escribe aquí tu comentario',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Ingrese un comentario';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {
                                if (formu.currentState!.validate()) {
                                  formu.currentState!.save();
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            title: const Text(
                                                '¡Gracias por contactarnos!'),
                                            content: Text(
                                                'Nos pondremos en contacto con usted ${nombre}, lo mas pronto posible'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Text('OK'),
                                              )
                                            ]);
                                      });

                                  // showAboutDialog(
                                  //   context: context,
                                  //   applicationIcon: const Icon(Icons.info),
                                  //   applicationName: 'FinanTech',
                                  //   children: [
                                  //     Text(
                                  //         'Hola ${nombre} Pronto estaremos en contacto con usted'),
                                  //   ],

                                  // );
                                }
                                // alert();
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: const Text('Enviar'),
                            ))
                      ]))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Footer()
          ]),
        ));
  }
}

class cardDireccion extends StatelessWidget {
  final String sucursal;
  final String direccion;
  final String horario;
  final String dias;
  final String finsemana;
  final String horarioFin;
  const cardDireccion({
    required this.sucursal,
    required this.direccion,
    required this.horario,
    required this.dias,
    required this.finsemana,
    required this.horarioFin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 270,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(sucursal,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(direccion),
          const SizedBox(height: 16),
          Text(dias,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(horario),
          const SizedBox(height: 16),
          Text(finsemana,
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text(horarioFin),
        ],
      ),
    );
  }
}

class alert extends StatelessWidget {
  const alert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('¿Desea enviar tus comentarios?'),
      content: const Text('Este proceso puede tardar unos minutos'),
      actions: [
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('¡Gracias por tus comentarios!'),
                      content: Text('Nos pondremos en contacto con ustedes'),
                    ));
          },
          child: const Text('Si'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('No'),
        ),
      ],
      elevation: 4,
    );
  }
}
