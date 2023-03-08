part of mainpage_view;

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    MainPageViewModel mainPageViewModel = Get.put(MainPageViewModel());
    return Obx(() {
      return SizedBox(
        height: Get.height,
        child: Column(
          children: [
            MainPageHeader(
              header: mainPageViewModel.selectedHeader.value,
              index: mainPageViewModel.selectedIndex.value,
            ),
            Expanded(
              child: mainPageViewModel
                  .pages[mainPageViewModel.selectedIndex.value],
            ),
            SizedBox(
              height: 65.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  BottomBarIcon(
                    index: 0,
                    selectedIcon: FontAwesomeIcons.solidAddressBook,
                    unSelectedIcon: FontAwesomeIcons.addressBook,
                  ),
                  BottomBarIcon(
                    index: 1,
                    selectedIcon: FontAwesomeIcons.solidComment,
                    unSelectedIcon: FontAwesomeIcons.comment,
                  ),
                  BottomBarIcon(
                    index: 2,
                    selectedIcon: FontAwesomeIcons.solidUser,
                    unSelectedIcon: FontAwesomeIcons.user,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
