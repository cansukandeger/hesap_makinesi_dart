import 'dart:io';

int siraliToplama(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  return toplam;
}

int opsiyonelCikarma(int sayi1, int sayi2, [int opsiyonelSayi = 0] ) {
  return sayi1 - sayi2 - opsiyonelSayi;
}

int requiredCarpma({required int sayi1, required int sayi2}) {
  int sonuc = sayi1 * sayi2;
  return sonuc;
}

double bolme(int sayi1, int sayi2){
  double sonuc = sayi1 / sayi2;
  return sonuc;
}



void menuGoster() {
  print("Islem tipini seciniz: ");
  print("1- Toplama\n2- Cikarma\n3- Carpma\n4- Bolme");
}


void main() {
  menuGoster();
  bool run = true;

  while(run){
    int islem = int.parse(stdin.readLineSync()!);
    bool result = true;

    if(result){
      switch (islem){
        case 1:

          print("Birinci sayiyi giriniz: ");
          int sayi1 = int.parse(stdin.readLineSync()!);
          print("İkinci sayiyi giriniz: ");
          int sayi2 = int.parse(stdin.readLineSync()!);
          int sonuc = siraliToplama(sayi1,sayi2);
          print("Toplama Sonucu: $sonuc");
          menuGoster();
          break;

        case 2:

          print("Birinci sayiyi giriniz: ");
          int sayi1 = int.parse(stdin.readLineSync()!);
          print("İkinci sayiyi giriniz: ");
          int sayi2 = int.parse(stdin.readLineSync()!);
          print("Opsiyonel sayiyi giriniz (Varsayilan değer = 0): ");
          String opsiyonelGirdi = stdin.readLineSync()!;
          int opsiyonelSayi = (opsiyonelGirdi.isNotEmpty) ? int.parse(opsiyonelGirdi) : 0;
          int sonuc = opsiyonelCikarma(sayi1, sayi2, opsiyonelSayi);
          print("Cikarma Sonucu: $sonuc");
          menuGoster();
          break;

        case 3:

          print("Birinci sayiyi giriniz: ");
          int sayi1 = int.parse(stdin.readLineSync()!);
          print("İkinci sayiyi giriniz: ");
          int sayi2 = int.parse(stdin.readLineSync()!);
          int sonuc = requiredCarpma(sayi1 : sayi1, sayi2 : sayi2);
          print("Carpma Sonucu: $sonuc");
          menuGoster();
          break;

        case 4:

          print("Birinci sayiyi giriniz: ");
          int sayi1 = int.parse(stdin.readLineSync()!);
          print("İkinci sayiyi giriniz: ");
          int sayi2 = int.parse(stdin.readLineSync()!);
          double sonuc = bolme(sayi1 , sayi2);
          print("Bolme Sonucu: $sonuc");
          menuGoster();
          break;

        default:
          print("Lutfen gecerli bir islem tipi seciniz! ");
          menuGoster();
          break;
      }
    }
  }
}