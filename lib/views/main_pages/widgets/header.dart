part of mainpage_view;

class MainPageHeader extends StatelessWidget {
  const MainPageHeader({
    super.key,
    required this.header,
    required this.index,
  });

  final String header;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: generalBigMarginH,
        horizontal: generalBigMarginW,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/icons/search.svg'),
              index == 0
                  ? SvgPicture.asset('assets/icons/plus.svg')
                  : index == 1
                      ? SvgPicture.asset('assets/icons/edit.svg')
                      : SvgPicture.asset('assets/icons/logout.svg'),
            ],
          ),
          index == 2
              ? Container()
              : SizedBox(
                  height: generalBiggerMarginH,
                ),
          index == 2
              ? Container()
              : Text(
                  header,
                  style: heading(golbat140),
                ),
        ],
      ),
    );
  }
}
