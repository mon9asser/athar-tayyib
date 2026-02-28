import 'package:flutter/material.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text("تواصل معنا"),

        leading: Builder(
            builder: (context) =>  IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu), style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFFF4E2AC))), color: Color(0xFFAC527E),)
        ),
        actions: [
          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "الاسم",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "من فضلك أدخل الاسم";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: "البريد الإلكتروني",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "من فضلك أدخل البريد";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 15),

              TextFormField(
                controller: messageController,
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: "رسالتك",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "من فضلك أدخل الرسالة";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFFAC527E),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("تم إرسال الرسالة بنجاح"),
                        ),
                      );

                      nameController.clear();
                      emailController.clear();
                      messageController.clear();
                    }
                  },
                  child: const Text("إرسال", style: TextStyle(
                    color: Colors.white
                  ),),
                ),
              ),

            ],
          ),
        ),
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