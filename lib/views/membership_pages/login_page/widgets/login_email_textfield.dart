part of loginpage_view;

class LoginEmailTextField extends StatelessWidget {
  const LoginEmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel = Get.find();

    return TextFormField(
      onChanged: (value){
        loginViewModel.setValues(value: value, index: 0);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(generalMarginW),
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(generalMarginW),
          ),
          borderSide: BorderSide(
            color: golbat140,
            width: 1.w,
          ),
        ),
        hintText: "email".tr,
        filled: true,
        contentPadding: EdgeInsets.all(generalMarginW),
      ),
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.emailAddress,
    );
  }
}
