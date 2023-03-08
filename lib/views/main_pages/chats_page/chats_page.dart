part of chatspage_view;

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

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
            "Hello! How are you?",
            style: body2(golbat60),
          ),
          trailing: Column(
            children: [
              Text(
            "5 min ago",
            style: body2(golbat60),
          ),
            ],
          ),
        );
      },
    );
  }
}
