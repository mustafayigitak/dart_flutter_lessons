import 'package:flutter/material.dart'; // Flutter kütüphanesini projeye dahil eder

// Uygulamayı başlatan ana fonksiyon
void main() {
  runApp(const MyApp()); // MyApp sınıfını çalıştırır ve ekranda gösterir
}

// Flutter uygulamasının ana sınıfı
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 'const' anahtar kelimesi, bu widget'in değişmez olduğunu belirtir. Performansı artırır.
  // const kullanıldığında bu widget hafızada saklanır ve tekrar tekrar oluşturulmaz, böylece daha verimli çalışır.
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Sağ üstteki debug yazısını kaldırır
      home: Scaffold(
        appBar: AppBar(title: const Text("Dart Temelleri")), // Üst kısımda başlık gösterir
        body: const VariableExamples(), // Sayfanın içeriğini gösterecek olan sınıf
      ),
    );
  }
}

// Değişkenler, sabitler ve tür dönüşümleri anlatılıyor
class VariableExamples extends StatelessWidget {
  const VariableExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Kenarlardan 16 birim boşluk bırakır
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Elemanları dikeyde ortalar
          crossAxisAlignment: CrossAxisAlignment.start, // Elemanları yatayda sola hizalar
          children: [
            const Text("Dart'ta Değişkenler, Sabitler ve Tür Dönüşümleri"),
            const SizedBox(height: 10),
            _variableSection(),
            const SizedBox(height: 20),
            _constantSection(),
            const SizedBox(height: 20),
            _typeConversionSection(),
          ],
        ),
      ),
    );
  }

  // Değişkenler Bölümü
  Widget _variableSection() {
    int sayi = 10; // Tam sayı saklayan bir değişken
    double oran = 5.5; // Ondalık sayı saklayan bir değişken
    String isim = "Flutter"; // Metin (string) saklayan bir değişken
    bool aktifMi = true; // Doğru (true) veya yanlış (false) değer saklayan değişken

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Değişkenler:"),
        Text("Sayı: $sayi"),
        Text("Oran: $oran"),
        Text("İsim: $isim"),
        Text("Aktif mi: $aktifMi"),
      ],
    );
  }

  // Sabitler Bölümü
  Widget _constantSection() {
    const double pi = 3.1415; // Matematikte kullanılan sabit bir değer, derleme zamanında belirlenir.
    final DateTime zaman = DateTime.now(); // Çalışma zamanında bir kez atanır ve değiştirilemez.

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Sabitler:"),
        Text("Pi sayısı: $pi"),
        Text("Şu anki zaman: $zaman"),
      ],
    );
  }

  // Tür Dönüşümleri Bölümü
  Widget _typeConversionSection() {
    int sayi = 10;
    double oran = 5.5;
    String sayiMetin = sayi.toString(); // Tam sayıyı metne çevirir
    int oranTamSayi = oran.toInt(); // Ondalık sayıyı tam sayıya çevirir (virgülden sonrasını atar)
    double metinOran = double.parse("4.2"); // Metni (string) ondalık sayıya çevirir

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Tür Dönüşümleri:"),
        Text("Sayıdan Metin: $sayiMetin"),
        Text("Ondalıktan Tam Sayıya: $oranTamSayi"),
        Text("Metinden Ondalığa: $metinOran"),
      ],
    );
  }
}

// --- Flutter Temel Bileşenler ---

// `child` Nedir?
// child, bir widget'in içine başka bir widget koymak için kullanılır.
// Örnek:
// Container(
//   child: Text("Merhaba Dünya"), // Container içine bir yazı ekler
// )

// `Padding` Nedir?
// Padding, içeriğin etrafında boşluk bırakmak için kullanılır.
// Örnek:
// Padding(
//   padding: EdgeInsets.all(8.0), // Tüm kenarlardan 8 birim boşluk ekler
//   child: Text("Boşluklu metin"),
// )

// `const` ve `final` Arasındaki Farklar
// const: Derleme zamanında belirlenen ve asla değiştirilemeyen sabitlerdir.
// Örnek:
// const double pi = 3.1415;
// Bu değer, program çalışmadan önce belirlenmiştir ve değiştirilemez.

// final: Çalışma zamanında bir kez atanabilir ancak sonradan değiştirilemez.
// Örnek:
// final DateTime zaman = DateTime.now();
// Bu değer, program çalışırken belirlenir ancak daha sonra değiştirilemez.

// `EdgeInsets.all()` Nedir?
// Widget'in etrafına boşluk (padding) eklemek için kullanılan bir yardımcı sınıftır.
// .all() tüm kenarlara eşit miktarda boşluk ekler.
// Örnek:
// Padding(
//   padding: EdgeInsets.all(16.0), // Her kenardan 16 birim boşluk ekler
//   child: Text("Kenarlardan boşluk bırakılmış metin"),
// )
