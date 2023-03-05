part of membership_view;

class MembershipManagement extends StatelessWidget {
  const MembershipManagement({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(MembershipViewModel());

    return Scaffold(
      body: Container(
        height: Get.height,
        color: bgColor,
        child: ListView(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/membership_image.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 290.h,
              child: Padding(
                padding: all24,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppName(),
                    SizedBox(
                      height: generalBiggerMarginH,
                    ),
                    const Buttons(),
                    // SizedBox(
                    //   height: 48.h,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Get.toNamed('/login');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: golbat140,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.w),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          ),
          child: Center(
            child: Text(
              'login'.tr,
              style: body1(golbat0),
            ),
          ),
        ),
        SizedBox(
          height: generalSmallMarginH,
        ),
        RichText(
          text: TextSpan(
            text: 'dont_acc'.tr,
            style: body2(golbat60),
            children: [
              const TextSpan(
                text: " ",
              ),
              TextSpan(
                text: 'register'.tr,
                style: body2(golbat140),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => Get.toNamed('/register'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppName extends StatelessWidget {
  const AppName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          height: 36.h,
          child: Text(
            globals.appName,
            style: heading(blackColor),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 48.h,
          child: Text(
            'messenger'.tr,
            style: heading(blackColor),
          ),
        ),
      ],
    );
  }
}
