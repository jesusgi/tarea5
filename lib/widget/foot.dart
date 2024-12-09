import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() => runApp(const MyApp());

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Column(children: [
        Text(
          '© 2023 FinanTech',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
        SizedBox(height: 8),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Servicios',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      )),
                  const SizedBox(width: 4),
                  Text('Cajeros Automaticos',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text('Auto-caja',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text(
                    'Cajeros 24 horas',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ]),
            SizedBox(width: 10),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sucursales',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      )),
                  const SizedBox(width: 4),
                  Text('Santo Domingo',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text('Santiago',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text(
                    'Moca',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Mao',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'San Francisco',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ]),
            SizedBox(width: 10),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Contactos',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      )),
                  const SizedBox(width: 4),
                  Text('Principal',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text('809-890-0987',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      )),
                  const SizedBox(height: 4),
                  Text(
                    'Interior sin cargo',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '1809-732-0981',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'finantech@info.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ]),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Desarrollado por ',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          Text(
            'Ing. Nolasco',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.open_in_new,
            size: 12,
            color: Colors.white,
          ),
          SizedBox(width: 4),
          Text(
            'https://github.com/ing-nolasco',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ]),
      ]),
    );
  }
}
