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
  Future<bool> requestStoragePermission() async {
    PermissionStatus storageStatus = await Permission.storage.request();
    if (storageStatus == PermissionStatus.denied) {
      return false;
    } else if (storageStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
      if (storageStatus == PermissionStatus.granted) {
        return true;
      }
      return false;
    }
    return true;
  }

  /// check camera permission
  Future<bool> requestCameraPermission() async {
    PermissionStatus cameraStatus = await Permission.camera.request();
    if (cameraStatus == PermissionStatus.denied) {
      return false;
    } else if (cameraStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
      if (cameraStatus == PermissionStatus.granted) {
        return true;
      }
      return false;
    }
    return true;
  }

  /// check sms permission
  Future<bool> requestSMSPermission() async {
    PermissionStatus smsStatus = await Permission.sms.request();
    if (smsStatus == PermissionStatus.denied) {
      return false;
    } else if (smsStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
      if (smsStatus == PermissionStatus.granted) {
        return true;
      }
      return false;
    }
    return true;
  }

  /// check calendar permission
  Future<bool> requestCalenderPermission() async {
    PermissionStatus calenderStatus = await Permission.calendar.request();
    if (calenderStatus == PermissionStatus.denied) {
      return false;
    } else if (calenderStatus == PermissionStatus.permanentlyDenied) {
      await openAppSettings();
      if (calenderStatus == PermissionStatus.granted) {
        return true;
      }
      return false;
    }
    return true;
  }
}
