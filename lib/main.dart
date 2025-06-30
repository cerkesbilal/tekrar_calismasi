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
      body: Container(
        color: Colors.red,
        child: Text("Merhaba"*34),
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: 100,
          maxHeight: 200,
          maxWidth: 300,
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

      

*/