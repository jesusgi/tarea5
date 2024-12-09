import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

class AppBarAction extends StatelessWidget {
  const AppBarAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildNavButton(
            context: context,
            title: 'Inicios',
            route: '/',
            icon: Icons.home_outlined),
        _buildNavButton(
            context: context,
            title: 'Quienes Somos',
            route: '/quienesSomos',
            icon: Icons.info_outline),
        _buildNavButton(
            context: context,
            title: 'Servicios',
            route: '/servicios',
            icon: Icons.business_outlined),
        _buildCalculatoraButton(
          context: context,
          title: 'Calcular Prestamos',
          route: '/calculadora',
          icon: Icons.calculate,
        ),
        _buildNavButton(
            context: context,
            title: 'Contacto',
            route: '/contacto',
            icon: Icons.contact_support_outlined),
      ],
    );
  }

  Widget _buildNavButton({
    required BuildContext context,
    required String title,
    required String route,
    required IconData icon,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        child: TextButton(
            onPressed: () => Navigator.pushNamed(context, route),
            style: TextButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                )
              ],
            )),
      ),
    );
  }

  Widget _buildCalculatoraButton({
    required BuildContext context,
    required String title,
    required String route,
    required IconData icon,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary
            ]),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              )
            ]),
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, route),
          style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all(const Color.fromARGB(0, 187, 19, 19)),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              )),
          child: Row(
            children: [
              Icon(
                icon,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
