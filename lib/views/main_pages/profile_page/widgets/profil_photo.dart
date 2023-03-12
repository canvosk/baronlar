part of profilpage_view;

class ProfilPhoto extends StatelessWidget {
  const ProfilPhoto({
    super.key,
    required this.profileViewModel,
  });

  final ProfileViewModel profileViewModel;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 80.w,
      backgroundImage: MemoryImage(
        const Base64Decoder().convert(profileViewModel.user.value.base64!),
      ),
    );
  }
}
