import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class QrCode extends StatelessWidget {
  QrCode({super.key});
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? qrController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kBlack,
      body: Center(
        child: SizedBox(
          height: context.height,
          width: kWidth(.9),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                  text: "Scan your QR Code",
                  textStyle: KTextStyles()
                      .normal(fontSize: 30, textColor: KColors.kWhite)),
              heightBox(.1),
              SizedBox(
                height: kHeight(.3),
                width: kWidth(.8),
                child: QRView(
                  key: qrKey,
                  onQRViewCreated: (p0) {},
                  overlay: QrScannerOverlayShape(
                    borderColor: Colors.white,
                    borderRadius: 10,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              heightBox(.1),
              PrimaryButton(
                height: .07,
                width: .7,
                text: "Scan QR Code",
                function: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
