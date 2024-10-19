import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import './obj.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  @override
  State createState() => _ToDoAppState();
}




class color {
  List colorchange = [
    const Color.fromRGBO(250, 232, 232, 1),

 
    const Color.fromRGBO(232, 237, 250, 1),

     const Color.fromRGBO(250, 249, 232, 1),

      const Color.fromRGBO(250, 232, 250, 1),

      ];
}



class _ToDoAppState extends State {
   List <TodoApp> ToDoList =[
   

   ];
  TextEditingController TitleController=TextEditingController();
  TextEditingController DescriptionController=TextEditingController();
  TextEditingController DateController=TextEditingController();

  void submit(bool doEdit ,[TodoApp? obj2 ]){
    if(TitleController.text.isNotEmpty && DescriptionController.text.isNotEmpty && DateController.text.isNotEmpty){
      if(doEdit){
        obj2?.title=TitleController.text;
        obj2?.Description=DescriptionController.text;
        obj2?.date=DateController.text;

      }else{
      
       ToDoList.add(
       TodoApp(
      title:TitleController.text.trim(),
      Description: DescriptionController.text.trim(),
      date:DateController.text.trim(),
      ),
      
       );
      }
       TitleController.clear();
       DescriptionController.clear();
       DateController.clear();
      
       setState(() {
         
       });

    }
    

    
  }

  void shoeBottompage(bool doEdit ,[TodoApp? obj2 ]){
   

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
                    });
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
                  if(doEdit==true){
                    submit(true,obj2);
                  }else{
                  submit(false );
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
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "To-Do List",
             style: GoogleFonts.quicksand(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                  
              color:const  Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
          itemCount:ToDoList.length,// color().colorchange.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                   // margin: const EdgeInsets.all(9),
                    // width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: color().colorchange[index%4],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                height: 62,
                                width: 62,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child:Center(
                                  child: Container(
                                    height: 19.07,
                                    width: 23.79,
                                    child: 
                                    SvgPicture.asset("assets/svg/Group 42.svg",
                                  ),
                                    ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      ToDoList[index].title,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        ///color: Colors.black
                                      ),
                                    ),
                                  ),
                                 const  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      ToDoList[index].Description,
                                       style: GoogleFonts.quicksand(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        //color: Colors.black
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                            children: [
                              Text(
                                " ${ToDoList[index].date},",
                                 style: GoogleFonts.quicksand(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                       // color: const Color.fromARGB(255, 136, 62, 62)
                                      ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  TitleController.text=ToDoList[index].title;
                                  DescriptionController.text=ToDoList[index].Description;
                                  DateController.text=ToDoList[index].date;
                                  shoeBottompage(true,ToDoList[index]);
                                },
                                child: const Icon(
                                  Icons.edit,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  ToDoList.removeAt(index);
                                  setState(() {
                                    
                                  });
                                },
                                child: const Icon(
                                  Icons.delete,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                                                 ),
                         ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
         shoeBottompage(false);
          //getbottomsheet();
          },
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 150, 162, 150),
        ),
        
        
      
      
      
    );
  }
}
