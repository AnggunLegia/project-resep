import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pemanasan/admin/home/homeAdmn.dart';
import 'package:uuid/uuid.dart';

class PageAddData extends StatefulWidget {
  const PageAddData({super.key});

  @override
  State<PageAddData> createState() => _PageAddDataState();
}

class _PageAddDataState extends State<PageAddData> {
   String? _selectedValue;
  final _formkey = GlobalKey<FormState>();
  final nama = TextEditingController();
  final email = TextEditingController();
  final kelas = TextEditingController();
  final date = TextEditingController();
  final lapor = TextEditingController();
   formlapor()async{
    try{
      var uuid=Uuid();
      String id = uuid.v4();
       await FirebaseFirestore.instance.collection("lapor").doc(id).set({
        "uid": id,
    "nama": nama.text, 
    "kelas": kelas.text, 
    "email":email.text,
    "date": date.text,
    "lapor": lapor.text,
    // "kategori": _selectedValue
  });
   Navigator.push(context, MaterialPageRoute(builder: (_)=>PageHomeAdmn()));
    }catch (e) {
   

 ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text(e.toString())
    ),
    );

  
  
}
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Center(
          child: Text("Resep Kita", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 163, 126, 126)
          )),
        ),
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 245, 128, 183),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child:Container(
             padding: EdgeInsets.all(20.0),
                child: Column(
                children: [
                   TextFormField(
                      maxLength: 30,
                       controller: nama,
                       
                      validator: ( value) {
                        if(value!.isEmpty){
                          return 'Enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Contoh: Budi Doremi",
                        labelText: "Nama Lengkap",
                         icon: Icon(Icons.person),
                         border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)
                      ),
                      ),
                    ),
                     TextFormField(
                      maxLength: 20,
                      controller: kelas,
                      validator: ( value) {
                        if(value!.isEmpty){
                          return 'Enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Contoh: 12 RPL 1",
                        labelText: "Kelas",
                         icon: Icon(Icons.apartment_rounded),
                         border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)
                      ),
                      ),
                    ),
                    TextFormField(
                      controller: date ,
                     validator: ( value) {
                        if(value!.isEmpty){
                          return 'Enter some text';
                        }
                        return null;
                      },
                      
                      decoration: InputDecoration(
                        hintText: "Contoh: budi234@gmail.com",
                        labelText: "Date",
                         icon: Icon(Icons.date_range_outlined),
                         border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      
                      ),
                      ),
                    ),
                     Padding(padding: EdgeInsets.all(10)),
                     TextFormField(
                      controller: email ,
                     validator: ( value) {
                        if(value!.isEmpty){
                          return 'Enter some text';
                        }
                        return null;
                      },
                      
                      decoration: InputDecoration(
                        hintText: "Contoh: budi234@gmail.com",
                        labelText: "Email",
                         icon: Icon(Icons.email_outlined),
                         border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      
                      ),
                      ),
                    ),
                     Padding(padding: EdgeInsets.all(10)),
                    TextFormField(
                      maxLines: 4,
                      controller: lapor,
                      validator: ( value) {
                        if(value!.isEmpty){
                          return 'Enter some text';
                        }
                        return null;
                      },
                      
                      decoration: InputDecoration(
                        
                        labelText: "Laporan",
                         icon: Icon(Icons.assignment_rounded),
                         border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)
                      ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10)),

            DropdownButtonFormField<String>(
              
              decoration: InputDecoration(
                labelText: 'Select Option',
                border: OutlineInputBorder(),
              ),
              value: _selectedValue,
              onChanged: (newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
              items: <String>['Chinese', 'Indonesian', 'Japan', 'Korean', 'Dessert', 'Drink']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select an option';
                }
                return null;
              },
            ),
            
                    ElevatedButton(
                      
                      onPressed: () {
                        if
                          (_formkey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Data berhasil di kirim")),);
                              // formlapor();
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PageHomeAdmn()));
                          }
                        // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Page14()));
                        _formkey.currentState!.validate();
                      }, 
                      style: ElevatedButton.styleFrom(
                        // primary: Color.fromARGB(255, 238, 204, 104),
                        
                      ),
                      
                      child: Text("Submit",
                      style: TextStyle(fontSize: 20,
                      color: Colors.black),),  
      
                      ),
                    
                ],
                ),
          ) ,
        ),
      ),
    );
  }
}