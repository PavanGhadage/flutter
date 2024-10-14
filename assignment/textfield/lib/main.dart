import 'package:flutter/material.dart';

void main() {
  runApp(const Info());
}

class Info extends StatefulWidget {
  const Info({super.key});
  @override
  State createState()=> _InfoState();
}

class _InfoState extends State{
  TextEditingController nameController=TextEditingController();
  TextEditingController companyController=TextEditingController();
  String? name;
  String? company;
  List<Map> arr=[

  ];
  int index=0;

  
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("info"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:   Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border:OutlineInputBorder(
        
                    ),
                    hintText: "Enter name",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      
                    )
                  ),
                  
                ),
              
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: TextField(
                  controller: companyController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Companyname",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      
              
                    )
              
                  ),
                  
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
        
                onPressed: (){
                  name=nameController.text.trim();
                  company=companyController.text.trim();
                  
                  if(name!="" && company!=""){
                    arr.addAll({{"name":"$name", "company":"$company"}});
                    nameController.clear();
                    companyController.clear();
        
                    setState(() {
                      
                    });
                  }
        
        
                }, 
                child: const Text("submit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
        
                ),
                )
                ),
            ),
            Expanded(
              child: ListView.builder(
                
                itemCount: arr.length,
                shrinkWrap: true,
                 itemBuilder: (BuildContext context, int index) { 
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.blue,
                      
                      
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : ${arr[index]["name"]}"
                          ),
                          const SizedBox(height: 20,),
                          Text(
                            "Company Name :${arr[index]["company"]}"
                          )
                        ],
                      ),
                      
                    ),
                  );
                      
                   },
                
                      
              ),
            ),
        
            
            
              
        
        
                  
            
            
            
          ],
        ),
      ),
    );
  }

}

