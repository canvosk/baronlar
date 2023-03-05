part of registerpage_view;

class RegisterUsernameTextField extends StatelessWidget {
  const RegisterUsernameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterViewModel registerViewModel = Get.find();

    return TextFormField(
      onChanged: (value){
        registerViewModel.setValues(value: value, index: 2);
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
        hintText: "username".tr,
        filled: true,
        contentPadding: EdgeInsets.all(generalMarginW),
      ),
      textAlignVertical: TextAlignVertical.center,
      keyboardType: TextInputType.name,
    );
  }
}
