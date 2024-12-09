import 'package:clase23/widget/app_bar_action.dart';
import 'package:clase23/widget/foot.dart';
import 'package:clase23/widget/navegacion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const Servicios());

class Servicios extends StatelessWidget {
  const Servicios({super.key});

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
              child: Text('Servicios',
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
        const Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            direction: Axis.horizontal,
            children: [
              cardService(
                title: 'Prestamos Personales',
                description:
                    'Prestamos personales son un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.family_restroom_outlined,
              ),
              cardService(
                title: 'Prestamos Empresariales',
                description:
                    'Prestamos empresariales son un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.business_outlined,
              ),
              cardService(
                title: 'Prestamos Hipotecarios',
                description:
                    'Prestamos Hipotecarios son un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.home_outlined,
              ),
              cardService(
                title: 'Prestamos de Autos',
                description:
                    'Prestamos de Autos son un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.car_repair_outlined,
              ),
              cardService(
                title: 'Prestamos de Equipos',
                description:
                    'Prestamos de Equipos son un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.auto_graph_outlined,
              ),
              cardService(
                title: 'Cuenta de Ahorro Familiar',
                description:
                    'Cuenta de Ahorro Familiar es un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.family_restroom_rounded,
              ),
              cardService(
                title: 'Cuenta de ahorro infantil',
                description:
                    'Cuenta de Ahorro Familiar es un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.child_care_rounded,
              ),
              cardService(
                title: 'Cuenta de ahorro juvenil',
                description:
                    'Cuenta de Ahorro Familiar es un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.person_2_outlined,
              ),
              cardService(
                title: 'Cuenta de ahorro Planificada',
                description:
                    'Cuenta de Ahorro Planificada es un servicio que te permite hacer realidad tus sueños de tener un futuro financiero personalizado. Este servicio te brinda una variedad de opciones para elegir, desde prestamos de vivienda hasta prestamos de negocios y mucho más. Con Prestamos Personales, puedes disfrutar de una experiencia de vida única y personalizada, disfrutando de tus sueños y deseos sin importar la situación financiera actual.',
                icon: Icons.calendar_month_outlined,
              )
            ]),
        SizedBox(
          height: 20,
        ),
        const Footer()
      ])),
    );
  }
}

class cardService extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  const cardService({
    required this.title,
    required this.description,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400,
        // height: 350,
        child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                )),
            child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(children: [
                  Icon(icon, size: 48),
                  const SizedBox(height: 16),
                  Text(title),
                  const SizedBox(height: 16),
                  Text(
                      // overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      description),
                ]))));
  }
}
