import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  ProfilePage2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "PROFİL BİLGİLERİ", style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  child: Image.asset("assets/images/icon.png"),
                ),
              ),
              SizedBox(width: 20,),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Adı"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Ek Bilgi - 1"),
                  ),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Soyadı"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Ek Bilgi - 2"),
                  ),
                ],
              ),
            ],
          ),
        ),
 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Divider(color: Colors.black, height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "RANDEVULARIM", style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 300,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                alignment: Alignment.center,
                child: Text("Randevu"),
              ),
              Container(
                height: 100,
                width: 300,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                alignment: Alignment.center,
                child: Text("Randevu"),
              ),
              Container(
                height: 100,
                width: 300,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                alignment: Alignment.center,
                child: Text("Randevu"),
              ),
              Container(
                height: 100,
                width: 300,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                alignment: Alignment.center,
                child: Text("Randevu"),
              ),
            ],
          ),
        ),
        SizedBox(height: 50, width: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Divider(color: Colors.black, height: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Ek Bilgiler", style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            )
          ),
          alignment: Alignment.center,
          child: Text("Ek bilgiler eklenildiğinde burada gözükecek")

        ),
      ],
    );
    
  }

}
