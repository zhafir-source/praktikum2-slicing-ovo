import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color warnaIcon;
  final Color warnaLatar;
  final String? badge; 

  const ServiceItem({
    super.key,
    required this.label,
    required this.icon,
    required this.warnaIcon,
    required this.warnaLatar,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: warnaLatar,
              child: Icon(icon, color: warnaIcon, size: 30),
            ),
            if (badge != null)
              Positioned(
                top: -6,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      badge!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}