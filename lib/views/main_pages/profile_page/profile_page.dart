part of profilpage_view;

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileViewModel profileViewModel = Get.put(ProfileViewModel());
    profileViewModel.getCurrentUser();

    return Obx(
      () {
        return profileViewModel.gettingUser.value
            ? Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: generalBigMarginW),
                child: Column(
                  children: [
                    ProfilPhoto(profileViewModel: profileViewModel),
                    SizedBox(
                      height: generalMarginH,
                    ),
                    Text(
                      "${profileViewModel.user.value.name} ${profileViewModel.user.value.surname}",
                      style: heading(golbat140),
                      overflow: TextOverflow.fade,
                    ),
                    Text(
                      "@${profileViewModel.user.value.username}",
                      style: body2(golbat60),
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              );
      },
    );
  }
}
