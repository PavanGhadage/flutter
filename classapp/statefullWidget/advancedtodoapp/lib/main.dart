import 'dart:developer';

import 'package:advancedtodoapp/ToDomodelclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoApp(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});
  State createState() => _ToDoAppState();
}


class _ToDoAppState extends State {
  List<ToDoModel> ToDoList=[];
  TextEditingController DateController=TextEditingController();
  TextEditingController TitleController=TextEditingController();
   TextEditingController DescriptionController=TextEditingController();

   void submit( bool DoEdit, [ToDoModel? obj]){
    if(DateController.text.trim().isNotEmpty && TitleController.text.trim().isNotEmpty && DescriptionController.text.trim().isNotEmpty){
      if(DoEdit){
        obj?.title=TitleController.text;
        obj?.Description=DescriptionController.text;
        obj?.date=DateController.text;
        log("edit kar");
      }else{
        log("message");
      ToDoList.add(
        ToDoModel(title: TitleController.text, date: DateController.text, Description: DescriptionController.text)
      );
      }
      log("$ToDoList");
      DateController.clear();
      TitleController.clear();
      DescriptionController.clear();
      setState(() {
        
      }
      );
    }
   }
  void shoeBottompage(bool DoEdit, [ToDoModel? obj]){
  
   

    showModalBottomSheet(
      
      isScrollControlled: true,

      context: context,
      builder: (context)
      {
        return  Padding(
          padding:  EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create To-Do",
                style: GoogleFonts.quicksand(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                 ),),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text("title",
                style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 139, 148, 1),
              
               ),
               
               ),
               TextField(
               controller: TitleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue))
                ),
               ),
               const SizedBox(height: 10,),
                Text("Description",
              style: GoogleFonts.quicksand(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(0, 139, 148, 1),
          
             ),
             
             ),
             TextField(
             controller: DescriptionController,
              
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blue))
              ),
             ),
             const SizedBox(height: 10,),
              Text("date",
              style: GoogleFonts.quicksand(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(0, 139, 148, 1),
          
             ),
             
             ),
             TextField(
              controller: DateController,
              onTap: () async{
                    DateTime? pickedDate=await showDatePicker(context: context, firstDate: DateTime(2020), lastDate: DateTime(2024));
                    String datepick= DateFormat.yMMMd().format(pickedDate!);
                    setState(() {
                      DateController.text=datepick;
                    }
                    );
              },
              
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.calendar_month_outlined),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blue))
              ),
             ),
             SizedBox(height: 10,),
             Center(
               child: Container(
                height: 50,
                width: 300,
                 child: ElevatedButton(onPressed: (){
                  if(DoEdit==true){
                    submit(true,obj);
                  }
                  else{
                    submit(false);
                  }
                 
                  Navigator.of(context).pop();
                  
                 
                 }, 
                 style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll( Color.fromRGBO(0, 139, 148, 1),
                 )
                 ),
                 child: Center(
                   child: Text("submit",
                   style: GoogleFonts.quicksand(
                     fontSize: 20,
                     fontWeight: FontWeight.w700,
                     color: const Color.fromRGBO(255,255,255,1),
                   ),
                   ),
                 ),
                 
                 ),
               ),
             ),
                ],
              ),
            )
          ],
          ),
        );

      }

      );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 30),
            child: Text(
              "Good Morning",
              style: GoogleFonts.quicksand(
                fontSize: 22,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              "Pathum",
              style: GoogleFonts.quicksand(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 143),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text("CREATE TO DO LIST "),
                    ),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: ListView.builder(
                        itemCount: ToDoList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Slidable(
                            endActionPane:
                                ActionPane(motion: const ScrollMotion(), children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      //ToDoList[index]=TitleController.text as ToDoModel;
                                      TitleController.text =ToDoList[index].title;
                                      DescriptionController.text =ToDoList[index].Description;
                                      DateController.text =ToDoList[index].date;
                                      shoeBottompage(true,ToDoList[index]);
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                    
                                          ),
                                          child: const Icon(Icons.edit,color: Colors.white,),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      ToDoList.removeAt(index);
                                      setState(() {
                                        
                                      });
                                    },
                                    child: Container(
                                      width: 32,
                                      height: 32,
                                      decoration:const  BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromRGBO(89, 57, 241, 1),
                                      ),
                                          child: const Icon(Icons.delete,color: Colors.white,),
                                    
                                    ),
                                  ),
                                ],
                              )
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SvgPicture.asset(
                                            "assets/svg/Group 51.svg"),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                ToDoList[index].title,
                                                style: GoogleFonts.inter(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                ToDoList[index].Description,
                                                style: GoogleFonts.inter(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7)),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                 ToDoList[index].date,
                                                style: GoogleFonts.inter(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color.fromRGBO(
                                                        0, 0, 0, 0.7)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          shoeBottompage(false);
        },
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        shape: const CircleBorder(eccentricity: 1),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
