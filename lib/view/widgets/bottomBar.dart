import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class BottomBar extends StatefulWidget {
  final List<List> screens;
  final Function(int) setIndex;
  final int index;
  final ThemeData theme;
  const BottomBar(
      {super.key,
      required this.screens,
      required this.setIndex,
      required this.index,
      required this.theme});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return SizedBox(
      height: height * 0.1,
      child: Column(
        children: [
          Container(
            width: width * 0.9,
            height: height * 0.08,
            decoration: BoxDecoration(
              color: widget.theme.scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 15,
                    offset: const Offset(0, 0))
              ],
              borderRadius: BorderRadius.all(Radius.circular(height * 0.04)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: widget.screens
                  .map(
                    (e) => widget.index == widget.screens.indexOf(e)
                        ? BottomBarIcon(
                            icon: widget.screens[widget.screens.indexOf(e)][0],
                            label: widget.screens[widget.screens.indexOf(e)][1],
                            onPressed: () =>
                                widget.setIndex(widget.screens.indexOf(e)),
                            iconColor: const Color.fromRGBO(242, 145, 47, 1),
                          )
                        : BottomBarIcon(
                            icon: widget.screens[widget.screens.indexOf(e)][0],
                            label: widget.screens[widget.screens.indexOf(e)][1],
                            onPressed: () =>
                                widget.setIndex(widget.screens.indexOf(e)),
                            iconColor: widget.theme.colorScheme.secondary,
                          ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }
}

class BottomBarIcon extends StatefulWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color iconColor;

  const BottomBarIcon(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed,
      this.iconColor = Colors.black});

  @override
  State<BottomBarIcon> createState() => _BottomBarIconState();
}

class _BottomBarIconState extends State<BottomBarIcon> {
  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return SizedBox(
      width: width * 0.2,
      child: Column(
        children: [
          IconButton(
            onPressed: () => widget.onPressed(),
            icon: Icon(
              widget.icon,
              size: 35,
              color: widget.iconColor,
            ),
          ),
          Text(
            widget.label,
            style: TextStyle(
              color: widget.iconColor,
            ),
          )
        ],
      ),
    );
  }
}
