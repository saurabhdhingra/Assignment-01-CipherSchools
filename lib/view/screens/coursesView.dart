import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants.dart';
import '../../viewModel/themeVM.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({Key? key}) : super(key: key);

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shadowColor: Theme.of(context).colorScheme.secondary,
        elevation: 5,
        title: Row(
          children: [
            SizedBox(
              height: height * 0.03,
              child: Image.asset('assets/icon.png'),
            ),
            SizedBox(width: width * 0.01),
            Text("CipherSchools",
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary))
          ],
        ),
        actions: [
          Icon(
            CupertinoIcons.compass,
            size: width * 0.05,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Center(
            child: Text(
              "Browse",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          Icon(
            CupertinoIcons.chevron_down,
            size: width * 0.05,
            color: Theme.of(context).colorScheme.secondary,
          ),
          CupertinoSwitch(
            value: themeProvider.isDark,
            activeColor: Colors.grey[800],
            onChanged: (value) {
              final provider =
                  Provider.of<ThemeProvider>(context, listen: false);

              provider.toggleTheme(value);
            },
          ),
          Icon(
            Icons.notifications_rounded,
            size: width * 0.05,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Icon(
            Icons.search,
            size: width * 0.05,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
