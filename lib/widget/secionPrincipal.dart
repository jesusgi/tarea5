import 'package:flutter/material.dart';

class sesionPrincipal extends StatelessWidget {
  const sesionPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: [
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
          Center(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tu futuro financiero \nEmpieza aqui',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 48,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                              shadows: [
                                Shadow(
                                  offset: Offset(0, 0.2),
                                  blurRadius: 4,
                                  color: Colors.black.withOpacity(0.5),
                                )
                              ]),
                        ),
                        const SizedBox(height: 24),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 16),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'Soluciones financieras personalizadas para \n hacer realidad tus sueños',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  height: 1.5,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 0.1),
                                      blurRadius: 2,
                                      color: Colors.black.withOpacity(0.5),
                                    )
                                  ]),
                            )),
                        const SizedBox(height: 32),
                        MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: ElevatedButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/calculadora'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor:
                                    Theme.of(context).colorScheme.primary,
                                textStyle: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                elevation: 4,
                                shadowColor: Colors.black.withOpacity(0.3),
                              ),
                              child: const Text('Calculadora de Prestamos'),
                            ))
                      ])))
        ],
      ),
    );
  }
}
