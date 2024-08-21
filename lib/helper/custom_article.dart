import 'package:flutter_pdf_gen/helper/custom_circle_pdf.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Widget CustomArticle(String nbrArticle) {
  return Row(
    children: [
      SizedBox(
        width: 10,
      ),
      customCircle(),
      SizedBox(
        width: 5,
      ),
      Text(
        "ARTICLE $nbrArticle",
        style: TextStyle(
            color: PdfColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic),
      ),
    ],
  );
}
