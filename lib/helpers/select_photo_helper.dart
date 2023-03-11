import 'dart:convert';
import 'dart:io';

import 'package:baronlar/enums/permission_handler_enums.dart';
import 'package:baronlar/helpers/permission_handler_helper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotoHelper {
  Future takePhoto({
    required BuildContext context,
    required ImageSource source,
    required int type,
  }) async {
    // type => 0: Camera
    // type => 1: Gallery

    try {
      if (type == 0) {
        var status =
            await PermissionHandlerHelper().checkCameraPermission(context);
        if (status == PermissionHandlerReturns.granted) {
          var image = await takePhotoBase64(source: source);
          if (image is String) {
            return image;
          }
          return false;
        }
      } else if (type == 1) {
        var status =
            await PermissionHandlerHelper().checkPhotosPermission(context);
        if (status == PermissionHandlerReturns.granted) {
          var image = await takePhotoBase64(source: source);
          if (image is String) {
            return image;
          }
          return false;
        }
      }
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }

  Future takePhotoBase64({required ImageSource source}) async {
    try {

      final image = await ImagePicker().pickImage(
        source: source,
        maxWidth: 400,
        maxHeight: 400,
        preferredCameraDevice: CameraDevice.front,
      );
      if (image == null) return false;
      List<int> bytes = File(image.path).readAsBytesSync();
      String base64Image = base64Encode(bytes);
      return base64Image;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
