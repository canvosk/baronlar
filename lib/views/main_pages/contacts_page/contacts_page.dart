part of contactspage_view;

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactViewModel contactViewModel = Get.put(ContactViewModel());
    contactViewModel.getFriends();
    return Obx(() {
      return contactViewModel.isLoading.value
          ? Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.w,
              ),
            )
          : ListView.builder(
              itemCount: contactViewModel.friends.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/profile.jpeg',
                      fit: BoxFit.fitHeight,
                      height: listTileImageH,
                      width: listTileImageW,
                    ),
                  ),
                  title: Text(
                    "${contactViewModel.friends[index].name} ${contactViewModel.friends[index].name}",
                    style: body1(golbat140),
                  ),
                  subtitle: Text(
                    contactViewModel.friends[index].username!,
                    style: body2(bulbasaur140),
                  ),
                );
              },
            );
    });
  }
}
