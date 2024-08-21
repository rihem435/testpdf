import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdf_gen/helper/pdf_helper.dart';
import 'package:flutter_pdf_gen/helper/pdf_helper_contrat.dart';
import 'package:flutter_pdf_gen/models/bill_model.dart';
import 'package:printing/printing.dart';

class PdfPreviewPage extends StatelessWidget {
  final BillModel bill;
  const PdfPreviewPage({Key? key, required this.bill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contrat de location'),
      ),
      body: InteractiveViewer(
        panEnabled: false,
        boundaryMargin: const EdgeInsets.all(80),
        minScale: 0.5,
        maxScale: 4,
        child: PdfPreview(
          
          loadingWidget: const CupertinoActivityIndicator(),
          build: (context) => pdfHelperBuilder(bill,
              cin: "25478547",
              dateContrat: "08/08/2024",
              adresseContrat: "ariana tunisie,12345",
              cin1: "25478547",
              dateContrat1: "30-10-2024",
              adresseContrat1: "ariana tunisie,12345",
              adresseArticle1: "sousse",
              dateDebutArticle2: "10-10-2023",
              dateFinArticle2: "10-10-2024",
              dureeArticle2: "2",
              localArticle1: "sousse",
              localArticle3: "sousse",
              montantArticle3: "1000",
              montantMensuelArticle3: "100",
              pourcentageArticle3: "5",
              delaiJoursArticle10: "10",
              delaiJoursArticle11: "10",
              detailsChargesArticle14: "entretient...",
              montantArticle4: "1200",
              proprietaireLocataireArticle13: "prop",
              usageAutorise: "dsfcgv"),
        ),
      ),
    );
  }
}
