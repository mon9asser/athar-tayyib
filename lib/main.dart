import 'package:askur/pages/evenings-azkur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/home.dart';
import 'pages/died-azkur.dart';
import 'pages/morning-azkur.dart';
import 'pages/pray-azkur.dart';
import 'pages/sleeping-azkur.dart';
import 'pages/tasabeeh.dart';
import 'pages/convert_pdf.dart';

import 'pages/contact.dart';
import 'pages/terms_conidtions.dart';
import 'pages/privacy_policy.dart';


void main () => runApp(AzkurApp());

class AzkurApp extends StatelessWidget {
  const AzkurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },

      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/died_doa": (context) => DiedDoa(),
        "/azkur_morning": (context) => MorningAzkur(),
        "/azkur_evening": (context) => EveningsAzkur(),
        "/azkur_after_pray": (context) => AfterPrayAzkur(),
        "/azkur_slleeping": (context) => SleepingAzkur(),
        "/azkur_tasabeeh": (context) => TasabeehAzkar(),

        "/contact": (context) => ContactScreen(),
        "/privacy_policy": (context) => PrivacyPolicyScreen(),
        "/terms_conidtions": (context) => TermsConditionScreen(),

        "/pdf": (context) => PdfPreviewPage()

      },
    );
  }
}