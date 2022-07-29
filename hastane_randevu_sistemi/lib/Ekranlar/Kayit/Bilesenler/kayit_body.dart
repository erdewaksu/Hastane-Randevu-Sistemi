import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hastane_randevu_sistemi/Ekranlar/Giris/giris_ekran.dart';

import '../../Anasayfa/anasayfa_ekran.dart';


///import 'package:hastane_randevu_sistemi_v2/service/auth.dart';

//! HASTA EKRANI BODY  //login_body.dart
class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  

//! KAYIT PARAMETRELERİ TUTUCULARI
  late String /*ad, soyad,*/ email, sifre;

//! DEĞİŞKEN FORM DURUMUNA GÖRE ANAHTAR
  //final _formAnahtari = GlobalKey();
  final _formAnahtari = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        key: _formAnahtari,
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 25,),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 50), ///padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/icon.png"),
                    ),
                    const SizedBox(width: 10),
                    const Text("Hasta Kayıt Ekranına Hoş Geldiniz", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                /*
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (alinanAd) {
                    setState(() {
                      ad = alinanAd;
                    });
                  },
                  validator: (alinanAd) {
                    return alinanAd!.length >= 2 ? null : "En az 2 karakter";
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Adınız :",
                    hintText: "Adınızı giriniz. Örn: Ayşe veya Ali",
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (alinanSoyad) {
                    setState(() {
                      soyad = alinanSoyad;
                    });
                  },
                  validator: (alinanSoyad) {
                    return alinanSoyad!.length >= 2 ? null : "En az 2 karakter";
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Soyadınız :",
                    hintText: "Soyadınızı giriniz. Örn: Ayşe veya Ali",
                    border: OutlineInputBorder()
                  ),
                ),
                */
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (alinanMail) {
                    setState(() {
                      email = alinanMail;
                    });
                  },
                  validator: (alinanMail,) {
                    return alinanMail!.contains("@") ? null : "Mail geçersiz!";
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Mailiniz(E-Posta) :",
                    hintText: "Mailinizi giriniz. Örn: abc@mail.com",
                    errorStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  onChanged: (alinanSifre) {
                      sifre = alinanSifre;
                  },
                  validator: (alinanSifre) {
                    return alinanSifre!.length >= 6 ? null : "En az 6 karakter girmelisiniz";
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Şifreniz :",
                    hintText: "Şifrenizi giriniz. Örn: *1234-",
                    errorStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  icon: const Icon(Icons.person, color: Colors.black),
                  label: const Text("Kaydol", style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: (){ 
                    kayitOl(context);
                  }
                ),
                const SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Zaten bir hesaba sahip misin?", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                    const SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => GirisEkran())),
                      child: const Text(
                        "Giriş Yap", 
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

  void kayitOl(BuildContext context) {
    if (_formAnahtari.currentState!.validate()) { 
      FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: sifre).then((user) {
    
        //! Başarılıysa anasayfaya git
        Navigator.push(context, MaterialPageRoute(builder: (_) => AnasayfaEkran()));
        setState(() => Fluttertoast.showToast(msg: "Kayıt Başarılı"));
    
      }).catchError((hata) {
    
        //! Başarılı değilse hata mesajı göster. 
        Fluttertoast.showToast(msg: hata);
      });
    }
  }
}
