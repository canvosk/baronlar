part of loginpage_view;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginViewModel());
    MembershipViewModel membershipViewModel = Get.find();
    final loginFormKey = GlobalKey<FormState>();

    return Padding(
      padding: all24,
      child: Form(
        key: loginFormKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: SvgPicture.asset(
                  'assets/icons/arrow-left.svg',
                  width: generalBigMarginW,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'login'.tr,
                style: heading(golbat140),
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                children: [
                  const LoginEmailTextField(),
                  SizedBox(
                    height: generalMarginH,
                  ),
                  const LoginPasswordTextField(),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Obx(() {
                return ElevatedButton(
                  onPressed: () async {
                    if (membershipViewModel.loginLoading.value) {
                      return;
                    }
                    membershipViewModel.login().then((value) {
                      if (value) {
                        Get.offAllNamed('/chatpage');
                        return;
                      }
                      return;
                    });
                    return;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: golbat140,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                  ),
                  child: Center(
                    child: membershipViewModel.loginLoading.value
                        ? const CircularProgressIndicator(
                            color: bgColor,
                          )
                        : Text(
                            'login'.tr,
                            style: body1(golbat0),
                          ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
