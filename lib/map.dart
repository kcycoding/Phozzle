import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Mapview extends StatefulWidget {
  const Mapview({super.key, required this.title});

  final String title;

  @override
  State<Mapview> createState() => _MapviewState();
}

class _MapviewState extends State<Mapview> {
  // late List<Model> _data;
  late MapShapeSource _mapSource;
  late MapZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    // _data = const <Model>[
    //   Model('New South Wales', Color.fromRGBO(255, 215, 0, 1.0),
    //       '       New\nSouth Wales'),
    //   Model('Queensland', Color.fromRGBO(72, 209, 204, 1.0), 'Queensland'),
    //   Model('Northern Territory', Color.fromRGBO(255, 78, 66, 1.0),
    //       'Northern\nTerritory'),
    //   Model('Victoria', Color.fromRGBO(171, 56, 224, 0.75), 'Victoria'),
    //   Model('South Australia', Color.fromRGBO(126, 247, 74, 0.75),
    //       'South Australia'),
    //   Model('Western Australia', Color.fromRGBO(79, 60, 201, 0.7),
    //       'Western Australia'),
    //   Model('Tasmania', Color.fromRGBO(99, 164, 230, 1), 'Tasmania'),
    //   Model('Australian Capital Territory', Colors.teal, 'ACT')
    // ];
    // const String wideFile = 'assets/SIDO_MAP_2022.json';
    // const String wide = "CTP_KOR_NM";

    const String cityFile = "assets/TL_SCCO_SIG.json";
    const String cityName = "SIG_KOR_NM";

    _mapSource = const MapShapeSource.asset(
      cityFile,
      shapeDataField: cityName,
    );
    _zoomPanBehavior = MapZoomPanBehavior();

    // _mapSource = const MapShapeSource.asset(
    //   'assets/cities.geojson',
    //   shapeDataField: 'NAME',
    // );

    // _mapSource = const MapShapeSource.network(
    //   'https://api.npoint.io/b127f79b6e9c883d0aba',
    //   shapeDataField: "name",
    // );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: SfMaps(
            layers: [
              MapShapeLayer(
                source: _mapSource,
                showDataLabels: true,
                zoomPanBehavior: _zoomPanBehavior,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
