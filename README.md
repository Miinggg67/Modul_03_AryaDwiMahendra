# 📚 Aplikasi Perpustakaan Kampus — Modul 03 Flutter

Aplikasi mobile berbasis Flutter yang mengimplementasikan konsep fundamental navigasi antar-halaman (*Navigation Stack*) dan transisi animasi halus (*Smooth Route Transition*). Proyek ini mensimulasikan alur katalog buku hingga konfirmasi peminjaman.

---

## 🎯 Capaian Pembelajaran & Konsep

1. **Navigation Stack:** Memahami prinsip tumpukan halaman (*LIFO - Last In First Out*).
2. **Navigator.push():** Membuka halaman detail (`DetailPage`) dengan membawa data objek buku (`Book`) melalui konstruktor.
3. **Navigator.pushReplacement():** Mengganti halaman detail dengan halaman sukses (`SuccessPage`) tanpa menumpuk riwayat, sehingga pengguna tidak dapat kembali ke form/detail peminjaman saat tombol kembali ditekan.
4. **Navigator.pop():** Menghapus layar paling atas dari stack untuk kembali ke halaman sebelumnya (`HomePage`).
5. **Smooth PageRoute Transition:** Animasi perpindahan halaman kustom memadukan pergeseran (*Slide*) dan efek memudar (*Fade*) dengan kurva `Curves.easeInOutCubic`.

---

## 📱 Alur Navigasi Antar Halaman

[ HomePage ]
│
│  Navigator.push() (Kirim objek Book)
▼
[ DetailPage ]
│
│  Navigator.pushReplacement() (Ganti halaman)
▼
[ SuccessPage ]
│
│  Navigator.pop() (Kembali ke Beranda)
▼
[ HomePage ]


* **HomePage (`lib/pages/home_pages.dart`):** Menampilkan daftar buku perpustakaan, stok buku yang tersedia, dan tombol *Lihat Detail*.
* **DetailPage (`lib/pages/detail_page.dart`):** Menampilkan rincian buku (penulis, tahun terbit, kategori, deskripsi), tombol *Pinjam Buku*, dan tombol *Kembali*.
* **SuccessPage (`lib/pages/success_page.dart`):** Menampilkan konfirmasi peminjaman sukses, rincian tanggal pinjam dan batas pengembalian, serta tombol *Kembali ke Beranda*.

---

## 📂 Struktur Direktori

```text
lib/
├── pages/
│   ├── detail_page.dart       # Layar rincian informasi buku
│   ├── home_pages.dart        # Layar beranda daftar katalog buku & Model
│   └── success_page.dart      # Layar konfirmasi peminjaman sukses
└── main.dart                  # Inisialisasi tema dan rute awal

assets/
└── images/                    # Cover buku lokal (.png)
    ├── flutter.png
    ├── dart.png
    └── uiux.png
