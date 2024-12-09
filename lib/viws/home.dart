import 'package:carousel_slider/carousel_slider.dart';
import 'package:clase23/widget/app_bar_action.dart';
import 'package:clase23/widget/feacture_card.dart';
import 'package:clase23/widget/foot.dart';
import 'package:clase23/widget/navegacion.dart';
import 'package:clase23/widget/secionPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:clase23/widget/foot.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          const sesionPrincipal(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 48),
            child: Column(
              children: [
                const Text(
                  'Algunos de Nuestros Servicios',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 48),
                //* SECCIÓN DE TARJETAS
                SizedBox(
                  width: 1000,
                  child: GridView.count(
                    crossAxisCount: isDestor ? 3 : 1,
                    shrinkWrap: true,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                    childAspectRatio: 1.2,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      FeactureCard(
                        icon: Icons.attach_money,
                        title: 'Prestamos Personales',
                        description:
                            'Tasas competitivas y plazos flexibles adaptados a tus necesidades',
                      ),
                      FeactureCard(
                        icon: Icons.business,
                        title: 'Prestamos Empresariales',
                        description:
                            'Impulsa tu negocio con nuestras soluciones financieras',
                      ),
                      FeactureCard(
                        icon: Icons.home,
                        title: 'Prestamos Hipotecarios',
                        description: 'Haz realidad el sueño de tu casa propia',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                const Text(
                  'Colaboradores',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                const Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: [
                      colaboradores(
                        nombre: 'Juan Perez',
                        imagen:
                            'https://th.bing.com/th?q=Animes+Blanco+Y+Negro&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=es-XL&cc=DO&setlang=es&adlt=moderate&t=1&mw=247',
                        puesto: 'Diseñador UI/UX',
                      ),
                      colaboradores(
                        nombre: 'Felipe Perez',
                        imagen:
                            'https://th.bing.com/th/id/OIP.UvD8tmtFZjyJXxOX7GMP3AHaEK?w=317&h=180&c=7&r=0&o=5&pid=1.7',
                        puesto: 'Cajero',
                      ),
                      colaboradores(
                        nombre: 'Jesus Nolasco',
                        imagen:
                            'https://th.bing.com/th?q=Animes+HD&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=es-XL&cc=DO&setlang=es&adlt=moderate&t=1&mw=247',
                        puesto: 'Gerente',
                      ),
                      colaboradores(
                        nombre: 'Juan Andres',
                        imagen:
                            'https://th.bing.com/th/id/OIF.Q7HhemeDcTDwdfa0H1Lfsg?w=187&h=182&c=7&r=0&o=5&pid=1.7',
                        puesto: 'Gerente Administrativo',
                      ),
                      colaboradores(
                        nombre: 'Mario Simarro',
                        imagen:
                            'https://th.bing.com/th/id/OIP.rmkKIsq_4c6KhwE1ot1p3gHaEK?w=248&h=180&c=7&r=0&o=5&pid=1.7',
                        puesto: 'Gerente Financiero',
                      ),
                      colaboradores(
                        nombre: 'Maria Perez',
                        imagen:
                            'data:image/jpeg;base64,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',
                        puesto: 'Gerente de Operaciones',
                      ),
                      colaboradores(
                        nombre: 'Mariano Perez',
                        imagen:
                            'https://th.bing.com/th/id/OIP._rwQLBJP87e_wxw1yyknFgHaEK?w=281&h=180&c=7&r=0&o=5&pid=1.7',
                        puesto: 'Sub Gerente',
                      ),
                    ]),
              ],
            ),
            // CarouselSlider(
            //   options: CarouselOptions(
            //       height: 400.0,
            //       autoPlay: true,
            //       autoPlayInterval: Duration(seconds: 5)),
            //   items: [1, 2, 3, 4, 5].map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return sesionPrincipal();
            //       },
            //     );
            //   }).toList(),
            // )
          ),
          const Footer()
        ]),
      ),
    );
  }
}

class colaboradores extends StatelessWidget {
  final String nombre;
  final String imagen;
  final String puesto;
  const colaboradores({
    super.key,
    required this.nombre,
    required this.imagen,
    required this.puesto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imagen),
            ),
            const SizedBox(height: 16),
            Text(nombre),
            const SizedBox(height: 16),
            Text(puesto),
          ],
        ),
      ),
    );
  }
}
