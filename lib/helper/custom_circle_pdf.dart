import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// Fonction qui retourne un widget de cercle personnalisé
pw.Widget customCircle({
  double radius = 4,
  PdfColor color = PdfColors.black,
}) {
  return pw.Container(
    width: radius * 2,
    height: radius * 2,
    decoration: pw.BoxDecoration(
      shape: pw.BoxShape.circle,
      //color: color,
      border: pw.Border.all(
        color: PdfColors.black,
        width: 2,
      ),
    ),
  );
}
