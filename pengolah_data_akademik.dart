import 'dart:io';

void main() {
  // Data mata kuliah
  List<Map<String, dynamic>> mataKuliah = [
    {
      'nama': 'Pemrograman Dart',
      'kode': 'TI101',
      'sks': 3,
      'semester': 3,
    },
    {
      'nama': 'Basis Data',
      'kode': 'TI102',
      'sks': 3,
      'semester': 3,
    },
    {
      'nama': 'Jaringan Komputer',
      'kode': 'TI103',
      'sks': 2,
      'semester': 4,
    },
    {
      'nama': 'Sistem Operasi',
      'kode': 'TI104',
      'sks': 3,
      'semester': 4,
    },
    {
      'nama': 'Internet of Things',
      'kode': 'TI105',
      'sks': 2,
      'semester': 5,
    },
    {
      'nama': 'Kecerdasan Buatan',
      'kode': 'TI106',
      'sks': 3,
      'semester': 5,
    },
    {
      'nama': 'Pemrograman Web',
      'kode': 'TI107',
      'sks': 2,
      'semester': 2,
    },
    {
      'nama': 'Matematika Diskrit',
      'kode': 'TI108',
      'sks': 3,
      'semester': 2,
    },
  ];

  bool berjalan = true;

  while (berjalan) {
    print('\n========================================');
    print('       PENGOLAH DATA AKADEMIK');
    print('========================================');
    print('1. Tampilkan semua mata kuliah');
    print('2. Cari berdasarkan kata kunci');
    print('3. Filter berdasarkan SKS');
    print('4. Urutkan berdasarkan nama');
    print('5. Keluar');
    print('========================================');

    stdout.write('Pilih menu: ');
    String? pilihan = stdin.readLineSync();

    switch (pilihan) {
      // ==========================================
      // 1. TAMPILKAN SEMUA DATA
      // ==========================================
      case '1':
        print('\n========== DAFTAR MATA KULIAH ==========');

        mataKuliah.forEach((mk) {
          print(
            '${mk['kode']} | '
            '${mk['nama']} | '
            '${mk['sks']} SKS | '
            'Semester ${mk['semester']}',
          );
        });

        break;

      // ==========================================
      // 2. PENCARIAN BERDASARKAN KATA KUNCI
      // ==========================================
      case '2':
        stdout.write('\nMasukkan kata kunci: ');
        String keyword = stdin.readLineSync()!.toLowerCase();

        var hasilPencarian = mataKuliah.where(
          (mk) =>
              mk['nama'].toString().toLowerCase().contains(keyword) ||
              mk['kode'].toString().toLowerCase().contains(keyword),
        );

        print('\n========== HASIL PENCARIAN ==========');

        if (hasilPencarian.isEmpty) {
          print('Data tidak ditemukan.');
        } else {
          hasilPencarian.forEach((mk) {
            print(
              '${mk['kode']} | '
              '${mk['nama']} | '
              '${mk['sks']} SKS | '
              'Semester ${mk['semester']}',
            );
          });
        }

        break;

      // ==========================================
      // 3. FILTER BERDASARKAN SKS
      // ==========================================
      case '3':
        stdout.write('\nMasukkan jumlah SKS: ');

        try {
          int sks = int.parse(stdin.readLineSync()!);

          var hasilFilter = mataKuliah.where(
            (mk) => mk['sks'] == sks,
          );

          print('\n========== MATA KULIAH $sks SKS ==========');

          if (hasilFilter.isEmpty) {
            print('Tidak ada mata kuliah dengan $sks SKS.');
          } else {
            hasilFilter.forEach((mk) {
              print(
                '${mk['kode']} | '
                '${mk['nama']} | '
                '${mk['sks']} SKS | '
                'Semester ${mk['semester']}',
              );
            });
          }
        } catch (e) {
          print('Input SKS harus berupa angka!');
        }

        break;

      // ==========================================
      // 4. URUTKAN BERDASARKAN NAMA
      // ==========================================
      case '4':
        var dataUrut = List<Map<String, dynamic>>.from(mataKuliah);

        dataUrut.sort(
          (a, b) => a['nama'].compareTo(b['nama']),
        );

        print('\n========== URUT BERDASARKAN NAMA ==========');

        dataUrut.forEach((mk) {
          print(
            '${mk['kode']} | '
            '${mk['nama']} | '
            '${mk['sks']} SKS | '
            'Semester ${mk['semester']}',
          );
        });

        break;

      // ==========================================
      // 5. KELUAR
      // ==========================================
      case '5':
        berjalan = false;
        print('\nProgram selesai. Terima kasih!');
        break;

      default:
        print('\nPilihan tidak tersedia!');
    }
  }
}