import 'package:flutter/material.dart';
import '../widgets/ovo_cash_card.dart';
import '../widgets/service_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _saldoTerlihat = false;
  int _tabIndex = 0;

  final List<String> _tabs = ['Favorit', 'Finansial', 'Hiburan', 'Pilihan Lain'];

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 56, 16, 16),
      child: Row(
        children: [
          const Text(
            'OVO ZHAFIR',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4A2BD0),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFCFC8F7),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.local_offer, color: Color(0xFF4A2BD0)),
                SizedBox(width: 8),
                Text(
                  'Promo',
                  style: TextStyle(
                    color: Color(0xFF4A2BD0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFEEEEEE)),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFFFFE08A),
                      child: Icon(Icons.verified_user, color: Color(0xFF4A2BD0)),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 56),
                        child: Text(
                          'Cek data kamu demi kelancaran pemakaian akun OVO Premier kamu',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A2BD0),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text('Cek'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Tab kategori: gaya aktif/non-aktif ditentukan ternary
  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Row(
        children: [
          for (int i = 0; i < _tabs.length; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  _tabIndex = i;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: _tabIndex == i
                      ? const Color(0xFFF0F0F0)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _tabs[i],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: _tabIndex == i
                        ? const Color(0xFF4A2BD0)
                        : Colors.grey,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Grid layanan 4 kolom x 2 baris
  Widget _buildGrid() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      children: const [
        ServiceItem(
          label: 'Nabung by Superbank',
          icon: Icons.savings,
          warnaIcon: Color(0xFF6B46C1),
          warnaLatar: Color(0xFFE9E4FA),
          badge: 'BARU',
        ),
        ServiceItem(
          label: 'Pinjaman',
          icon: Icons.payments,
          warnaIcon: Color(0xFF5B3FD0),
          warnaLatar: Color(0xFFE9E4FA),
          badge: '100JT',
        ),
        ServiceItem(
          label: 'Uang Elektronik',
          icon: Icons.account_balance_wallet,
          warnaIcon: Color(0xFFE8602C),
          warnaLatar: Color(0xFFFDEBDD),
          badge: 'Rp 1',
        ),
        ServiceItem(
          label: 'Angsuran Kredit',
          icon: Icons.receipt_long,
          warnaIcon: Color(0xFFE91E63),
          warnaLatar: Color(0xFFFCE4EC),
        ),
        ServiceItem(
          label: 'Pulsa/Paket Data',
          icon: Icons.smartphone,
          warnaIcon: Color(0xFF2962FF),
          warnaLatar: Color(0xFFE3F0FF),
          badge: 'PROMO',
        ),
        ServiceItem(
          label: 'PLN',
          icon: Icons.bolt,
          warnaIcon: Color(0xFFFFA000),
          warnaLatar: Color(0xFFFFF3E0),
          badge: 'PROMO',
        ),
        ServiceItem(
          label: 'Air PDAM',
          icon: Icons.water_drop,
          warnaIcon: Color(0xFF29B6F6),
          warnaLatar: Color(0xFFE1F5FE),
        ),
        ServiceItem(
          label: 'Internet & TV Kabel',
          icon: Icons.live_tv,
          warnaIcon: Color(0xFFE8602C),
          warnaLatar: Color(0xFFFDEBDD),
        ),
      ],
    );
  }

  // Banner gelap pengganti banner promo
  Widget _buildBanner() {
    return Container(
      width: double.infinity,
      height: 120,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1B3A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EASYCASH x OVO',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(height: 8),
          Text(
            'Cairkan Dana',
            style: TextStyle(
              color: Color(0xFF4CD964),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: const Color(0xFFBDB4F2),
            child: Column(
              children: [
                _buildHeader(),
                OvoCashCard(
                  saldoTerlihat: _saldoTerlihat,
                  onSaldoTap: () {
                    setState(() {
                      _saldoTerlihat = !_saldoTerlihat;
                    });
                  },
                ),
                const SizedBox(height: 16),
                // Panel putih melengkung di atas latar ungu
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      _buildInfoCard(),
                      _buildTabs(),
                      _buildGrid(),
                      _buildBanner(),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}