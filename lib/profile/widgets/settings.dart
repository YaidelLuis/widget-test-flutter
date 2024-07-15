import 'package:flutter/material.dart';
import 'package:mytest/profile/widgets/custom_list_tile.dart';
import 'package:mytest/profile/widgets/single_section.dart';
import 'package:mytest/utils/commons.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isDark = false;
  bool _onNotfications = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDark ? ThemeData.dark() : ThemeData.light(),
      child: Center(
        child: Column(
          children: [
            SingleSection(
              title: "General",
              children: [
                CustomListTile(
                  title: "Dark Mode",
                  icon: Icons.dark_mode_outlined,
                  trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green.shade400,
                    value: _isDark,
                    onChanged: (value) {
                      setState(() {
                        _isDark = value;
                      });
                      final themeProvider =
                          Provider.of<ThemeProvider>(context, listen: false);
                      themeProvider.setTheme(
                          _isDark ? ThemeData.dark() : ThemeData.light());
                    },
                  ),
                ),
                CustomListTile(
                  title: "Notifications",
                  icon: Icons.notifications_none_rounded,
                  trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green.shade400,
                    value: _onNotfications,
                    onChanged: (value) {
                      setState(() {
                        _onNotfications = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            const SingleSection(
              title: "Organization",
              children: [
                CustomListTile(
                  title: "Profile",
                  icon: Icons.person_outline_rounded,
                ),
                CustomListTile(
                  title: "Messaging",
                  icon: Icons.message_outlined,
                ),
                CustomListTile(
                  title: "Calling",
                  icon: Icons.phone_outlined,
                ),
                CustomListTile(
                  title: "People",
                  icon: Icons.contacts_outlined,
                ),
                CustomListTile(
                  title: "Calendar",
                  icon: Icons.calendar_today_rounded,
                ),
              ],
            ),
            const Divider(),
            const SingleSection(
              children: [
                CustomListTile(
                  title: "Help & Feedback",
                  icon: Icons.help_outline_rounded,
                ),
                CustomListTile(
                  title: "About",
                  icon: Icons.info_outline_rounded,
                ),
                CustomListTile(
                  title: "Sign out",
                  icon: Icons.exit_to_app_rounded,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
