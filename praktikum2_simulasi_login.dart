import 'dart:io';

void main() {
  const String passwordBenar = 'AnakAyam0426';

  int percobaan = 0;
  bool berhasil = false;

  do {
    percobaan++;

    stdout.write('Masukkan password: ');
    String? password = stdin.readLineSync();

    if (password == passwordBenar) {
      print('Login berhasil!');
      berhasil = true;
      break;
    } else {
      print('Password salah!');

      if (percobaan < 3) {
        print('Sisa percobaan: ${3 - percobaan}');
      }
    }
  } while (percobaan < 3);

  if (!berhasil) {
    print('Akun terkunci setelah 3 kali percobaan gagal.');
  }
}