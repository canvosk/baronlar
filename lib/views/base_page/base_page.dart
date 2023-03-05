part of basepage_view;

class BasePage extends StatelessWidget {
  final Widget page;
  const BasePage({
    super.key,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: bgColor,
            body: page,
          ),
        ),
      ),
    );
  }
}
