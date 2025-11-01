import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const Color playstationBlue = Color(0xFF0070D1);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Informacion del desarrollador', 
          style: TextStyle(fontSize: 20.0), 
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: playstationBlue, 
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),

              _buildInfoRow(
                context,
                icon: Icons.person_outline,
                title: 'Nombre',
                value: 'Adam Taktak',
                iconColor: playstationBlue,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                context,
                icon: Icons.cake_outlined,
                title: 'Edad',
                value: '18 años',
                iconColor: playstationBlue,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                context,
                icon: Icons.badge_outlined,
                title: 'C.I.',
                value: '32.016.013',
                iconColor: playstationBlue,
              ),
              const SizedBox(height: 16),
              _buildInfoRow(
                context,
                icon: Icons.phone_android_outlined,
                title: 'Teléfono',
                value: '+58 414-6263358',
                iconColor: playstationBlue,
              ),

              const Divider(height: 40, thickness: 1, color: Colors.white24),

              Center(
                child: Text(
                  'Platinos de PlayStation',
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildPlatinumRow(
                context,
                game: 'God of War Ragnarök',
              ),
              const SizedBox(height: 10),
              _buildPlatinumRow(
                context,
                game: 'Sekiro: Shadows Die Twice',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required Color iconColor,
  }) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.bodySmall?.copyWith(color: Colors.grey[400]),
            ),
            Text(
              value,
              style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPlatinumRow(BuildContext context, {required String game}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 20),
        const SizedBox(width: 10),
        Text(
          game,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}