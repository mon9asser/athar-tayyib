import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("سياسة الخصوصية", style: TextStyle(color:Colors.white),),
        backgroundColor: const Color(0XFFAC527E),
        actions: [
          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back))
        ],
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            """
سياسة الخصوصية

نحن نحترم خصوصية المستخدمين ونلتزم بحماية معلوماتهم.

هذا التطبيق يقدم محتوى إسلامي مثل الأذكار والأدعية فقط، ولا يطلب من المستخدم إنشاء حساب أو إدخال بيانات شخصية.

جمع المعلومات
نحن لا نقوم بجمع أو تخزين أي معلومات شخصية من المستخدمين.

الإعلانات
هذا التطبيق صدقة جارية، ولا ولن يستخدم أي إعلانات، ولا يستخدم أي خدمات إعلانية من طرف ثالث.

الأطفال
التطبيق مناسب لجميع الأعمار.

التعديلات
قد نقوم بتحديث سياسة الخصوصية في أي وقت، وسيتم نشر التحديث داخل التطبيق.

التواصل معنا
لأي استفسار، يرجى التواصل عبر صفحة "تواصل معنا".
""",
            style: TextStyle(fontSize: 16),
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