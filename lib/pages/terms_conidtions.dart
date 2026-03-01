import 'package:flutter/material.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الشروط والأحكام", style: TextStyle(color:Colors.white),),
        backgroundColor: const Color(0XFFAC527E), 
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Text(
            """
الشروط والأحكام

باستخدامك لهذا التطبيق، فإنك توافق على الالتزام بهذه الشروط.

استخدام التطبيق
يقدم التطبيق محتوى إسلامي لأغراض دينية وتعليمية فقط.

الملكية الفكرية
لا يجوز إعادة نشر محتوى التطبيق لأغراض تجارية دون إذن.

إخلاء المسؤولية
نسعى لتقديم محتوى صحيح، لكن لا نتحمل مسؤولية الأخطاء غير المقصودة.

التعديلات
نحتفظ بحق تعديل هذه الشروط في أي وقت.

التواصل معنا
يرجى التواصل عبر صفحة "تواصل معنا" لأي استفسار.
""",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}