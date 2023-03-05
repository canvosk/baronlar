part of registerpage_view;

class RegisterRePasswordTextField extends StatefulWidget {
  const RegisterRePasswordTextField({super.key});

  @override
  State<RegisterRePasswordTextField> createState() =>
      _RegisterRePasswordTextFieldState();
}

class _RegisterRePasswordTextFieldState
    extends State<RegisterRePasswordTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    RegisterViewModel registerViewModel = Get.find();

    return TextFormField(
      onChanged: (value) {
        registerViewModel.setValues(value: value, index: 5);
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
        hintText: "repassword".tr,
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
