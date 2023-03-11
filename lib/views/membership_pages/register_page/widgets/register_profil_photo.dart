part of registerpage_view;

class ProfilPhoto extends StatelessWidget {
  const ProfilPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RegisterViewModel registerViewModel = Get.find();
    return Obx(() {
      return GestureDetector(
        onTap: () async {
          var image = await SelectPhotoHelper().takePhoto(
              context: context, source: ImageSource.gallery, type: 1);
          if (image is String) {
            registerViewModel.setValues(value: image, index: 6);
            return;
          }
          return;
        },
        child: registerViewModel.base64.value != ""
            ? CircleAvatar(
                backgroundColor: golbat140,
                radius: 80.w,
                child: CircleAvatar(
                  radius: 79.w,
                  backgroundImage: MemoryImage(
                    const Base64Decoder()
                        .convert(registerViewModel.base64.value),
                  ),
                ),
              )
            : Container(
                width: 160.w,
                height: 160.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: golbat140),
                ),
                child: Center(
                  child: FaIcon(
                    FontAwesomeIcons.solidUser,
                    color: golbat140,
                    size: 42.w,
                  ),
                ),
              ),
      );
    });
  }
}
