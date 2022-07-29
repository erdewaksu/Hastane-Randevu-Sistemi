// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RandevuAlBody extends StatefulWidget {
  const RandevuAlBody({Key? key}) : super(key: key);

  @override
  State<RandevuAlBody> createState() => _RandevuAlBodyState();
}

class _RandevuAlBodyState extends State<RandevuAlBody> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Randevu Seçimi Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              selectedDate == null 
                  ? "Seçtiğiniz randevu tarihi burada gözükecek" 
                  : DateFormat.yMMMd("tr_TR").format(selectedDate!).toString(),
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => selectDate(context), 
              child: const Text("Tarih Seç")
            ),
          ],
        ),
      ),
    );
  }

  Future selectDate(BuildContext context) async {
    DateTime initialDate = DateTime.now();
    DateTime firstDate = DateTime(DateTime.now().year - 10);
    DateTime lastDate = DateTime(DateTime.now().year + 10);

    final date = await showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: firstDate, 
      lastDate: lastDate
    );
    
    if (date != null) {
      setState(() {
        selectedDate = date;
      });
      
    }
  }
}