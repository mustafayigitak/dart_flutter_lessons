// Flutter uygulamasını çalıştırmak için gerekli kütüphaneyi içe aktarıyoruz.
// import, başka bir dosyadan kod veya araçları projemize dahil eder.
import 'package:flutter/material.dart';

// main fonksiyonu, uygulamanın başlangıç noktasıdır.
// void, bu fonksiyonun bir değer döndürmediğini belirtir.
void main() {
  // runApp, Flutter uygulamasını başlatır ve ekranda bir widget ağacı gösterir.
  runApp(const MyApp());
}

// MyApp, uygulamanın ana widget'ıdır ve StatelessWidget'tan türetilir.
// StatelessWidget, durumu (state) değişmeyen widget'lar için kullanılır.
class MyApp extends StatelessWidget {
  // const, bu widget'ın sabit olduğunu ve değişmeyeceğini belirtir.
  // super.key, üst sınıfa bir kimlik (key)传递 eder; genellikle opsiyonel.
  const MyApp({super.key});

  // build metodu, widget'ın ekranda nasıl görüneceğini tanımlar.
  // @override, üst sınıftaki build metodunu geçersiz kıldığımızı gösterir.
  // Widget, geri dönüş türüdür; Flutter'da her şey bir widget'tır.
  // BuildContext, widget'ın ağaçtaki yerini temsil eden bir parametredir.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // MaterialApp, Flutter'ın temel uygulama yapısını sağlar.
      title: 'Dart ve Flutter Öğreniyorum', // Uygulamanın adı (genelde üstte görünmez).
      home: const MyHomePage(), // Ana ekranı belirler; MyHomePage'i başlatır.
    );
  }
}

// MyHomePage, durumu değişebilen bir widget'tır; StatefulWidget'tan türetilir.
// StatefulWidget, kullanıcı etkileşimi gibi durumlarda değişebilen yapılar için kullanılır.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // createState, bu widget'ın durumunu (state) yöneten bir sınıf oluşturur.
  // State<MyHomePage>, hangi widget’a bağlı olduğunu belirtir (generic type).
  // =>, kısa bir fonksiyon yazımıdır; burada _MyHomePageState sınıfını döndürür.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState, MyHomePage'in durumunu yöneten sınıftır.
// State sınıfından türetilir ve dinamik davranışları kontrol eder.
// _ ile başlayan isimler, Dart’ta private (özel) olduğunu gösterir.
class _MyHomePageState extends State<MyHomePage> {
  // build metodu, ekranın nasıl görüneceğini tanımlar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold, temel bir sayfa düzeni sağlar (üst çubuk, gövde vs.).
      appBar: AppBar(
        // AppBar, üstte bir başlık çubuğu oluşturur.
        title: const Text('Dart Örnekleri'), // Başlık olarak sabit bir metin.
        // Text, ekranda yazı göstermek için kullanılan bir widget.
      ),
      body: const Center(
        // body, sayfanın ana içeriğini temsil eder.
        // Center, içeriği ekranın ortasına hizalar.
        child: Text('Konsolda Dart örneklerini gör!'), // child, tek bir alt widget alır.
      ),
    );
  }

  // initState, widget ilk oluşturulduğunda bir kez çalışır.
  // super.initState(), üst sınıfın initState metodunu çağırır (gerekli bir kural).
  @override
  void initState() {
    super.initState();
    // runDartExamples fonksiyonunu çağırarak Dart örneklerini çalıştırıyoruz.
    runDartExamples();
  }

  // runDartExamples, Dart örneklerini konsola yazdıran bir fonksiyondur.
  // void, bu fonksiyonun değer döndürmediğini belirtir.
  void runDartExamples() {
    // debugPrint, debug modunda konsola yazı yazdırır.
    debugPrint("=== DART ÖRNEKLERİ BAŞLIYOR ===");

    // --------------------------------------
    // 1. BÖLÜM: TEMEL VERİ YAPILARI
    // --------------------------------------
    debugPrint("\n=== 1. BÖLÜM: TEMEL VERİ YAPILARI ===");

    // 1.1 Değişkenler ve Sabitler
    debugPrint("1.1 Değişkenler ve Sabitler:");
    var name = "Ahmet";
    debugPrint("Değişken (var): $name");

    String surname = "Yılmaz";
    debugPrint("String değişken: $surname");

    int age = 20;
    debugPrint("Yaş (int): $age");

    double height = 1.75;
    debugPrint("Boy (double): $height");

    const String country = "Türkiye";
    debugPrint("Sabit (const): $country");

    final int birthYear = 2004;
    debugPrint("Sabit (final): $birthYear");

    // 1.2 Tür Dönüşümleri
    debugPrint("\n1.2 Tür Dönüşümleri:");
    String ageString = "25";
    int convertedAge = int.parse(ageString);
    debugPrint("String'den int'e: $convertedAge");

    String ageToString = convertedAge.toString();
    debugPrint("int'ten String'e: $ageToString");

    double weight = 70.5;
    int weightInt = weight.toInt();
    debugPrint("double'dan int'e: $weightInt");

    // --------------------------------------
    // 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER
    // --------------------------------------
    debugPrint("\n=== 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER ===");

    // 2.1 Karşılaştırma Operatörleri
    debugPrint("2.1 Karşılaştırma Operatörleri:");
    int num1 = 10;
    int num2 = 20;
    bool isEqual = num1 == num2;
    debugPrint("$num1 == $num2: $isEqual");

    bool isGreater = num1 > num2;
    debugPrint("$num1 > $num2: $isGreater");

    bool isLessOrEqual = num1 <= num2;
    debugPrint("$num1 <= $num2: $isLessOrEqual");

    // 2.2 If-Else Yapısı
    debugPrint("\n2.2 If-Else Yapısı:");
    if (num1 < num2) {
      debugPrint("$num1, $num2'den küçüktür.");
    } else if (num1 == num2) {
      debugPrint("$num1, $num2'ye eşittir.");
    } else {
      debugPrint("$num1, $num2'den büyüktür.");
    }

    // 2.3 Switch-Case Yapısı
    debugPrint("\n2.3 Switch-Case Yapısı:");
    int day = 3;
    switch (day) {
      case 1:
        debugPrint("Pazartesi");
        break;
      case 2:
        debugPrint("Salı");
        break;
      case 3:
        debugPrint("Çarşamba");
        break;
      default:
        debugPrint("Geçersiz gün");
    }

    // 2.4 Döngüler
    debugPrint("\n2.4 Döngüler:");
    debugPrint("for döngüsü (1-5):");
    for (int i = 1; i <= 5; i++) {
      debugPrint("Sayı: $i");
    }

    int counter = 0;
    debugPrint("while döngüsü (0-2):");
    while (counter < 3) {
      debugPrint("Counter: $counter");
      counter++;
    }

    int value = 5;
    debugPrint("do-while döngüsü (geri sayım):");
    do {
      debugPrint("Değer: $value");
      value--;
    } while (value > 0);

    // --------------------------------------
    // 3. BÖLÜM: FONKSİYONLAR
    // --------------------------------------
    debugPrint("\n=== 3. BÖLÜM: FONKSİYONLAR ===");
    
    // 3.1 Basit Bir Fonksiyon (Değer Döndürmeyen)
    debugPrint("3.1 Basit Bir Fonksiyon (Değer Döndürmeyen):");
    void sayHello() {
      debugPrint("Merhaba, Dünya!");
    }
    sayHello();

    // 3.2 Parametre Alan Fonksiyon
    debugPrint("\n3.2 Parametre Alan Fonksiyon:");
    // greet, bir kişiye selam vermek için kullanılan bir fonksiyondur.
    // String türünde bir parametre (personName) alır.
    // Bu parametre, selam verilecek kişinin adını temsil eder.
    // Fonksiyon, "Merhaba, [personName]!" şeklinde bir mesaj yazdırır.
    void greet(String personName) {
      debugPrint("Merhaba, $personName!");
    }
    // greet fonksiyonunu farklı isimlerle çağırıyoruz.
    greet("Ahmet"); // "Merhaba, Ahmet!" yazdırır.
    greet("Ayşe");  // "Merhaba, Ayşe!" yazdırır.

    // 3.3 Değer Döndüren Fonksiyon
    debugPrint("\n3.3 Değer Döndüren Fonksiyon:");
    int add(int a, int b) {
      return a + b;
    }
    int sum = add(5, 3);
    debugPrint("5 + 3 = $sum");

    // 3.4 Opsiyonel Parametreli Fonksiyon
    debugPrint("\n3.4 Opsiyonel Parametreli Fonksiyon:");
    void introduce(String name, [String? hobby = "bilinmiyor"]) {
      debugPrint("$name'in hobisi: $hobby");
    }
    introduce("Ali");
    introduce("Zeynep", "kitap okumak");

    // 3.5 İsimlendirilmiş Parametreli Fonksiyon
    debugPrint("\n3.5 İsimlendirilmiş Parametreli Fonksiyon:");
    void describePerson({required String name, int age = 0}) {
      debugPrint("Ad: $name, Yaş: $age");
    }
    describePerson(name: "Fatma", age: 25);
    describePerson(name: "Mehmet");

    // 3.6 Kısa Fonksiyon Yazımı (Fat Arrow)
    debugPrint("\n3.6 Kısa Fonksiyon Yazımı (Fat Arrow):");
    int multiply(int x, int y) => x * y;
    debugPrint("4 * 5 = ${multiply(4, 5)}");
  }
}