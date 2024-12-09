import 'package:flutter/material.dart';

class Navegacion extends StatelessWidget {
  const Navegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const DrawerHeader(
            child: Column(
          children: [
            Icon(
              Icons.account_balance,
              size: 48,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "FinanTech",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                // color: Colors.white,
              ),
            ),
          ],
        )),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Inicio'),
          onTap: () => Navigator.pushNamed(context, '/'),
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('Quienes somos'),
          onTap: () => Navigator.pushNamed(context, '/quienesSomos'),
        ),
        ListTile(
          leading: const Icon(Icons.business_outlined),
          title: const Text('Servicios'),
          onTap: () => Navigator.pushNamed(context, '/servicios'),
        ),
        ListTile(
          leading: const Icon(Icons.calculate),
          title: const Text('Calcular Prestamos'),
          onTap: () => Navigator.pushNamed(context, '/calculadora'),
        ),
        ListTile(
          leading: const Icon(Icons.contact_phone),
          title: const Text('Contactos'),
          onTap: () => Navigator.pushNamed(context, '/contacto'),
        ),
      ]),
    );
  }
}
