import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hackfest2024_naara/widgets/map_page/custom_marker_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController mapController;

  final LatLng _bandung = const LatLng(-6.914744, 107.609810);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Naara Locations",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w800,
              fontSize: 35,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Expanded(
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _bandung,
              zoom: 11.0,
            ),
            markers: {
              CustomMarker.tegallegaPark(),
              CustomMarker.paskalHyperSquare(),
              CustomMarker.transmartBuahbatu(),
              CustomMarker.parisVanJava(),
              CustomMarker.kiaraArthaPark(),
              CustomMarker.bandungZoo(),
            },
          ),
        ),
      ),
    );
  }
}
