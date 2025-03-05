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
    // debugPrint, Flutter'da yalnızca debug modunda çalışan bir konsol çıktısı fonksiyonudur.
    // Bu, avoid_print linter uyarılarını çözer ve eğitim için uygun bir seçenektir.
    debugPrint("=== DART ÖRNEKLERİ BAŞLIYOR ===");

    // --------------------------------------
    // 1. BÖLÜM: TEMEL VERİ YAPILARI
    // --------------------------------------
    debugPrint("\n=== 1. BÖLÜM: TEMEL VERİ YAPILARI ===");

    // 1.1 Değişkenler ve Sabitler
    debugPrint("1.1 Değişkenler ve Sabitler:");
    // var, türü otomatik algılanan bir değişken tanımlar.
    var name = "Ahmet"; // String türünde bir veri.
    // debugPrint ile name değişkenini yazdırıyoruz.
    // $name, string içinde değişkeni doğrudan kullanmamızı sağlar (string interpolation).
    debugPrint("Değişken (var): $name");

    // String, metin türünde bir değişken tanımlar.
    String surname = "Yılmaz";
    debugPrint("String değişken: $surname");

    // int, tam sayı türünde bir değişken tanımlar.
    int age = 20;
    debugPrint("Yaş (int): $age");

    // double, ondalık sayı türünde bir değişken tanımlar.
    double height = 1.75;
    debugPrint("Boy (double): $height");

    // const, derleme zamanında sabit bir değer tanımlar; değiştirilemez.
    const String country = "Türkiye";
    debugPrint("Sabit (const): $country");

    // final, bir kez atanır ve sonra değiştirilemez; çalışma zamanında değer alabilir.
    final int birthYear = 2004;
    debugPrint("Sabit (final): $birthYear");

    // 1.2 Tür Dönüşümleri
    debugPrint("\n1.2 Tür Dönüşümleri:");
    // String türünde bir değişken.
    String ageString = "25";
    // int.parse, String’i tam sayıya (int) çevirir.
    int convertedAge = int.parse(ageString);
    debugPrint("String'den int'e: $convertedAge");

    // toString, bir değeri String’e çevirir.
    String ageToString = convertedAge.toString();
    debugPrint("int'ten String'e: $ageToString");

    // double türünde bir değişken.
    double weight = 70.5;
    // toInt, ondalık sayıyı tam sayıya çevirir (ondalık kısım atılır).
    int weightInt = weight.toInt();
    debugPrint("double'dan int'e: $weightInt");

    // --------------------------------------
    // 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER
    // --------------------------------------
    debugPrint("\n=== 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER ===");

    // 2.1 Karşılaştırma Operatörleri
    debugPrint("2.1 Karşılaştırma Operatörleri:");
    // int türünde iki değişken tanımlıyoruz.
    int num1 = 10;
    int num2 = 20;
    // ==, iki değerin eşit olup olmadığını kontrol eder; bool (true/false) döner.
    bool isEqual = num1 == num2;
    debugPrint("$num1 == $num2: $isEqual");

    // >, bir değerin diğerinden büyük olup olmadığını kontrol eder.
    bool isGreater = num1 > num2;
    debugPrint("$num1 > $num2: $isGreater");

    // <=, bir değerin diğerinden küçük veya eşit olup olmadığını kontrol eder.
    bool isLessOrEqual = num1 <= num2;
    debugPrint("$num1 <= $num2: $isLessOrEqual");

    // 2.2 If-Else Yapısı
    debugPrint("\n2.2 If-Else Yapısı:");
    // if, bir koşul doğruysa içindeki kodu çalıştırır.
    if (num1 < num2) {
      debugPrint("$num1, $num2'den küçüktür.");
    } else if (num1 == num2) {
      // else if, önceki koşul yanlışsa başka bir koşulu kontrol eder.
      debugPrint("$num1, $num2'ye eşittir.");
    } else {
      // else, hiçbir koşul doğru değilse çalışır.
      debugPrint("$num1, $num2'den büyüktür.");
    }

    // 2.3 Switch-Case Yapısı
    debugPrint("\n2.3 Switch-Case Yapısı:");
    // int türünde bir değişken.
    int day = 3;
    // switch, bir değişkenin değerine göre farklı durumları kontrol eder.
    switch (day) {
      case 1: // day 1 ise bu blok çalışır.
        debugPrint("Pazartesi");
        break; // break, switch’ten çıkmayı sağlar.
      case 2:
        debugPrint("Salı");
        break;
      case 3:
        debugPrint("Çarşamba");
        break;
      default: // Hiçbir case eşleşmezse bu blok çalışır.
        debugPrint("Geçersiz gün");
    }

    // 2.4 Döngüler
    debugPrint("\n2.4 Döngüler:");
    // for döngüsü: Belirli bir aralıkta tekrar yapar.
    debugPrint("for döngüsü (1-5):");
    // int i = 1, başlangıç değeri; i <= 5, koşul; i++, her turda i’yi artırır.
    for (int i = 1; i <= 5; i++) {
      debugPrint("Sayı: $i");
    }

    // while döngüsü: Koşul doğru olduğu sürece çalışır.
    int counter = 0; // Döngü için bir sayaç.
    debugPrint("while döngüsü (0-2):");
    while (counter < 3) {
      debugPrint("Counter: $counter");
      counter++; // counter’ı artırmazsak sonsuz döngü olur!
    }

    // do-while döngüsü: En az bir kez çalışır, sonra koşulu kontrol eder.
    int value = 5;
    debugPrint("do-while döngüsü (geri sayım):");
    do {
      debugPrint("Değer: $value");
      value--; // value’yu azaltır.
    } while (value > 0); // Koşul, döngünün devam edip etmeyeceğini belirler.
  }
}