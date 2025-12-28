import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const name = 'settings-screen';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          const _SectionHeader(title: 'Apariencia'),
          const _SettingsTile(
            icon: Icons.dark_mode_outlined,
            title: 'Modo Oscuro',
            subtitle: 'Alternar el tema oscuro',
          ),
          const _SettingsTile(
            icon: Icons.language_outlined,
            title: 'Idioma',
            subtitle: 'Español',
          ),
          const Divider(height: 32),
          const _SectionHeader(title: 'Contenido'),
          const _SettingsTile(
            icon: Icons.notifications_outlined,
            title: 'Notificaciones',
            subtitle: 'Gestionar preferencias de notificaciones',
          ),
          const _SettingsTile(
            icon: Icons.download_outlined,
            title: 'Descargas',
            subtitle: 'Gestionar contenido descargado',
          ),
          const Divider(height: 32),
          const _SectionHeader(title: 'Cuenta'),
          const _SettingsTile(
            icon: Icons.person_outline,
            title: 'Perfil',
            subtitle: 'Editar la información de tu perfil',
          ),
          const _SettingsTile(
            icon: Icons.lock_outline,
            title: 'Privacidad',
            subtitle: 'Ajustes de privacidad y datos',
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;

  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: colors.primary,
        ),
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(icon, color: colors.primary),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.chevron_right, color: colors.onSurfaceVariant),
      onTap: () {
      },
    );
  }
}