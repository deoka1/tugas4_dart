// ==========================================
// PRAKTIKUM 3 - POLA BILANGAN
// ==========================================

void main() {
  // ==========================================
  // 1. Bilangan 1 sampai 50
  //    Lewati kelipatan 3 dengan continue
  // ==========================================

  print('=== BILANGAN 1 SAMPAI 50 ===');

  for (int i = 1; i <= 50; i++) {
    if (i % 3 == 0) {
      continue;
    }

    print(i);
  }

  // ==========================================
  // 2. Segitiga bintang 5 baris
  //    Menggunakan perulangan bersarang
  // ==========================================

  print('\n=== SEGITIGA BINTANG ===');

  for (int baris = 1; baris <= 5; baris++) {
    String hasil = '';

    for (int kolom = 1; kolom <= baris; kolom++) {
      hasil += '* ';
    }

    print(hasil);
  }

  // ==========================================
  // 3. Faktorial menggunakan while
  //    dibandingkan dengan rekursif
  // ==========================================

  print('\n=== FAKTORIAL ===');

  int angka = 5;

  int hasilWhile = faktorialWhile(angka);
  int hasilRekursif = faktorialRekursif(angka);

  print('Angka              : $angka');
  print('Faktorial (while)  : $hasilWhile');
  print('Faktorial (rekursif): $hasilRekursif');
}


// ==========================================
// Faktorial menggunakan WHILE
// ==========================================

int faktorialWhile(int n) {
  int hasil = 1;
  int i = 1;

  while (i <= n) {
    hasil *= i;
    i++;
  }

  return hasil;
}


// ==========================================
// Faktorial menggunakan REKURSIF
// ==========================================

int faktorialRekursif(int n) {
  if (n <= 1) {
    return 1;
  }

  return n * faktorialRekursif(n - 1);
}