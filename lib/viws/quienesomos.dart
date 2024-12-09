import 'package:clase23/widget/app_bar_action.dart';
import 'package:clase23/widget/foot.dart';
import 'package:clase23/widget/navegacion.dart';
import 'package:flutter/material.dart';

void main() => runApp(const QuienesSomos());

class QuienesSomos extends StatelessWidget {
  const QuienesSomos({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Text('Quienes Somos',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Sobre nosotros',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                    softWrap: true,
                    'Lorem ipsum dolor sit abet, consectetur adipisicing elit. Earum vero corrupti voluptates, aperiam est asperiores, ea odio, maxime eos corporis ut magni.\n'
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit dolor debitis soluta, excepturi, laboriosam dolorum non, beatae veniam ipsa eum ad quia expedita minus explicabo placeat itaque voluptate, quos culpa! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti laboriosam sit natus totam libero at accusantium excepturi doloremque quae, vitae dignissimos soluta quod nesciunt, provident adipisci quas inventore odit impedit!'),
              ),
            ],
          ),
          const Text(
            'Balores',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: [
              SizedBox(
                width: 400,
                height: 250,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text('Vision'),
                        SizedBox(height: 16),
                        Text(
                          'Claro, estaré encantado de ayudarte a redactar un artículo en español. Sin embargo, parece que no has proporcionado el tema ni las palabras clave que deseas incluir. Por favor, indícame el tema y las palabras clave para que pueda crear el artículo que necesitas.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: 250,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text('Misión'),
                        SizedBox(height: 16),
                        Text(
                          'Los objetivos actúan como un mapa que nos guía en nuestra vida personal y profesional. Sin ellos, es fácil perderse en la rutina diaria y dejar que las oportunidades se deslicen entre nuestros dedos. Aquí hay algunas razones clave por las que los objetivos son esenciales:',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 400,
                height: 250,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text('Objetivo'),
                        SizedBox(height: 16),
                        Text(
                          'Establecer objetivos es una práctica fundamental que nos permite dirigir nuestros esfuerzos y recursos hacia lo que realmente queremos alcanzar. En este artículo, exploraremos la importancia de los objetivos, cómo establecerlos de manera efectiva y algunas estrategias para mantenernos motivados en el camino hacia su consecución.',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Footer()
        ])));
  }
}
