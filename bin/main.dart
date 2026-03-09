import 'dart:io';
import 'package:dart_bmi_calculator/bmi_calculator.dart';
import 'package:dart_bmi_calculator/input_handler.dart';
import 'package:dart_bmi_calculator/bmi_history.dart';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  print("=== BMI Calculator ===");

  while (true) {
    double tinggi = inputTinggi();
    double berat = inputBerat();

    Map<String, dynamic> hasil = hitungBMI(tinggi, berat);

    print("\nBMI kamu: ${hasil['bmi'].toStringAsFixed(2)}");
    print("Kategori: ${hasil['kategori']}");

    riwayat.add(hasil);

    stdout.write("\nHitung lagi? (y/n): ");
    String? jawab = stdin.readLineSync();

    if (jawab?.toLowerCase() != 'y') {
      break;
    }
  }

  tampilkanRiwayat(riwayat);
}