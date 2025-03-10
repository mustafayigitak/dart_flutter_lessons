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
    // var, bir değişkenin türünü otomatik olarak algılar ve atama yapıldığında belirler.
    // Değişken, program sırasında değeri değiştirilebilen bir veri saklama alanıdır.
    var name = "Ahmet";
    debugPrint("Değişken (var): $name"); // name değişkeni "Ahmet" değerini alır.

    // String, metin verilerini saklamak için kullanılır (örneğin, isimler, cümleler).
    // Değişkeni açıkça String türünde tanımlıyoruz.
    String surname = "Yılmaz";
    debugPrint("String değişken: $surname"); // surname, "Yılmaz" değerini tutar.

    // int, tam sayıları saklar (örneğin, 1, 20, -5 gibi).
    // Tam sayı türündeki bir değişken tanımlıyoruz.
    int age = 20;
    debugPrint("Yaş (int): $age"); // age, 20 değerini tutar.

    // double, ondalık sayıları saklar (örneğin, 1.75, 3.14 gibi).
    // Ondalıklı bir sayı için değişken tanımlıyoruz.
    double height = 1.75;
    debugPrint("Boy (double): $height"); // height, 1.75 değerini tutar.

    // const, derleme zamanında sabit bir değer tanımlar.
    // Değeri bir kez atanır ve program boyunca değişmez.
    const String country = "Türkiye";
    debugPrint("Sabit (const): $country"); // country, "Türkiye" olarak sabit kalır.

    // final, bir kez atanır ve sonra değiştirilemez, ancak const'tan farklı olarak
    // çalışma zamanında da değer alabilir (örneğin, kullanıcıdan gelen veri).
    final int birthYear = 2004;
    debugPrint("Sabit (final): $birthYear"); // birthYear, 2004 olarak sabit kalır.

    // 1.2 Tür Dönüşümleri
    debugPrint("\n1.2 Tür Dönüşümleri:");
    // Tür dönüşümü, bir veri türünü başka bir türe çevirme işlemidir.
    // String bir veriyi (örneğin "25") int türüne çevirelim.
    String ageString = "25"; // Metin olarak "25" tanımlıyoruz.
    int convertedAge = int.parse(ageString); // String'i tam sayıya çeviriyoruz.
    debugPrint("String'den int'e: $convertedAge"); // Sonuç: 25

    // int türünden bir değeri String'e çevirelim.
    // toString metodu, sayıyı metne dönüştürür.
    String ageToString = convertedAge.toString();
    debugPrint("int'ten String'e: $ageToString"); // Sonuç: "25"

    // double türünden bir değeri int'e çevirelim.
    // toInt metodu, ondalık kısmı atarak tam sayıya çevirir.
    double weight = 70.5; // Ondalıklı bir sayı.
    int weightInt = weight.toInt(); // Ondalık kısım (0.5) atılır.
    debugPrint("double'dan int'e: $weightInt"); // Sonuç: 70

    // --------------------------------------
    // 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER
    // --------------------------------------
    debugPrint("\n=== 2. BÖLÜM: KONTROL YAPILARI VE DÖNGÜLER ===");

    // 2.1 Karşılaştırma Operatörleri
    debugPrint("2.1 Karşılaştırma Operatörleri:");
    // Karşılaştırma operatörleri, iki değeri karşılaştırmak için kullanılır.
    // Sonuç her zaman true (doğru) veya false (yanlış) döner.
    int num1 = 10; // İlk sayı.
    int num2 = 20; // İkinci sayı.
    // ==, iki değerin eşit olup olmadığını kontrol eder.
    bool isEqual = num1 == num2;
    debugPrint("$num1 == $num2: $isEqual"); // 10 == 20: false

    // >, bir değerin diğerinden büyük olup olmadığını kontrol eder.
    bool isGreater = num1 > num2;
    debugPrint("$num1 > $num2: $isGreater"); // 10 > 20: false

    // <=, bir değerin diğerinden küçük veya eşit olup olmadığını kontrol eder.
    bool isLessOrEqual = num1 <= num2;
    debugPrint("$num1 <= $num2: $isLessOrEqual"); // 10 <= 20: true

    // 2.2 If-Else Yapısı
    debugPrint("\n2.2 If-Else Yapısı:");
    // if-else, bir koşula bağlı olarak kod bloğunu çalıştırmak için kullanılır.
    // Koşul true ise if bloğu, false ise else bloğu çalışır.
    if (num1 < num2) {
      debugPrint("$num1, $num2'den küçüktür."); // 10 < 20 olduğu için bu çalışır.
    } else if (num1 == num2) {
      debugPrint("$num1, $num2'ye eşittir."); // Bu, num1 ve num2 eşit değilse çalışmaz.
    } else {
      debugPrint("$num1, $num2'den büyüktür."); // Bu da çalışmaz, çünkü num1 < num2.
    }

    // 2.3 Switch-Case Yapısı
    debugPrint("\n2.3 Switch-Case Yapısı:");
    // switch-case, bir değişkenin değerine göre farklı işlemler yapar.
    // Değişken belirli bir değere eşitse ilgili case bloğu çalışır.
    int day = 3; // Gün numarası (1=Pazartesi, 2=Salı, 3=Çarşamba).
    switch (day) {
      case 1:
        debugPrint("Pazartesi"); // day 1 ise bu çalışır.
        break; // break, switch'ten çıkmayı sağlar.
      case 2:
        debugPrint("Salı"); // day 2 ise bu çalışır.
        break;
      case 3:
        debugPrint("Çarşamba"); // day 3 ise bu çalışır.
        break;
      default:
        debugPrint("Geçersiz gün"); // Hiçbir case eşleşmezse bu çalışır.
    }

    // 2.4 Döngüler
    debugPrint("\n2.4 Döngüler:");
    // Döngüler, bir kod bloğunu belirli bir koşula bağlı olarak tekrarlar.
    debugPrint("for döngüsü (1-5):");
    // for döngüsü, belirli bir aralıkta çalışır.
    // i = 1 (başlangıç), i <= 5 (koşul), i++ (her adımda 1 artar).
    for (int i = 1; i <= 5; i++) {
      debugPrint("Sayı: $i"); // 1’den 5’e kadar sayıları yazdırır.
    }

    int counter = 0; // Döngü için bir sayaç tanımlıyoruz.
    debugPrint("while döngüsü (0-2):");
    // while döngüsü, koşul true olduğu sürece çalışır.
    while (counter < 3) {
      debugPrint("Counter: $counter"); // 0’dan 2’ye kadar yazdırır.
      counter++; // Sayaç her döngüde 1 artar, aksi halde sonsuz döngü olur.
    }

    int value = 5; // Geri sayım için başlangıç değeri.
    debugPrint("do-while döngüsü (geri sayım):");
    // do-while döngüsü, en az bir kez çalışır, sonra koşulu kontrol eder.
    do {
      debugPrint("Değer: $value"); // 5’ten 1’e kadar geri sayar.
      value--; // Her döngüde değeri 1 azaltır.
    } while (value > 0); // value 0’dan büyük olduğu sürece devam eder.

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
    void greet(String personName) {
      debugPrint("Merhaba, $personName!");
    }
    greet("Ahmet");
    greet("Ayşe");

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
