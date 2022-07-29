import 'package:flutter/material.dart';

import '../../Anasayfa/anasayfa_ekran.dart';
import '../../Kayit/kayit_ekran.dart';

//! HASTA EKRANI BODY  //login_body.dart
// ignore: must_be_immutable
class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

//! KAYIT PARAMETRELERİ TUTUCULARI
  late String email, sifre;

//! DEĞİŞKEN FORM DURUMUNA GÖRE ANAHTAR
  final _formAnahtari = GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formAnahtari,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 25,),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 50),
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/icon.png"),
    
                ),
                const SizedBox(height: 20),
                const Text("Hasta Giriş Ekranına Hoş Geldiniz", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: (alinanMail) {
                    setState(() {
                      email = alinanMail;
                    });
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (alinanMail) {
                    return alinanMail!.contains("@") ? null : "Mail geçersiz";
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Mailiniz(E-Posta) :",
                    hintText: "Mailinizi giriniz. Örn: abc@mail.com",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onChanged: (alinanSifre) {
                    setState(() {
                      sifre = alinanSifre;
                    });
                  },
                  validator: (alinanSifre) {
                    return alinanSifre!.length >= 6 ? null : "En az 6 karakter";
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Şifreniz :",
                    hintText: "Şifrenizi giriniz. Örn: *1234-",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.person, color: Colors.black),
                  label: const Text("Giriş Yap", style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){ 
                   Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => AnasayfaEkran())); ///push: iteklemek demek. ilgili context(Widget ağacı) için ilgili route'a gidecek.
                    
                  }
                ),
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Henüz bir hesabın Yok mu?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => KayitEkran())),
                      child: const Text(
                        "Kaydol", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),
                      )
                    ),
                  ],
                ),
                const SizedBox(height: 10,)
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
