import 'dart:io';

double inputTinggi() {
  while (true) {
    stdout.write("Masukkan tinggi badan kamu (cm) : ");
    double? tinggi = double.tryParse(stdin.readLineSync() ?? "");

    if (tinggi != null && tinggi > 0) {
      return tinggi;
    }

    print("Input tidak valid.\n");
  }
}

double inputBerat() {
  while (true) {
    stdout.write("Masukkan berat badan kamu (kg) : ");
    double? berat = double.tryParse(stdin.readLineSync() ?? "");

    if (berat != null && berat > 0) {
      return berat;
    }

    print("Input tidak valid !\n");
  }
}