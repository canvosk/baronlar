import 'package:baronlar/enums/permission_handler_enums.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerHelper {

  Future checkCameraPermission(BuildContext context) async {
    // 0 => Error
    // 1 => Granted
    // 2 => Denied
    // 3 => Permanently Denied

    try {
      var status = await Permission.camera.status;

      if (status.isGranted) {
        return PermissionHandlerReturns.granted;
      }

      status = await Permission.camera.request();

      if (status.isGranted) {
        return PermissionHandlerReturns.granted;
      } else if (status.isDenied) {
        return PermissionHandlerReturns.denied;
      } else if (status.isPermanentlyDenied) {
        return PermissionHandlerReturns.permanentlyDenied;
      }
      return PermissionHandlerReturns.error;
    } catch (e) {
      debugPrint(e.toString());
      return PermissionHandlerReturns.error;
    }
  }

  Future checkPhotosPermission(BuildContext context) async {
    // 0 => Error
    // 1 => Granted
    // 2 => Denied
    // 3 => Permanently Denied

    try {
      var status = await Permission.camera.status;

      if (status.isGranted) {
        return PermissionHandlerReturns.granted;
      }

      status = await Permission.camera.request();

      if (status.isGranted) {
        return PermissionHandlerReturns.granted;
      } else if (status.isDenied) {
        return PermissionHandlerReturns.denied;
      } else if (status.isPermanentlyDenied) {
        return PermissionHandlerReturns.permanentlyDenied;
      }
      return PermissionHandlerReturns.error;
    } catch (e) {
      debugPrint(e.toString());
      return PermissionHandlerReturns.error;
    }
  }

}
