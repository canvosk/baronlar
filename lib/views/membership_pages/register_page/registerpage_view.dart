part of registerpage_view;

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterViewModel());
    MembershipViewModel membershipViewModel = Get.find();
    final registerFormKey = GlobalKey<FormState>();

    return Padding(
      padding: all24,
      child: Form(
        key: registerFormKey,
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
                'register'.tr,
                style: heading(golbat140),
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                        child: RegisterNameTextField(),
                      ),
                      SizedBox(
                        width: generalMarginW,
                      ),
                      const Expanded(
                        child: RegisterSurnameTextField(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: generalMarginH,
                  ),
                  const RegisterUsernameTextField(),
                  SizedBox(
                    height: generalMarginH,
                  ),
                  const RegisterEmailTextField(),
                  SizedBox(
                    height: generalMarginH,
                  ),
                  const RegisterPasswordTextField(),
                  SizedBox(
                    height: generalMarginH,
                  ),
                  const RegisterRePasswordTextField(),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Obx(() {
                return ElevatedButton(
                  onPressed: () {
                    if(membershipViewModel.registerLoading.value){
                      return;
                    }
                    membershipViewModel.register();
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
                    child: membershipViewModel.registerLoading.value
                        ? const CircularProgressIndicator(
                            color: bgColor,
                          )
                        : Text(
                            'register'.tr,
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
