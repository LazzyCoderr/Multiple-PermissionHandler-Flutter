import 'package:permission_handler/permission_handler.dart';

class PermissionHandler {
  ///Handle all Permissions here
  Future<void> requestPermission() async {
    await [
      Permission.storage,
      Permission.camera,
      Permission.sms,
      Permission.calendar,
    ].request();
  }

  /*
  * Methods for particular permission status checker
  * */

  /// check storage permission
  Future<int> requestStoragePermission() async {
    if (await Permission.storage.isDenied) {
      /// after denied again request for particular permission
      var data = await Permission.storage.request();
      if (data.isGranted) {
        /// return true if granted after denied
        return 0;
      }
      return 1;
    } else if (await Permission.storage.isPermanentlyDenied) {
      /// return false if permission is permanently denied
      return 2;
    }
    return 0;
  }

  /// check camera permission
  Future<int> requestCameraPermission() async {
    if (await Permission.camera.isDenied) {
      /// after denied again request for particular permission
      var data = await Permission.camera.request();
      if (data.isGranted) {
        /// return true if granted after denied
        return 0;
      }
      return 1;
    } else if (await Permission.camera.isPermanentlyDenied) {
      /// return false if permission is permanently denied
      return 2;
    }
    return 0;
  }

  /// check sms permission
  Future<int> requestSMSPermission() async {
    if (await Permission.sms.isDenied) {
      /// after denied again request for particular permission
      var data = await Permission.sms.request();
      if (data.isGranted) {
        /// return true if granted after denied
        return 0;
      }
      return 1;
    } else if (await Permission.sms.isPermanentlyDenied) {
      /// return false if permission is permanently denied
      return 2;
    }
    return 0;
  }

  /// check calendar permission
  Future<int> requestCalenderPermission() async {
    if (await Permission.calendar.isDenied) {
      /// after denied again request for particular permission
      var data = await Permission.calendar.request();
      if (data.isGranted) {
        /// return true if granted after denied
        return 0;
      }
      return 1;
    } else if (await Permission.calendar.isPermanentlyDenied) {
      /// return false if permission is permanently denied
      return 2;
    }
    return 0;
  }
}