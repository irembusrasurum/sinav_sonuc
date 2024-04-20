import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
      home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String mesaj = "Merhaba ilk uygulamam!";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

            int puan = 15;
            String mesaj = "";
            if (puan >= 50) {
              mesaj ="geçti";
            }
            else if (puan >= 40) {
              mesaj = "bütünleme";
            }
            else {
              mesaj = "kaldı";
            }
            var alert = AlertDialog(
              title: Text("Sınav sonucu"),
              content: Text(mesaj),
            );
            showDialog(context: context, builder: (BuildContext context)=>alert);
          },

          child : Text( "sonucu gör"),
        ),
      ),
    );
  }

}