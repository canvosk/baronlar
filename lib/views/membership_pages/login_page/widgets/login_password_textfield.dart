part of loginpage_view;

class LoginPasswordTextField extends StatefulWidget {
  const LoginPasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPasswordTextField> createState() => _LoginPasswordTextFieldState();
}

class _LoginPasswordTextFieldState extends State<LoginPasswordTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    LoginViewModel loginViewModel = Get.find();

    return TextFormField(
      onChanged: (value){
        loginViewModel.setValues(value: value, index: 1);
      },
      obscureText: isVisible,
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
        hintText: "password".tr,
        filled: true,
        fillColor: golbat5,
        suffixIcon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: isVisible
                  ? FaIcon(
                      FontAwesomeIcons.eyeSlash,
                      size: generalMarginW,
                      color: golbat100,
                    )
                  : FaIcon(
                      FontAwesomeIcons.eye,
                      size: generalMarginW,
                      color: golbat100,
                    ),
            ),
          ],
        ),
        contentPadding: EdgeInsets.all(generalMarginW),
      ),
    );
  }
}
