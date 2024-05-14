part of '../services.dart';

class _ServiceCard extends StatefulWidget {
  final ServicesUtils service;

  const _ServiceCard({Key? key, required this.service}) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: (isHovering) {
        if (isHover != isHovering) {
          setState(() => isHover = isHovering);
        }
      },
      child: Container(
        width: Responsive.isTablet(context) ? 400 : 300,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          gradient: isHover ? pinkpurple : theme.serviceCard,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.service.icon, height: 60),
            Space.y(3.w)!,
            Text(widget.service.name,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: isHover ? whiteColor : theme.textColor)),
            Space.y(1.w)!,
            Text(widget.service.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color:
                        isHover ? whiteColor.withOpacity(0.8) : theme.textColor,
                    fontWeight: FontWeight.w200,
                    fontSize: 13)),
            Space.y(2.w)!,
            _buildToolsWidget(),
          ],
        ),
      ),
    );
  }

  // Method to build tools widget based on the screen size
  Widget _buildToolsWidget() {
    var toolsWidgets = widget.service.tool
        .map((tool) => Row(
              children: [
                const Text('🛠   '),
                Text(tool,
                    style: TextStyle(
                        color: isHover
                            ? whiteColor
                            : Theme.of(context).textColor)),
              ],
            ))
        .toList();

    if (Responsive.isDesktop(context)) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: toolsWidgets);
    } else {
      return Expanded(
        child: ListView(
            padding: EdgeInsets.zero, shrinkWrap: true, children: toolsWidgets),
      );
    }
  }
}
