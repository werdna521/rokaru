import 'package:maps_launcher/maps_launcher.dart';

class MapController {
  Future<void> openMap(double latitude, double longitude, String title) async {
    MapsLauncher.launchCoordinates(
      latitude,
      longitude,
      title,
    );
  }
}
