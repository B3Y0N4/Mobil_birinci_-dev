import 'dart:io';

void main() {
  bool devam = true;
  while (devam) {
    print("İşlem tipini seçiniz:\n1- Toplama\n2- Çıkarma\n3- Çarpma\n4- Bölme\n");
    String? secim = stdin.readLineSync();
    if (secim == '1' || secim == '2' || secim == '3' || secim == '4') {
      print("İlk sayıyı giriniz:");
      double sayi1 = double.parse(stdin.readLineSync()!);
      print("İkinci sayıyı giriniz:");
      double sayi2 = double.parse(stdin.readLineSync()!);

      if (secim == '1') {
        print("Sonuç: ${topla(sayi1, sayi2)}");
      } else if (secim == '2') {
        print("Sonuç: ${cikar(sayi1, sayi2)}");
      } else if (secim == '3') {
        print("Sonuç: ${carp(sayi1, sayi2)}");
      } else if (secim == '4') {
        if (sayi2 != 0) {
          print("Sonuç: ${bol(sayi1, sayi2)}");
        } else {
          print("Bir sayı sıfıra bölünemez.");
        }
      }

      print("Başka bir işlem yapmak istiyor musunuz? (E/H)");
      String cevap = stdin.readLineSync()!;
      if (cevap.toUpperCase() != "E") {
        devam = false;
      }
    } else {
      print("Geçersiz seçim. Lütfen tekrar deneyin.");
    }
  }
}

double topla(double sayi1, double sayi2) {
  return sayi1 + sayi2;
}

double cikar(double sayi1, double sayi2) {
  return sayi1 - sayi2;
}

double carp(double sayi1, double sayi2) {
  return sayi1 * sayi2;
}

double bol(double sayi1, double sayi2) {
  return sayi1 / sayi2;
}
