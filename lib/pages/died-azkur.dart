import 'package:flutter/material.dart';
import 'incs/sounds.dart';
import 'incs/mp3.dart';

class DiedDoa extends StatefulWidget {
  const DiedDoa({super.key});

  @override
  State<DiedDoa> createState() => _DiedDoaState();
}

class _DiedDoaState extends State<DiedDoa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Color(0XFFFEF8E7) ,

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text("رحم الله موتانا و موتاكم"),
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
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("assets/images/banner-mp3-doa.jpg"),
                  fit: BoxFit.cover,
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
                          Text("دعاء صوتي للمرحوم",
                              style: TextStyle(color: Colors.white, fontSize: 17)),
                          SizedBox(height: 4),
                          Text("هشام سالم",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ],
                      ),
                    ),
                    SoundMp3(
                      path: 'mp4/doa.mp3',
                      color: Color(0XFFFEF8E7),
                    ),
                  ],
                ),
              ),


            ),
            SizedBox(height: 5),
            Container(
              width: 250,
              child: Text(
                "اللهم اجعل هذا الدعاء صدقة جارية عن روح المرحوم هشام سالم",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Color(0XFF645529))
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                color: Colors.grey[400],
                thickness: 0.6,
              ),
            ),

            SizedBox(height: 10),

            Column(
              children: AllTracks.entries
                  .where((entry) => entry.key != 'doa')
                  .map((entry) {
                Map<String, dynamic> track = entry.value;

                return FutureBuilder<Duration?>(
                  future: getAssetDuration(track['path']),
                  builder: (context, snapshot) {
                    String durationText = "--:--:--";
                    if (snapshot.hasData && snapshot.data != null) {
                      Duration d = snapshot.data!;
                      durationText = "0${d.inMinutes}:${(d.inSeconds % 60).toString().padLeft(2,'0')}";
                    }

                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.all(20),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(track['title'] ?? "", style: TextStyle( color: Color(0XFFAC527E), fontWeight: FontWeight.w800, fontSize: 18),),
                                  SizedBox(height: 8,),
                                  Text(durationText, style: TextStyle(color: Colors.grey[600]),),
                                ],
                              )),
                              SizedBox(width: 10),
                              SoundMp3(
                                path: track['path'],
                                color: Color(0XFFAC527E),
                              ),
                            ],
                        )


                    );
                  },
                );
              }).toList(),
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
