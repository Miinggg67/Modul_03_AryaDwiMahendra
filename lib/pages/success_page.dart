import 'package:flutter/material.dart';
import 'home_pages.dart';

class SuccessPage extends StatelessWidget {
  final Book book;

  const SuccessPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peminjaman Buku',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.collections_bookmark_rounded,
                    size: 80,
                    color: Color(0xFF1976D2),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xFF4CAF50),
                  radius: 18,
                  child: Icon(Icons.check, color: Colors.white, size: 22),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              'Peminjaman Berhasil!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              'Buku "${book.title}"\nberhasil dipinjam.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            const SizedBox(height: 28),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFFF0F4F8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_month_outlined,
                          color: Color(0xFF1976D2), size: 22),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Tanggal Pinjam',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade700)),
                          const Text('10 Maret 2026',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  Row(
                    children: [
                      const Icon(Icons.access_time_rounded,
                          color: Color(0xFF1976D2), size: 22),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Batas Pengembalian',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade700)),
                          const Text('17 Maret 2026',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.home, size: 20),
                label: const Text('Kembali ke Beranda',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                onPressed: () {
                  // Kembali langsung ke HomePage
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
