// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:hastane_randevu_sistemi/Ekranlar/Randevu/RandevuAl/randevuAl_ekran.dart';
import 'Bilesenler/anasayfa_body.dart';

class AnasayfaEkran extends StatefulWidget {
  AnasayfaEkran({Key? key}) : super(key: key);

  @override
  State<AnasayfaEkran> createState() => _AnasayfaEkranState();
}

class _AnasayfaEkranState extends State<AnasayfaEkran> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, /// klavyeyi açınca ekrandaki piksel taşma hatalarını giderir/önler
      body: SingleChildScrollView(child: Body()), /// single da bunun(piksel taşması önleme) ile ilgili
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            "Hastane Randevu Sistemi",
          ),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context){
              return [
                const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Profilim"),
                ),

                const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Ayarlar"),
                ),

                const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Çıkış"),
                ),
              ];
            },
            onSelected:(value){
              if(value == 0){
                  print("Profilim menüsü seçildi.");
              }else if(value == 1){
                  print("Ayarlar menüsü seçildi.");
              }else if(value == 2){
                  print("Çıkış menüsü seçildi.");
              }
            }
          ),
        ],

      ),
      drawer: Drawer(backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.red),
              child: Column(
                children: [
                  Image.asset("assets/images/icon.png", cacheWidth: 50, cacheHeight: 50),
                  const SizedBox(height: 10),
                  const Text("HASTANE RANDEVU SİSTEMİ MENÜSÜ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ],
              ),
            ),
           
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text("Anasayfa"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.date_range_outlined),
              title: const Text("Randevular"),
              onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const RandevuAlEkran())),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text("Profil"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app_outlined),
              title: const Text("Çıkış"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}