import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Widget CustomTextArticle(String text) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 26,
    ),
    child: Text(
      text,
      style: TextStyle(
          color: PdfColors.black,
          fontWeight: FontWeight.normal,
          fontSize: 12,
          lineSpacing: 2),
    ),
  );
}
