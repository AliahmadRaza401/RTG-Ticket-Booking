import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rtg/widgets/widgets_imports.dart';

class Maps extends StatelessWidget {
  Maps({super.key});
  static const CameraPosition _initialPosition = CameraPosition(
    target: LatLng(-25.2744, 133.7751), // Australia
    zoom: 0.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kBlack,
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: Stack(
          children: [
            GoogleMap(
              markers: Set<Marker>.of([
                const Marker(
                  markerId: MarkerId('Sydney'),
                  position: LatLng(-33.8688, 151.2093),
                ),
                const Marker(
                  markerId: MarkerId('Melbourne'),
                  position: LatLng(37.8136, 144.9631),
                ),
                const Marker(
                  markerId: MarkerId('perth'),
                  position: LatLng(31.9514, 115.8617),
                ),
                const Marker(
                  markerId: MarkerId('QLD'),
                  position: LatLng(22.5752, 144.0848),
                )
              ]),
              initialCameraPosition: _initialPosition,
              onMapCreated: (GoogleMapController controller) {},
            ),
            Padding(
              padding: EdgeInsets.only(top: kHeight(.07)),
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: kWidth(.9),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: kHeight(.055),
                          width: kWidth(.1),
                          decoration: BoxDecoration(
                            border: Border.all(color: KColors.kBlack),
                            color: KColors.noColor,
                            borderRadius: BorderRadius.circular(kWidth(.02)),
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      widthBox(.04),
                      Container(
                        width: kWidth(.7),
                        decoration: BoxDecoration(
                            color: KColors.kBlack.withOpacity(.7),
                            borderRadius: BorderRadius.circular(kWidth(.08))),
                        child: TextField(
                          cursorColor: KColors.kBlack,
                          style: const TextStyle(color: KColors.kWhite),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(bottom: kHeight(.015)),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: KColors.kWhite,
                              ),
                              labelText: "Search",
                              labelStyle:
                                  const TextStyle(color: KColors.kWhite),
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
