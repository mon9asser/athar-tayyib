import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

class PdfPreviewPage extends StatelessWidget {
  const PdfPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final values = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String title = values['title'];
    final List<dynamic> azkur = values['data'];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: PdfPreview(
        maxPageWidth: 700,
        build: (format) => _generatePdf(format, title, azkur),
      ),
    );
  }

  Future<Uint8List> _generatePdf(
      PdfPageFormat format, String title, List<dynamic> azkur) async {
    final pdf = pw.Document();

    // Load the Arabic font
    final ttf = await rootBundle.load("assets/fonts/cairo.ttf");
    final arabicFont = pw.Font.ttf(ttf);

    for (var item in azkur) {
      pdf.addPage(
        pw.Page(
          pageFormat: format,
          build: (context) {
            return pw.Directionality(
              textDirection: pw.TextDirection.rtl,
              child: pw.Padding(
                padding: const pw.EdgeInsets.all(20),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Text(
                      "(${item['count']}) ${item['description']}",
                      style: pw.TextStyle(font: arabicFont, fontSize: 25),
                      textAlign: pw.TextAlign.right,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    return pdf.save();
  }
}