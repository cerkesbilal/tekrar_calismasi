import 'package:flutter/material.dart';

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

class TasarimTekrar extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() => _TasarimTekrarState();
}

class _TasarimTekrarState extends State<TasarimTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Tekrar"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container( 
          alignment: Alignment.center,
          child: Text("Osman Pazarlama"),
          height: 200,
          width: 200,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage
            (
              opacity: 0.2,
              fit: BoxFit.cover,
              image:NetworkImage("https://static3.depositphotos.com/1006065/229/i/450/depositphotos_2299392-stock-photo-cat.jpg")),
 
            //shape: BoxShape.circle,
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))

          ),
        ),
      ),
    );
  }
}

/*
Container:
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

              
 
*/