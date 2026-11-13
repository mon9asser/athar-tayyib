import 'package:flutter/material.dart';
import 'incs/sounds.dart';
import 'incs/mp3.dart';
import 'incs/all_akur.dart';

class MorningAzkur extends StatefulWidget {
  const MorningAzkur({super.key});

  @override
  State<MorningAzkur> createState() => _MorningAzkurState();
}

class _MorningAzkurState extends State<MorningAzkur> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color(0XFFFEF8E7) ,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("أذكار الصباح مكتوبة"),
        leading: Builder(builder: (context) => IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu), style: ButtonStyle(
          backgroundColor:  WidgetStatePropertyAll( Color(0XFFAC527E)),
          iconColor:  WidgetStatePropertyAll(Color(0XFFFEF8E7)),
        ))),
        actions: [
          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))
        ],
      ),


      body: SingleChildScrollView(
          child: Padding(padding: EdgeInsetsGeometry.all(20), child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              SizedBox(height: 5),
              Container(

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.46),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Color(0XFFFCE5A3),  // border color
                    width: 2,           // border width
                  ),
                ),


                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    spacing: 20,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "واذكر ربك إذا نسيت",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "عدد الاذكار: ${Morning.length}",
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage("assets/images/image-pray.jpg"),
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),




              ),

              SizedBox(height: 10),

              Column(
                spacing: 15,
                children: [
                  for (var item in Morning)

                    Container(
                      decoration: BoxDecoration(
                        color:item["count"] == 0 ? Colors.green.withAlpha(2) : Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: item["count"] == 0 ? Colors.white : Color(0XFFAC527E),
                          width: 0.2
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(item["description"],style: TextStyle(color: item["count"] == 0 ? Colors.grey[300] : Color(0XFFAC527E), fontSize: 20, height: 1.8, fontWeight: FontWeight.w500, textBaseline: TextBaseline.ideographic)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0XFFAC527E),
                                  width: 0.2
                              ),
                              borderRadius:BorderRadius.all( Radius.circular(10))
                            ),
                            margin: EdgeInsets.only(top: 20),
                            child: Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              IconButton(onPressed: () => setState(() {

                                int counter = item["count"] - 1;
                                if( counter < 0 ) {
                                  counter = 0;
                                }

                                item["count"] = counter;

                              }), icon: Icon(Icons.touch_app, color: Color(0XFFAC527E),)),
                              Text(item["count"].toString(), style: TextStyle(fontSize: 22 , color: Color(0XFFAC527E)),),
                              IconButton(onPressed: () => setState(() {

                                int mainCounter = item["main_count"] ;
                                item["count"] = mainCounter;
                              }), icon: Icon(Icons.refresh , color: Color(0XFFAC527E))),
                            ],),
                          )
                        ],
                      )

                    )
                ],
              )



            ],
          ),)
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
