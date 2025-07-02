import 'package:flutter/material.dart';
import 'package:tekrar_calismasi/models/ogrenci.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasarimTekrar(),
    );
  }
}

class TasarimTekrar
    extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() =>
      _TasarimTekrarState();
}

class _TasarimTekrarState
    extends State<TasarimTekrar> {
  //seçilen şehri tutacağım bir değişkene ihtiyacım var.
  String secilenDeger = "";
  List<String> iller = [
    "ADANA",
    "ADIYAMAN",
    "AFYONKARAHİSAR",
    "AĞRI",
    "AMASYA",
    "ANKARA",
    "ANTALYA",
    "ARTVİN",
    "AYDIN",
    "BALIKESİR",
    "BİLECİKK",
    "BİNGÖL",
    "BİTLİS",
    "BOLU",
    "BURDUR",
    "BURSA",
    "ÇANAKKALE",
    "ÇANKIRI",
    "ÇORUM",
    "DENİZLİ",
    "DİYARBAKIR",
    "EDİRNE",
    "ELAZIĞ",
    "ERZİNCAN",
    "ERZURUM",
    "ESKİŞEHİR",
    "GAZİANTEP",
    "GİRESUN",
    "GÜMÜŞHANE",
    "HAKKARİ",
    "HATAY",
    "ISPARTA",
    "MERSİN",
    "İSTANBUL",
    "İZMİR",
    "KARS",
    "KASTAMONU",
    "KAYSERİ",
    "KIRKLARELİ",
    "KIRŞEHİR",
    "KOCAELİ",
    "KONYA",
    "KÜTAHYA",
    "MALATYA",
    "MANİSA",
    "KAHRAMANMARAŞ",
    "MARDİN",
    "MUĞLA",
    "MUŞ",
    "NEVŞEHİR",
    "NİĞDE",
    "ORDU",
    "RİZE",
    "SAKARYA",
    "SAMSUN",
    "SİİRT",
    "SİNOP",
    "SİVAS",
    "TEKİRDAĞ",
    "TOKAT",
    "TRABZON",
    "TUNCELİ",
    "ŞANLIURFA",
    "UŞAK",
    "VAN",
    "YOZGAT",
    "ZONGULDAK",
    "AKSARAY",
    "BAYBURT",
    "KARAMAN",
    "KIRIKKALE",
    "BATMAN",
    "ŞIRNAK",
    "BARTIN",
    "ARDAHAN",
    "IĞDIR",
    "YALOVA",
    "KARABüK",
    "KİLİS",
    "OSMANİYE",
    "DÜZCE",
  ];
  List<String> menuler = [
    "Home",
    "Settings",
    "Profile",
    "Basket",
  ];

  List<Ogrenci>
  tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
      id: index + 1,
      isim: "Öğrenci adı: ${index + 1}",
      soyisim: "Soyisim: ${index + 1}",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
            width: 5,
          ),
        ),
        child: GridView.count(
          crossAxisSpacing:
              20, //sütünlar arası boşluk
          mainAxisSpacing:
              40, //satırlar arası boşluk
          padding: EdgeInsets.all(12),
          crossAxisCount: 2,
          children: [
            sabitGridViewEleman(
              Colors.red,
            ),
            sabitGridViewEleman(
              Colors.green,
            ),
            sabitGridViewEleman(
              Colors.brown,
            ),
            sabitGridViewEleman(
              Colors.yellow,
            ),
            sabitGridViewEleman(
              Colors.blue,
            ),
            sabitGridViewEleman(
              Colors.purple,
            ),
          ],
        ),
      ),
    );
  }

  Column listviewSorunlari() {
    return Column(
      children: [
        Text("Listview başladı"),
        Expanded(
          flex: 8,
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors
                    .orange
                    .shade300,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                color: Colors
                    .blue
                    .shade300,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                color: Colors
                    .brown
                    .shade300,
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                color: Colors
                    .blue
                    .shade300,
              ),
            ],
          ),
        ),
        Text("Listview bitti"),
      ],
    );
  }

  ListView speratretorWidget() {
    return ListView.separated(
      itemCount: tumOgrenciler.length,
      separatorBuilder:
          (context, index) {
            return (index + 1) % 4 == 0
                ? Divider(
                    color: Colors.green,
                    thickness: 3,
                  )
                : Container();
          },
      itemBuilder: (context, index) {
        Ogrenci ogr =
            tumOgrenciler[index];
        return veriAlanSabitEleman(ogr);
      },
    );
  }

  SizedBox veriAlanSabitEleman(
    Ogrenci ogr,
  ) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color:
                  Colors.pink.shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(
                      10,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    child: Text(
                      ogr.id.toString(),
                    ),
                  ),
                  title: Text(ogr.isim),
                  subtitle: Text(
                    ogr.soyisim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox sabitEleman() {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors
                  .orange
                  .shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(
                      10,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  leading: Icon(
                    Icons.wb_sunny,
                    size: 36,
                    color: Colors.white,
                  ),
                  title: Text("28 °C"),
                  subtitle: Text(
                    "Ankara",
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sabitGridViewEleman(
    Color bgColor,
  ) {
    return Container(
      height: 150,
      color: bgColor,
      child: Text("Deneme"),
    );
  }
}

class OgrDetay extends StatelessWidget {
  final Ogrenci ogr;
  const OgrDetay({
    super.key,
    required this.ogr,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Text(
                "Öprenci id: ${ogr.id}",
              ),
              SizedBox(height: 8),
              Text(
                "Ögrenci isim: ${ogr.isim}",
              ),
              SizedBox(height: 8),
              Text(
                "Öprenci id: ${ogr.soyisim}",
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

/*
39)
38)SliverGrid
37)Dimanik SliverFixedExtentList
36)SliverPadding
35)Dimanik SliverList (SliverChildBuilderDelegated)
34)Statik SliverList ((SliverChildDelegated))
33)CustomScrollView ve SliverAppBar
32)GestureDetector
31)Gridview.builder => SliverGridDelegateWithFixedCrossAxisCount
30)Gridview.builder => SliverGridDelegateWithMaxCrossAxisExtend

29)Gridview.extent
Bu çeşit sabit bir veri çeşidir. burda ki fark ekran tasarımında ki farktır.Burda ise yatayda gelecek olan elemanı boyutuna yerleştirir. 


28)GridView.count
Bu çeşit sabit bir veri çeşidir. burda ki fark ekran tasarımında ki farktır. Burda ekrana yatayda kaç tane eleman geleceğini söyleriz:


 GridView.count(
          crossAxisSpacing:
              20, //sütünlar arası boşluk
          mainAxisSpacing:
              40, //satırlar arası boşluk
          padding: EdgeInsets.all(12),
          crossAxisCount: 2,
          children: [
            sabitGridViewEleman(
              Colors.red,
            ),
            sabitGridViewEleman(
              Colors.green,
            ),
            sabitGridViewEleman(
              Colors.brown,
            ),
            sabitGridViewEleman(
              Colors.yellow,
            ),
            sabitGridViewEleman(
              Colors.blue,
            ),
            sabitGridViewEleman(
              Colors.purple,
            ),
          ],
        ),

27)List Tasarım Sorunları
-Ben ekrana boş bir container oluşturduğumuzda burada ne olur parent ı kadar yayılır:

Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.green,
            width: 5,
          ),
        ),
      ),
Peki ben container child ına listview versem ne olacak? 

Listview tüm alanı kaplar çünkü parent i olan container tüm alanda.

Listview içine çocuğunu alsada yine de parent i kadar yer kaplamaya devam eder:

child: ListView(
          children: [
            Container(
              height: 200,
              color: Colors
                  .orange
                  .shade300,
            ),
          ],
        ),

 Eğer paranet ından daha büyük bir yapıya dönüşürse de scroll özelliğini devreye sokar. Yani container ile arasında çok temel bir fark var. 

 Ama ben şunu diyebilir hey listview sende çocukların kadar yer kapla :

  shrinkWrap: true, 

 Listview in bir boyut sınırlandırması olmadığı için column içine alırsanız patlama yapacaktır eleman ekleyince altına ya da üstüne. Bunu çözmenin yolu listview i expanded içine almaktır.     

26)ListView.seperatorBuilder

ListView.separated(
          itemCount:
              tumOgrenciler.length,
          separatorBuilder:
              (context, index) {
                return (index + 1) %
                            4 ==
                        0
                    ? Divider(
                        color: Colors
                            .green,
                        thickness: 3,
                      )
                    : Container();
              },
          itemBuilder: (context, index) {
            Ogrenci ogr =
                tumOgrenciler[index];
            return veriAlanSabitEleman(
              ogr,
            );
          },
        ),

25)ListView.builder

 ListView.builder(
          itemCount:
              tumOgrenciler.length,
          itemBuilder: (context, index) {
            Ogrenci ogr =
                tumOgrenciler[index];
            return veriAlanSabitEleman(
              ogr,
            );
          },
        ),

        Tıklanma tasarımı:
SizedBox veriAlanSabitEleman(
    Ogrenci ogr,
  ) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color:
                  Colors.pink.shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(
                      10,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(
                      MaterialPageRoute(
                        builder:
                            (
                              context,
                            ) => OgrDetay(
                              ogr: ogr,
                            ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    child: Text(
                      ogr.id.toString(),
                    ),
                  ),
                  title: Text(ogr.isim),
                  subtitle: Text(
                    ogr.soyisim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

Detay Sayfası:





24)Statik Listview ve List.generated
Listview eğer bir yapıyı tekrar tekrar yazdırıyorsanız kullanmalıyız. Bu sabit olduğu için bununla farklı sayfa tasarımlarını da listeyebiliriz.  

Örnek:

Bir tane öğrenci sınıfı oluşturdum:

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci({
    required this.id,
    required this.isim,
    required this.soyisim,
  });
}

Daha sonra veri grubumuz olsun diye liste sınıfının generate metodunu kullanarak veri grubu oluşturdum örnekte içinde 5000 tane veri tutan tüm öğrenciler listesi oluştur:

List<Ogrenci>
  tumOgrenciler = List.generate(
    5000,
    (index) => Ogrenci(
      id: index + 1,
      isim: "Öğrenci adı: ${index + 1}",
      soyisim: "Soyisim: ${index + 1}",
    ),
  );

  Daha sonra bunu list isteyen listview kısmında kullanmam lazım ama bir sorunum var? Listview benden widget türünde bir liste isterken bende öğrenci türünde liste var. listenin türünü değiştirmek için map metodunu kullanmamız gerekiyor:

   ListView(
          children: tumOgrenciler
              .map(
                (
                  Ogrenci oankiOgrenci,
                ) =>
                    veriAlanSabitEleman(
                      oankiOgrenci,
                    ),
              )
              .toList(),
        ),

  verialansabiteleman metodumuz bizden öğrenci parametresi istiyor bizde bunu mapten alarak ona gönderiyor ekrana yazdırıyoruz:

  SizedBox veriAlanSabitEleman(
    Ogrenci ogr,
  ) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors
                  .orange
                  .shade100,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(
                      10,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(
                      ogr.id.toString(),
                    ),
                  ),
                  title: Text(ogr.isim),
                  subtitle: Text(
                    ogr.soyisim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }




23)SingleChildScrrolView
Column ya da row yapılarının taşmasını önlemek için kullanılır. 

22)Card ve ListTile:

 SizedBox(
              height: 90,
              width: 420,
              child: Card(
                color: Colors
                    .orange
                    .shade100,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(
                        10,
                      ),
                ),
                child: Align(
                  alignment:
                      Alignment.center,
                  child: ListTile(
                    leading: Icon(
                      Icons.wb_sunny,
                      size: 36,
                      color:
                          Colors.white,
                    ),
                    title: Text(
                      "28 °C",
                    ),
                    subtitle: Text(
                      "Ankara",
                    ),
                    trailing: Icon(
                      Icons
                          .arrow_forward,
                      color:
                          Colors.white,
                    ),
                  ),
                ),
              ),
            ),

21)AppBar:

AppBar(
        centerTitle: false,
        leading: Icon(Icons.menu),
        title: Column(
          children: [
            Text(
              "Tasarım Tekrar",
              style: Theme.of(
                context,
              ).textTheme.displaySmall,
            ),
            Text(
              "Tasarım Tekrar",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.pink,
      ),

20)PopUp Menü: Genellikle appbar ın actions kısmına tanımlanır. açılır bir menüdür.

actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return menuler
                  .map(
                    (
                      String gelenMenu,
                    ) => PopupMenuItem(
                      child: Text(
                        gelenMenu,
                      ),
                      value: gelenMenu,
                    ),
                  )
                  .toList();
            },
            onSelected: (value) {
              secilenDeger = value;
            },
          ),
        ],



19)DropDownbutton
-Mutlaka statefull widget içerisinde tanımlanmalı. 
-Açılır bir yapıdadır. Formlarda sık sık kullanılır örnek şehir seçimi. 
-Burdan aldığımız veriyi başka yerlerde kullanabilmek için global alana String türünde bir değişken tanımlıyorum ve bunun ilk değerine null atıyorum:

String? secilenSehir = null;

-String değeri "" yaparsanız patlar buraya ya var olan value lerden biri yazmalısınız ya da null yazmalısınız null yazarsanı dropdownbutton ın hint özelliğinde vereceğiniz text i direk varsayılan yazı olarak gösterir.

-Eğer ekran değişimini görmek istiyorsanuz onchange işlemini setstate ile yapmalısınız ve dropdownbutton un value değerine başta tanımladığınız değişkeni vermelisiniz:

DropdownButton<String>(
          value: secilenSehir,
          hint: Text("Şehir seçiniz"),
          items: [
            DropdownMenuItem(
              //Görünen kısım
              child: Text(
                "Ankara Şehri",
              ),
              //Arka planda alınan kısım
              value: "ankara",
            ),

            DropdownMenuItem(
              //Görünen kısım
              child: Text(
                "İstanbul Şehri",
              ),
              //Arka planda alınan kısım
              value: "istanbul",
            ),

            DropdownMenuItem(
              //Görünen kısım
              child: Text(
                "Bursa Şehri",
              ),
              //Arka planda alınan kısım
              value: "bursa",
            ),
          ],
          onChanged: (secilenDeger) {
            setState(() {
              secilenSehir =
                  secilenDeger;
            });
          },
        ),
----------------------------------------
DropdownButton<String>(
          /*underline: Divider(
            color: Colors.black,
            thickness: 3,
          ),*/
          /*style: TextStyle(
            color: Colors.red,
            fontSize: 18,
          ),*/
          /* icon: Icon(
            Icons.arrow_downward,
          ),*/
          value: secilenSehir,
          hint: Text("Şehir seçiniz"),
          items: iller
              .map(
                (String oankiIl) =>
                    DropdownMenuItem(
                      child: Text(
                        oankiIl,
                      ),
                      value: oankiIl,
                    ),
              )
              .toList(),
          onChanged: (secilenDeger) {
            setState(() {
              secilenSehir =
                  secilenDeger;
            });
          },
        ),



18)Visbility ve Opacity
Visibility: Kaybolacak olan objenin alanınında yok olmasını istersen yani objenin gizlenmesi değilde yok olmasını istiyorsan kullanılır

 Visibility(
              visible: isVisibility,
              child: Container(
                height: 180,
                width: 180,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisibility =
                      !isVisibility;
                });
              },
              child: Text(
                "Görünür Yap",
              ),
            ),

Opacity: objenin sadece görünümü yok olur yeri sabit kalır.

Opacity(
              opacity: isVisibility
                  ? 1
                  : 0,
              child: Container(
                height: 180,
                width: 180,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisibility =
                      !isVisibility;
                });
              },
              child: Text(
                "Görünür Yap",
              ),
            ),

17)Butonlar
Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            //TextButton
            TextButton(
              onPressed: () {},
              child: Text(
                "Text Button",
              ),
            ),

            //TextButton.icon
            TextButton.icon(
              onPressed: () {},
              label: Text(
                "Text and Icon button",
              ),
              icon: Icon(Icons.add),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Elevated Button",
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text(
                "Elevated ve Icon",
              ),
              icon: Icon(Icons.menu),
            ),

            OutlinedButton(
              onPressed: () {},
              child: Text(
                "OutlinedButton",
              ),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              label: Text(
                "Outlined ve Icon",
              ),
              icon: Icon(
                Icons.abc_outlined,
              ),
            ),
          ],
        ),
      ),

16)
İntrinSicHeight: Eğer bir rowunuzda resimler yanyana ama yükseklikleri eşit değilse çok çirkin ve responsive olmayan bir görüntü oluşur. bunu en büyük resme göre diğerlerini ayarla demek için kullanırız. 

 Container(
          height: 300,
          width: 300,
          child: Placeholder(
            color: Colors.red,
          ),
        ),


FadeinImage, intrinsicheight, placeholder
FadeinImage: İnternetten veri çekerken hata olma ya da uzun sürme işlemlerinden kaynaklı durumlar için bir placeholder alanı koyabildiğimiz resim ekleme türüdür. Dikkat!!! sadece network image işlemleri için kullanılır. 

"https://e7.pngegg.com/pngimages/328/2/png-clipart-pet-kitten-kitty-kitten.png",

c)Placeholder: Uygulamada bir resim koyacaksınız ama o işlemi şuan yapmak istemiyorsanız buraya resim gelecek anlamına gelir. 


15)Resim Ekleme:
- Uygulamamıza eklediğimiz resim klasörü mutlaka lib in dışında olmalı. Yani lib, android, iso gibi dosyalarla aynı sırada olmalı
-Oluşturduğunuz klasör isminde asla boşluk ya da türkçe karakter olmamalı.
-uses-material-design: true yapısı ile aynı hizada:
flutter:
  uses-material-design: true
  asset:
    resimler/
şeklinde tanımlanmalı hiza çok önemli

-eğer bunu eklediysen mutlaka uygulamayı durdurmalısın.Comand(Ctrl) + s ve ok ile pub get yaplmalı (ve her harf değişikliği(resim isimi değiştirilirken ya da yeni resim klasöre eklenirken yukarıdaki işlem tekrar yapılmalı))

-Resim getirme işlemleri türlerine göre 2 ye getirilme şekillerine de göre de 2 ye ayrılır:

-İstenilen veri türülü Widget
a)Image.asset("url")//dosya çağırırken
b)Image.network("url")//internetten çağırırken
-İstenlen veri türü ImageProvider ise
a)AssetImage("url")//dosya çağırırken
b)NetworkImage("url")//internetten çağırırken


SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                "resimler/kedi.jpg",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 220,
              width: 220,
              child: Image.network(
                "https://e7.pngegg.com/pngimages/630/209/png-clipart-cat-animal-cat.png",
              ),
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "resimler/kedi.jpg",
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://e7.pngegg.com/pngimages/630/209/png-clipart-cat-animal-cat.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),



14)BuildContext: bir uygulamanın üstündeki yapılarla ileşimini sağlar. 
13)Statefull ve setstate:
TextEditingControlller controller = TextEditingControlller();

-Bütün oluşturma işlemlerini initstate de yapmalısınız.
-Eğer silinebilen bir yapıdaysa o zamanda dispose içine yazıcaz.

12)MaterialApp ve Theme:
MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          displaySmall: TextStyle(
            color: Colors.white,
          ),
        ),
        //brightness: Brightness.dark,
        elevatedButtonTheme:
            ElevatedButtonThemeData(
              style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors
                            .pink
                            .shade200,
                    foregroundColor:
                        Colors.brown,
                  ),
            ),
        primarySwatch: Colors.pink,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      home: TasarimTekrar(),
    );
Bir uygulamanın kök dizininde bulunan ilk yapısıdır.

11)Padding:Bir widget parent ı ile olan boşluğu belirler. 

10)Spacer: Objeler arasına oluşabilecek en çok boşluğu bırakarak kaydırır.

9)SizedBox:İki görevi vardır. Birincisi boşluk bırakma ikincisi olçüleri olmayan widgetları boyutlandırma:

Container(
       
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            SizedBox(width: 50,),
             Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ],
        ),
        SizedBox(height: 25,),
          SizedBox(
            height: 65,
            width: 200,
            child: Card(
              color: Colors.green,
              child: Text("Selam"),
            ),
          )
          ]
        ),
    )


8)Positioned: Genellikle stack içindeki çocukları konumlandırmak için kullanılır. :

Stack(
          alignment: AlignmentDirectional.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.pink,
            ),
             Positioned(
              top: -40,
               child: Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.green,
               ),
               height: 100,
               width: 100,
               ),
             )
          ],
        ),
      )

7)Align: Eğer bir widget ı parent ına göre konumlandırmak istersek kullanılır aşağıdaki örnekte container ı parent ı olan Scaffold a göre bottom center da konumlandırdık:

 Align(
      alignment: Alignment.bottomCenter,
        child: Container(
          alignment: Alignment.bottomCenter,
          height: 140,
          width: 430,
          color: Colors.amber,
          child: Text("Selam"),
        ),
      ),


6)Flexible: Expanded gibi taşma sorunlarında kullanılan diğer bir yapıdır. Flexible eğer taşma yoksa verilen değerleri uygular. Eğer taşma yoksa daima verilen ölçü önemlidir. Flex taşma yoksa çalışmaz. Eğer taşma varsa ölçüler devre dışı kalır sadece flex yönetir.

Expanded ile flex arasındaki en önemli fark expanded i daime flex yönetir ve boşlukları doldurur flexible ise taşma olmadığı sürece boşlukları doldurmaz ölçüleri dinler taşma varsa flex devreye girer.


5)Expanded: Bu yapı hem ekranı responsive paylaşmaya hem de taşma hatalarını gidermeye yarar. Kendisi alanı aralarında paylaştırır. flex özelliği ile oranlama yapılır. Bu ifade çocuklar alan yapılarda kullanılır(row, column)

Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 125,
                width: 175,
                color: Colors.yellow,
              ),
            ),
          Expanded(
              child: Container(
                height: 125,
                width: 175,
                color: Colors.blue,
              ),
            ),
            Expanded(
              child: Container(
                height: 125,
                width: 175,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                height: 125,
                width: 175,
                color: Colors.brown,
              ),
            ),

          ],
        ),
      )

      Alan paylaşmı için kullanılır.

4)Stack: Üst üste yapılar kullanmak için vardır:

children ve clipBehavior özellikleri vardır. Clip.none dediğinizde artık o eleman stack i terk edebilir. tasarım da önemlidir.

Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              color: Colors.red,
              height: 300,
               width: 300,),
            Positioned(
              top: -40,
              left: 100,
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
                ),
              
                height: 100,
                 width: 100,
              ),
            ), 
          ],
        ),
3)Column: Elemanları dikeyde sıralamak için kullanılır. 

Container(
    
        width: 300,
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.cyan,
              width: 100,
              height: 100,
            )
          ],
        ),
      )
2)Row:Container child aldığı için tek eleman alabiliyor ama bize bazen birden fazla elemanı aynı anda ekleyebilmeye ihtiyacımız var. Eğer bu elemanları yatayda yan yana koymak istiyorsak row kullanılır. 
-Row un üç tane önemli parametresi var:

A)children : içerisine yan yana dizdiğimiz elemanları koyarız:

Row(
          children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text("Selam"),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: Text("Selam"),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.purple,
            child: Text("Selam"),
          )
        ],)
      ),
B)MainAxisSize: row un alanını belirler. Varsayılan olarak max dır yani yatayda her yeri kaplar. min yaparsak sadece çocukları kadar yer kaplar

C)MainAxisAlignment: elemanların row içinde nasıl dizilmesi gerektiğini söyler. !!! MainAxisSize.max olmak zorunda. Betweeni Around, Evenly gibi parametreleri vardır:

Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
d)CrossAxisAligment: Row a ters bir etki yarattırır yani dikeyde sıralamayı sağlar.
-----------------------------------------
1)Container:
-Kutu anlamına gelir. 
-Container eğer çocuğu yoksa parent kadar yer kaplar. Eğer çocuk atamıyorsan mutlaka en boy vermek zorundasın.
 body: Container(
        color: Colors.red,
      ),

      body: Container(
        height: 200,
        color: Colors.red,
      ),
-Eğer bir çocuk veriyorsanız onun kadar yer kaplar. Ama onun kadar da yer kaplamasını istemiyorsan en boy vermelisin.
 body: Container(
        color: Colors.red,
        child: Text("Merhaba"),
      ),

-Bir container içindeki çocuğun konumunu belirtebilirsiniz.      
Container(
        //alignment: Alignment(1,-1),
        alignment: Alignment.centerLeft,
        height: 80,
        width: 200,
        color: Colors.red,
        child: Text("Merhaba"),
      ),

Eğer bir container a boyut vermediysek aligment özelliği var ise çocuğu olsa da alanı parent kadardır. Yani burada tüm alanı kaplayacak

 body: Container(
        //alignment: Alignment(1,-1),
        alignment: Alignment.centerLeft,
        color: Colors.red,
        child: Text("Merhaba"),
    
      ),

      Bunu istemiyorsak en ya da boy vermeliyiz. Hangisini verirsek vermediğimiz o yönde yayılır. 

-Ben container içindeki veri kadar değil ama sabit en boy kadar alan belirlemek istiyorsam. 

Container(
        color: Colors.red,
        child: Text("Merhaba"*34),
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 200,
          maxWidth: 300,
        ),
      ),
-margin:container ın dışındaki elemanlar ile arasındaki mesafeyi belirtir.


 Container(
        margin: EdgeInsets.only(top: 40,left: 20),//belli yerden özelleştirme
        //EdgeInsets.symmetric(horizontal: 50,vertical: 100),eksen boşluğu verir yatay ve dikey
        //EdgeInsets.all(12), her yönden
        color: Colors.red,
        height: 200,
        width: 200,
        child: Text("Bilal"),
        
      ),

-padding: içteki elemanların container ile arasındaki mesafeyi belirtir.Marginde ki EdgeInsets sınıfı hep ortaktır. eğer container in mesela bir width değeri yoksa ve sen yatay eksende padding verirse container büyür. Ama eğer sınır verdiysen ve sığmıyorsa child in şeklini bozar yine de sığdırır. 
      Container(
        padding: EdgeInsets.all(20),
        color: Colors.red,
        height: 200,
        width: 200,

        child: Text("Bilal"),
        
      ),
-eğer bir container içine çocuğu olarak container koyduysanız o çocuğun en boy değeri önemli değildir

 Container(
        color: Colors.red,
        height: 300,
        width: 300,
        child: Container(
          color: Colors.blue,
          height: 100,
          width: 100,
         
        ),
      ),
      Bu kodda heryer mavi olur yani çocuk tüm alana yayılır eğer o verdiğimiz 100 e 100 lük değerlerin görünmesini istersek parent olan kırmızı container a alignment vermek gerekir. Çünkü çocuk şuan nereye konumlanacağını bilmediği için tüm alanı kaplıyor:

      Container(
      alignment: Alignment.center,
        color: Colors.red,
        height: 300,
        width: 300,
        child: Container(
          color: Colors.blue,
          height: 100,
          width: 100,
         
        ),
      ),

Center: içine aldığı çocuğu ortalamaya yarar ama dikkat eğer içine aldığı yapı çocuklar alan bir yapı ise sadece yatayda ya da dikeyde ortalar.

Center(
        child: Container(
          color: Colors.red,
          height: 300,
          width: 300,
        ),
      ),

Container şekillendir: bunun için decoration parametresi var içine BoxDecoration alır

-decoration: BoxDecoration(),

eğer bunu tanımladıysan artık dışarıda renk tanımlayamazsın hata alırsın decoration içerisinde renk tanımlamalısın.

shape: containerin şeklini belirler var sayılan rectangle dır biz bunu circle yapabiliriz istersek:

  shape: BoxShape.circle

border: container a çerçeve verir. 3 çeşidi vardır:

border: Border(top: BorderSide(color: Colors.green, width: 2))//her yön için ayrı verilebilir


border: Border.all(color: Colors.black, width: 4),//Her yere aynı çerçeve verilir.

border: Border.symmetric(vertical: BorderSide(color: Colors.purple, width: 5,),horizontal: BorderSide(color: Colors.black, width: 5))//eksen anlamında çerçeve verir

borderRadius: çerçeveye yuvarlaklık verir.

borderRadius: BorderRadius.all(Radius.circular(10)),//Her yerden aynı yuvarlak etkisini verir


  borderRadius: BorderRadius.circular(15),//Her yerden aynı yuvarlak etkisini verir daha kısa yoldur.

  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(10))

  borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))

  image: Containerin arka planı olarak resim ekleyebiliriz. bunu decoration için de yapmak zorundasınız. Dikkat Direk image veremezsiniz DecorationImage() sınıfının image prametresine imageProvider vermek zorundasınız:


decoration: BoxDecoration(
            image: DecorationImage
            (
              opacity: 0.2,
              fit: BoxFit.cover,
              image:NetworkImage("https://static3.depositphotos.com/1006065/229/i/450/depositphotos_2299392-stock-photo-cat.jpg")),

shadow:
decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
//Eğer shadow verecekseniz bir arka olan renginizin olması gerekir eğer yoksa shadow rengi arka planıda kaplar.blurRadius gölge şiddeti, ofsett gölge yönü
                color: Colors.black54,
                blurRadius: 20,
                offset: Offset(3, 3)    
              )
            ],
gradient: Renk geçişi yapmamızı salar. decoration içerisinde tanımlanmalıdır. içine LinearGradient alır. Bunun üç önemli parametresi vardır. colors: renk listesi alır. begin: rengin nerden başlayacağı, end: rengin nerede biteceği

  gradient: LinearGradient(colors: [
             const Color.fromARGB(255, 2, 90, 242),
             const Color.fromARGB(255, 36, 123, 200),
             Colors.blue.shade300 
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            ),           
 
*/

//Container- BoxDecoration-Şevval
//Column, Row - Nergiz
//Text - Kemal
//TextField - Beyza
//Resim ekleme türleri - Begüm
//Boyutlandırma Araçları(Expanded, Flexible, SizedBox, Spacer)- Safiye
//Button ve button tasarımı - Ataberk
//Navigator ve veri aktarımı - Onur
//Align, Slider, Divider, CirculAvatar - Erkan
//Radio, checkbox - Mehmet
//Listview - Yusuf Tuncat
//Gridview - Aydanur
//Card, ListTile, Center - Efe Gerek
//Forms(textformfield, validate) - Muhammed
//Tabbar - Uğur
//Bottom navigator bar - Yusuf Berke
//Drawer - Yasin
//alert - Osman
//Snackbar - Umut
//Appbar - Ali
//Align, Positioned, Stack - Meriç
//MaterialApp - Ahmet
//stateless ve statefull ve setstate ve initstate - Ensar
//Dropdownbutton ve popummenu - Metehan
