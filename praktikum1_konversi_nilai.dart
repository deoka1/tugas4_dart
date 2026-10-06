String hurufMutu(double nilai) {
  if (nilai < 0 || nilai > 100) {
    throw ArgumentError('Nilai harus 0 sampai 100');
  }

  if (nilai >= 80) {
    return 'A';
  } else if (nilai >= 70) {
    return 'B';
  } else if (nilai >= 60) {
    return 'C';
  } else if (nilai >= 50) {
    return 'D';
  } else {
    return 'E';
  }
}

void main() {
  List<double> nilai = [
    95,
    85,
    78,
    72,
    65,
    58,
    50,
    45,
    30,
    10,
  ];

  for (double n in nilai) {
    try {
      print('Nilai $n = ${hurufMutu(n)}');
    } catch (e) {
      print(e);
    }
  }
}