import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const name = 'about-screen';

  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const SizedBox(height: 32),
          _AppLogo(),
          const SizedBox(height: 24),
          _AppTitle(),
          const SizedBox(height: 8),
          _AppVersion(),
          const SizedBox(height: 48),
          const _InfoCard(
            icon: Icons.movie_creation_outlined,
            title: 'Sobre Cine FractalUp',
            description:
                'Tu destino definitivo para descubrir y explorar películas. Navega a través de una amplia colección de filmes y encuentra tu próxima favorita.',
          ),
          const SizedBox(height: 16),
          const _InfoCard(
            icon: Icons.code_outlined,
            title: 'Tecnología',
            description:
                'Construida con Flutter, utilizando patrones de arquitectura modernos y mejores prácticas para una experiencia de usuario fluida.',
          ),
          const SizedBox(height: 16),
          const _InfoCard(
            icon: Icons.info_outline,
            title: 'Información de Versión',
            description: 'Versión 1.0.0\nLanzamiento: Diciembre 2025',
          ),
          const SizedBox(height: 32),
          Center(
            child: Text(
              '© 2025 Cine FractalUp',
              style: TextStyle(
                fontSize: 12,
                color: colors.onSurfaceVariant,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: colors.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.movie_filter_outlined,
          size: 50,
          color: colors.primary,
        ),
      ),
    );
  }
}

class _AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cine FractalUp',
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

class _AppVersion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Text(
        'Versión 1.0.0',
        style: TextStyle(
          fontSize: 14,
          color: colors.onSurfaceVariant,
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      color: colors.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: colors.primary, size: 24),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                height: 1.5,
                color: colors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}