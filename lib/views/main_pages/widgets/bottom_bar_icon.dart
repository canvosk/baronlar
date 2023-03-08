part of mainpage_view;

class BottomBarIcon extends StatelessWidget {
  final int index;
  final IconData selectedIcon;
  final IconData unSelectedIcon;
  const BottomBarIcon({
    super.key,
    required this.index,
    required this.selectedIcon,
    required this.unSelectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    MainPageViewModel mainPageViewModel = Get.find();
    return Obx(() {
        return GestureDetector(
          onTap: () {
            mainPageViewModel.changePage(index);
          },
          child: mainPageViewModel.selectedIndex.value == index
              ? FaIcon(
                  selectedIcon,
                  color: golbat140,
                  size: bottomBarIconSize,
                )
              : FaIcon(
                  unSelectedIcon,
                  size: bottomBarIconSize,
                ),
        );
      }
    );
  }
}
