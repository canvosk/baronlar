part of contactspage_view;

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
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
            "Can Vosk",
            style: body1(golbat140),
          ),
          subtitle: Text(
            "online",
            style: body2(bulbasaur140),
          ),
        );
      },
    );
  }
}
