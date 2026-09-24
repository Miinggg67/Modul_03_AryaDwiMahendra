import 'package:flutter/material.dart';
import 'detail_page.dart';

class Book {
  final String title;
  final String author;
  final int stock;
  final String year;
  final String category;
  final String description;
  final String imagePath;

  const Book({
    required this.title,
    required this.author,
    required this.stock,
    required this.year,
    required this.category,
    required this.description,
    required this.imagePath,
  });
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Book> books = const [
    Book(
      title: 'Guntur Petualang',
      author: 'Arya S.Kom, M.Kom',
      stock: 3,
      year: '2024',
      category: 'Teknologi',
      description:
          'Buku ini membahas dasar hingga praktik membangun aplikasi Flutter.',
      imagePath: 'assets/images/flutter.png',
    ),
    Book(
      title: 'Kisah Guntur Melirik Dunia',
      author: 'Arya S.Kom, M.Kom',
      stock: 5,
      year: '2023',
      category: 'Pemrograman',
      description:
          'Mempelajari dasar sintaks, struktur data, dan OOP pada bahasa Dart.',
      imagePath: 'assets/images/dart.png',
    ),
    Book(
      title: 'Arya Abang Abangan',
      author: 'Arya S.Kom, M.Kom',
      stock: 2,
      year: '2024',
      category: 'Desain',
      description:
          'Panduan komprehensif merancang antarmuka aplikasi yang modern dan user-friendly.',
      imagePath: 'assets/images/uiux.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.menu_book_rounded, size: 22),
            SizedBox(width: 8),
            Text(
              'Perpustakaan Kampus',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: books.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            elevation: 1.5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 65,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              book.imagePath,
                              fit: BoxFit.contain,
                              errorBuilder: (_, __, ___) => const Icon(
                                Icons.broken_image,
                                color: Color(0xFF1976D2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              book.title,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              book.author,
                              style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              'Tersedia: ${book.stock} Buku',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1976D2),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(book: book),
                          ),
                        );
                      },
                      child: const Text('Lihat Detail'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
