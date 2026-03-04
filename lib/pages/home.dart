import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFAC527E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text("صدقة  جارية عن روح ", textAlign: TextAlign.center, style: TextStyle(
            fontSize: 20,
            color: Colors.white,

        ),),
        leading: Builder(
            builder: (context) =>  IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFFF4E2AC))), color: Color(0xFFAC527E),)
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(7),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(

                  child: Column(

                    children: [


                      Text("المرحوم  هشام سالم", textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w900
                      )),

                    ],

                )),

              SizedBox(height: 20,),

              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFEF8E7),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(80), bottom: Radius.circular(250))
                ),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      spacing: 8,
                      children: [
                        SizedBox(height: 20,),
                        Text("الأذكار", textAlign: TextAlign.center, style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: Color(0XFFAC527E) ),),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/died_doa"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  child: Text("دعاء للمتوفى", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),),

                            SizedBox(width: 0), // middle spacing

                            Expanded(child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/azkur_morning"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  child: Text("أذكار الصباح", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),)
                          ],
                        ),



                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Expanded(child:  TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/azkur_slleeping"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  child: Text(("أذكار النوم"), textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),),

                            SizedBox(width: 0), // middle spacing

                            Expanded(child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/azkur_evening"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 180,
                                  child: Text("أذكار المساء", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),)
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Expanded(child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/azkur_tasabeeh"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  child: Text(("تسابيح"), textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),),

                            SizedBox(width: 0), // middle spacing

                            Expanded(child: TextButton(
                                onPressed: () => Navigator.pushNamed(context, "/azkur_after_pray"),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4E2AC),
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 180,
                                  child: Text("أذكار بعد الصلاة", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
                                )
                            ),)
                          ],
                        ),


                      ],
                    ),
                    Container(
                      height: 190,
                      padding:EdgeInsetsGeometry.only(top: 20),
                      margin:EdgeInsets.only(top: 20.0),
                      child: Image.asset(
                        "assets/images/mosque.png",
                        width: 220,
                        height: 190,
                      ),
                    )
                  ],
                )


              ),


            ]
          ,),)
    ),


      drawer: Drawer(
        backgroundColor: Color(0XFFAC527E),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              decoration: BoxDecoration(
              ),
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Text("صدقة  جارية - أذكار", style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              )),
            ),
            Divider(
              thickness: 0.1,
              color: Colors.white,
            ),
            ListTile(
              title: Text("دعاء للمتوفى", style: TextStyle(
                color: Colors.white,
              )),

              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/died_doa");
              },
            ),

            ListTile(
              title: Text("أذكار الصباح", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/azkur_morning");
              },
            ),

            ListTile(
              title: Text("أذكار النوم", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/azkur_slleeping");
              },
            ),

            ListTile(
              title: Text("أذكار المساء", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/azkur_evening");
              },
            ),

            ListTile(
              title: Text("أذكار بعد الصلاة", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/azkur_after_pray");
              },
            ),

            ListTile(
              title: Text("تسابيح", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/azkur_tasabeeh");
              },
            ),

            ListTile(
              title: Text("سياسة الخصوصية", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/privacy_policy");
              },
            ),

            ListTile(
              title: Text("الشروط والأحكام", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/terms_conidtions");
              },
            ),

            ListTile(
              title: Text("تواصل معنا", style: TextStyle(
                color: Colors.white,
              )),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/contact");
              },
            ),

          ],
        ),
      ),


    );
  }
}



