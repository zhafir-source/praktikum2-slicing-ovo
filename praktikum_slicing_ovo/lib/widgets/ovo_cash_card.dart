import 'package:flutter/material.dart';

class OvoCashCard extends StatelessWidget {
  final bool saldoTerlihat;
  final VoidCallback onSaldoTap;

  const OvoCashCard({
    super.key,
    required this.saldoTerlihat,
    required this.onSaldoTap,
  });

  Widget _aksi(IconData icon, String label) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 32),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF4A3BC0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'OVO Cash',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              Text('Total Saldo', style: TextStyle(color: Colors.white)),
              SizedBox(width: 4),
              Icon(Icons.visibility, color: Colors.white, size: 16),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              GestureDetector(
                onTap: onSaldoTap,
                child: Text(
                  saldoTerlihat ? 'Rp 31.217.320.312.780' : 'Tap untuk lihat',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF4A3BC0),
                      child: Text(
                        'P',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      'OVO Points',
                      style: TextStyle(
                        color: Color(0xFF4A2BD0),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Icon(Icons.chevron_right, size: 18, color: Color(0xFF4A2BD0)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              _aksi(Icons.add_circle, 'Top Up'),
              _aksi(Icons.arrow_circle_up, 'Transfer'),
              _aksi(Icons.download, 'Tarik Tunai'),
              _aksi(Icons.list_alt, 'History'),
            ],
          ),
        ],
      ),
    );
  }
}