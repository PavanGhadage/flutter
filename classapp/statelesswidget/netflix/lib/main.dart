import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}
class movies{
List movieList =[
  {
    "catogary":"Action Movies",
    "url":["https://baconsale.com/wp-content/uploads/2020/05/extraction_baconbit.jpg?w=640",
    "https://c.saavncdn.com/765/Dabangg-Hindi-2010-20221211114032-500x500.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTM3ZGUwYTEtZTI5NS00ZmMyLTk2YmQtMWU4YjlhZTI3NjRjXkEyXkFqcGc@._V1_QL75_UX190_CR0,8,190,281_.jpghttps://m.media-amazon.com/images/M/MV5BMTM3ZGUwYTEtZTI5NS00ZmMyLTk2YmQtMWU4YjlhZTI3NjRjXkEyXkFqcGc@._V1_QL75_UX190_CR0,8,190,281_.jpg",
    "https://assetscdn1.paytm.com/images/cinema/Devara-608x800-87e29260-7834-11ef-ad27-dfa11df60ee4.jpg?format=webp&imwidth=322"]
  },
  {
    "catogary":"Love Movies",
    "url":[
      "https://www.americanbazaaronline.com/wp-content/uploads/2015/09/Salman-as-Prem.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROqiB0DouJVmr2tPvI_KUeGdWyeghrHGQMgQ&s",
      "https://images-eu.ssl-images-amazon.com/images/I/71m3wyPus7L._AC_UL600_SR600,600_.jpg",
      "https://upload.wikimedia.org/wikipedia/en/thumb/e/e6/Zero_official_poster.jpg/220px-Zero_official_poster.jpg",
    ]
  },
  {
    "catogary":"International Tv Shows",
    "url":[
      "https://static1.srcdn.com/wordpress/wp-content/uploads/2021/08/ENUS-LCDP-S5-Main-Vertical-RGB-PRE.jpg",
      "https://asset.kompas.com/crops/GgjBgvabrT2kGvCd-Gvk_ieiHvs=/0x244:1440x1204/750x500/data/photo/2023/06/30/649ecbce40772.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwMneJ6Jc37t7N_mPAUNQuyK3gIVajUb9CaQ&s",
      "https://images.thedirect.com/media/article_full/thor-the-dark-world-chris-hemsworth-mcu-marvel_1.jpg"
    ]

  }
];
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: NetFlix(),
    );

  }

}
class NetFlix extends StatefulWidget{
  const NetFlix({super.key});
  @override
  State createState()=> _MyAppstate();
}
class _MyAppstate extends State{
  int index=0;

 

  @override
  Widget build(BuildContext context) {
    print("${MediaQuery.of(context).size.height}");
    return  Homepage();
  }


  Widget botom(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.end,
      children: [
         GestureDetector(
          onTap: () {
            index=0;
            setState(() {
              
            });
          },
           child: Container(
                        
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.home,
                                            color: Colors.white, size: 40,),
                                            Text("Home",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                            ),)
                                          ],
                        ),
                      ),
         ),
                  GestureDetector(
                     onTap: () {
                      index=1;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.games_rounded,
                                          color: Colors.white, size: 40,),
                                          Text("Home",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),)
                                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        
                      });
                      index=2;
                    },
                    child: Container(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.home,
                                          color: Colors.white, size: 40,),
                                          Text("Home",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),)
                                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      index=3;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.home,
                                          color: Colors.white, size: 40,),
                                          Text("Home",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white
                                          ),)
                                        ],
                      ),
                    ),
                  ),
                ],
              );
  }

     Widget Homepage(){


        if(index==0){
          return Scaffold(
            
          
      
      
      
        backgroundColor: Colors.black,
        appBar: AppBar( 
     
          //title: const Text("NetFlix Demo"),
         // centerTitle: true,
          backgroundColor: Colors.black,
          leading: Image.network("https://fluxfilm.in/wp-content/uploads/2024/04/netflixlogo.0.0.1466448626.jpg"),
          actions: const [
             Icon(Icons.download),
             SizedBox(width: 10,),
           Icon(Icons.search),
           
          ],
          
        ),
        body:
        Column(
          children: [
            Container(
              height: 660,
              child: ListView.builder(
                
                itemCount: movies().movieList.length,
                itemBuilder: (BuildContext context, int index1) { 
                  return Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(15.0),
                        child:(index1==0)? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10,
                                    ),
                                    border: Border.all(color: Colors.white),
                                    //color: Colors.white,
                                  ),
                                                  
                                  child: const Center(child: Text("TV Shows",
                                  style: TextStyle(fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  ),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 25,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10,
                                    ),
                                    border: Border.all(color: Colors.white),
                                    //color: Colors.white,
                                  ),
                                                  
                                  child: const Center(child: Text("Movies",
                                  style: TextStyle(fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  ),),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 25,
                                  width:130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10,
                                    ),
                                    border: Border.all(color: Colors.white),
                                    //color: Colors.white,
                                  ),
                                                  
                                  child: const Center(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Catogories",
                                      style: TextStyle(fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      ),
                                      ),
                                    Center(
                                      child: Icon(Icons.arrow_drop_down,
                                      color: Colors.white,),
                                    )
                                    ],
                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ):null,
                      ),
                      (index1==0)? 
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              
                              decoration: BoxDecoration(
                              image: const DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://m.media-amazon.com/images/M/MV5BZjM5M2ExMDItZGVlOC00N2U5LWEwMzAtZjI2YTIyYWJkNmVlXkEyXkFqcGc@._V1_QL75_UX480_.jpg",
                              ), ),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color:Colors.white),
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 589,
                              // child: 
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 475,
                            left: 35,
                            //right:80,
                             ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 90,),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 30,
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: const Color.fromARGB(255, 146, 13, 3),
                                          
                                        ),
                                        child:  Container(
                                          height: 30,
                                          width: 30,
                                          child:const  Center(
                                          
                                            child:  Text("Top 10",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white
                                            ),),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 150,
                                        child: const Center(
                                          child: const Text("#1 in Movies Today",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white
                                          ),),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.start,
                                   // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // alignment: Alignment.,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        height: 40,
                                        width: 150,
                                        child:const Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Icon(Icons.skip_next,
                                                                                color: Colors.black,
                                                                                size: 30,
                                                                                ),
                                            ),
                                          Center(child: Text("Play",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                          )
                                          )
                                          ],
                                        ),
                                        
                                      
                                      ),
                                      const SizedBox(width: 10,),
                                      Container(
                                        // alignment: Alignment.,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: const Color.fromARGB(255, 46, 45, 45),
                                        ),
                                        height: 40,
                                        width: 150,
                                        child:const Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                              child: Icon(Icons.add,
                                                                                color: Colors.black,
                                                                                size: 30,),
                                            ),
                                          Center(child: Text("My List ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white,
                                          ),))
                                          ],
                                        ),
                                        
                                      
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                        ],
                      ):Container(),
                      (index1==0)? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const  Text("Recommanded for New Members",
                         
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.orange,
                                          ]
                                          ),
                                      ),
                                      child: const Center(
                                        child:  Text("NetFlix Original",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      
                                                          
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.red,
                                          ]
                                          ),
                                      ),
                                        child: const Center(child: const Text("enjoyed in India",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),))
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.blue,
                                          ]
                                          ),
                                      ),
                                      child: const Center(
                                        child:  Text("Skip the queues,Watch at Home",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      
                                                          
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Colors.purple,
                                          ]
                                          ),
                                      ),
                                        child: const Center(child: const Text("Hollywood movies ",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),))
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Color.fromARGB(255, 43, 30, 11),
                                          ]
                                          ),
                                      ),
                                      child: const Center(
                                        child:  Text("Internatinal movies and TV",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        ),
                                      ),
                                      
                                                          
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Color.fromARGB(255, 148, 3, 10),
                                          ]
                                          ),
                                      ),
                                        child: const Center(child: const Text("BlockBustor movies",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),))
                                        ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Color.fromARGB(255, 42, 56, 68),
                                          ]
                                          ),
                                      ),
                                      child: const Center(
                                        child:  Text("Bingeworthy Tv Shows",
                                         style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        
                                        ),
                                      ),
                                      
                                                      
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end:Alignment.bottomCenter,
                                          colors: [
                                            Colors.black,
                                            Color.fromARGB(255, 63, 21, 18),
                                          ]
                                          ),
                                      ),
                                        child: const Center(child: const Text("90- mins film",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        ),
                                        )
                                        ),
                                  ),
                                ],
                              ),
                              ],
                            ),
                          ),
                         
                        ],
                      ):Container(),
                      
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("${movies().movieList[index1]["catogary"]}",
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        
                        height: 175,
                        
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: movies().movieList[index1]["url"].length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 175,
                                  height: 175,
                                  clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                                  child: Image.network("${movies().movieList[index1]["url"][index]
                                  }",
                                  fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            ],
                            );
                          
                            },
                           
                        ),
                      ),
                    ],
                  );
              
              
              
              
              
               },
               ),
            ),
            Container(
              //height: 60,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 20, 18, 18),
              child:  botom(),
        ),
        ],
        ),
        );
         
         
        
    
            
    
  }
  else if(index==1){
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          botom(),
        ],
      ),
    );
  }else if(index==2){
    return Scaffold(
      backgroundColor: Colors.red,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          botom(),
        ],

      )
    );
  }
  else{
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("My Netflix",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
        
        backgroundColor: Colors.black,
        actions: [
         const  Icon(Icons.search,
         color: Colors.white,
         size: 35,
         ),
         const  SizedBox(width: 10,),
         const  Icon(Icons.menu,
         color: Colors.white,
         size: 35,
         )
        ],
        
      ),
      body: Column(
        children: [
          Container(
            height: 660,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(width: 80,),
                  
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                  
                ),

                Text("")
              ],



            ),
          )
          ,
      
      
      Container(
        //height: 100,
        width:  MediaQuery.of(context).size.width,
        child: botom(),
      ),
      ]
      ),
    )
    ;
  }
}
}
  
 

