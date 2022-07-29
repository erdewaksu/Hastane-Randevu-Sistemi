// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 610,
              child: Column(
              children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.white,
                      height: 100,
                      width: 500,
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 500,
                    ),
                  ),
                ],
                  ),
            ),
        Container(
          alignment: Alignment.center,
          height: 580,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 30,),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      child: Image.asset("assets/images/icon.png"),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Kullnıcı_Adı"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Kullanıcı_Soyadı"),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              const Divider(
                color: Colors.white,
                height: 1.5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("RANDEVULARIM"),
                ],
              )

            ],
          ),
        ),
      ],
    );    
  }
}
