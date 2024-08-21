import 'dart:typed_data';

import 'package:flutter_pdf_gen/helper/custom_article.dart';
import 'package:flutter_pdf_gen/helper/custom_circle_pdf.dart';
import 'package:flutter_pdf_gen/helper/custom_text_article.dart';
import 'package:pdf/pdf.dart';

import '../../models/bill_model.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf/widgets.dart' as pw;

import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> pdfHelperBuilder(BillModel bill,
    {String? cin,
    String? dateContrat,
    String? adresseContrat,
    String? cin1,
    String? dateContrat1,
    String? adresseContrat1,
    String? localArticle1,
    String? dureeArticle2,
    String? localArticle3,
    String? adresseArticle1,
    String? dateDebutArticle2,
    String? dateFinArticle2,
    String? montantArticle3,
    String? montantMensuelArticle3,
    String? pourcentageArticle3,
    String? montantArticle4,
    String? usageAutorise,
    String? delaiJoursArticle10,
    String? delaiJoursArticle11,
    String? proprietaireLocataireArticle13,
    String? detailsChargesArticle14}) async {
  final pdf = Document();
  final imageLogo = MemoryImage(
      (await rootBundle.load('assets/logofnale.jpeg')).buffer.asUint8List());

  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topLeft,
              height: 80,
              width: 80,
              child: Image(
                imageLogo,
              ),
            ),
            //  Container(height: 10),
            Center(
              child: Text(
                'CONTRAT DE LOCATION',
                style: TextStyle(
                  color: PdfColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "1.ENTRE LES SOUSSIGNÉES :",
              style: TextStyle(
                color: PdfColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "\t\t\tA. Le Propriétaire",
              style: TextStyle(
                color: PdfColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 26,
              ),
              child: Text(
                "Monsieur/Madame landlord syndic de Nationalité titulaire de la C.I.N N° $cin Délivré le $dateContrat à 123456789.Demeurant à $adresseContrat.",
                style: TextStyle(
                    color: PdfColors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    lineSpacing: 2),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "\t\t\tB. Le(s) Locataire(s)",
              style: TextStyle(
                color: PdfColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 26,
              ),
              child: Text(
                "Monsieur/Madame landlord syndic de Nationalité titulaire de la C.I.N N° $cin1 Délivré le $dateContrat1 à 123456789.Demeurant à $adresseContrat1.",
                style: TextStyle(
                    color: PdfColors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    lineSpacing: 2),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "2. IL A ÉTÉ ARRÊTÉ ET CONVENU CE QUI SUIT :",
              style: TextStyle(
                color: PdfColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            CustomArticle(
              "1",
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextArticle(
                "Le propriétaire se propose de louer \"$localArticle1\" situé à $adresseArticle1."),
            SizedBox(
              height: 10,
            ),

            CustomArticle(
              "2",
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextArticle(
                "Le propriétaire loue au locataire, qui accepte, pour une durée de $dureeArticle2 ans/années à partir du $dateDebutArticle2, et se terminant le $dateFinArticle2."),
            SizedBox(
              height: 10,
            ),

            CustomArticle(
              "3",
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextArticle(
                "Le présent bail est consenti moyennant un loyer annuel forfaitaire et net de $montantArticle3, payable monthly, soit $montantMensuelArticle3 dinars. En cas de renouvellement, le loyer sera majoré de $pourcentageArticle3 % annuellement."),
            SizedBox(
              height: 10,
            ),
            CustomArticle(
              "4- DÉPÔT DE GARANTIE",
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextArticle(
                "Le locataire verse au propriétaire, au moment de la signature du présent contrat, un dépôt de garantie d'un montant de $montantArticle4 dinars. Ce montant sera restitué au locataire à la fin du bail, sous réserve des éventuelles réparations ou remises en état nécessaires."),
            SizedBox(
              height: 10,
            ),
            CustomArticle(
              "5 - OBLIGATIONS DU LOCATAIRE",
            ),
            SizedBox(
              height: 5,
            ),
            CustomTextArticle(
              "Le locataire s'engage à :\n Utiliser le bien loué en bon père de famille.\n Ne pas sous-louer ou céder le bail sans l'accord écrit du propriétaire.\n Informer immédiatement le propriétaire de toute dégradation ou problème nécessitant des réparations.\n Respecter les règles de copropriété et de voisinage..",
            ),
            SizedBox(
              height: 10,
            ),
          ],
        );
      },
    ),
  );
  pdf.addPage(
    Page(
      build: (context) => Column(children: [
        CustomArticle(
          "6 - OBLIGATIONS DU PROPRIÉTAIRE",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Le propriétaire s'engage à :\n Remettre les lieux en bon état d'usage et de réparation.\n Assurer au locataire une jouissance paisible des lieux loués.\n Effectuer toutes les réparations nécessaires à l'entretien normal du bien loué."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "7 - DURÉE DU CONTRAT",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Le présent contrat est conclu pour une durée de $dureeArticle2 années, à compter du $dateDebutArticle2 et se terminant le $dateFinArticle2. À l'expiration de cette période, le bail pourra être renouvelé par accord mutuel entre les deux parties."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "8 - UTILISATION DES LIEUX",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Le locataire s'engage à n'utiliser les lieux loués que pour un usage strictement $usageAutorise. Toute autre utilisation devra faire l'objet d'un accord écrit du propriétaire."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "9 - RÉPARATIONS ET ENTRETIEN",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
          "Les réparations locatives et l'entretien courant du bien loué sont à la charge du locataire. Les grosses réparations (toiture, murs porteurs, etc.) sont à la charge du propriétaire.",
        ),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "10 - ASSURANCES",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Le locataire s'engage à souscrire une assurance couvrant les risques locatifs (incendie, dégâts des eaux, etc.) et à en justifier auprès du propriétaire dans un délai de $delaiJoursArticle10 jours suivant la signature du présent contrat."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "11 - RÉSILIATION DU CONTRAT",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "En cas de manquement grave à ses obligations, l'une des parties pourra résilier le contrat, après mise en demeure restée infructueuse pendant un délai de $delaiJoursArticle11 jours. La résiliation pourra également intervenir par accord mutuel entre les deux parties."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "12 - CLAUSE RÉSOLUTOIRE",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "En cas de non-paiement du loyer aux échéances convenues ou de non-respect des obligations du locataire, le présent contrat sera résilié de plein droit, un mois après un commandement de payer resté sans effet."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "13 - ÉTAT DES LIEUX",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Un état des lieux contradictoire sera établi lors de l'entrée en jouissance du locataire et lors de son départ. Les frais de rédaction de cet état des lieux sont à la charge de $proprietaireLocataireArticle13]."),
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "14 - CHARGES",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Les charges locatives comprennent $detailsChargesArticle14 et sont payables en plus du loyer. Elles feront l'objet d'une régularisation annuelle."),
      ]),
    ),
  );
  pdf.addPage(
    Page(
      build: (context) => Column(children: [
        SizedBox(
          height: 10,
        ),
        CustomArticle(
          "15 - LITIGES",
        ),
        SizedBox(
          height: 5,
        ),
        CustomTextArticle(
            "Tout litige relatif à l'exécution ou à l'interprétation du présent contrat sera soumis aux tribunaux compétents du lieu de situation de l'immeuble."),
      ],),
    ),
  );
  return pdf.save();
}

Widget textAndPadding(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: const EdgeInsets.all(1),
      child: Text(
        text,
        textAlign: align,
      ),
    );
