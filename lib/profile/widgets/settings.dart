import 'package:flutter/material.dart';
import 'package:mytest/profile/my_vehicles/my_vehicles.dart';
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
  bool _onNotfications = false;
  bool _isSpanish = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Theme(
          data: themeProvider.isDark ? ThemeData.dark() : ThemeData.light(),
          child: Center(
            child: Column(
              children: [
                SingleSection(
                  title: "General",
                  children: [
                    CustomListTile(
                      title: "Dark Mode",
                      icon: Icons.dark_mode_outlined,
                      child: Consumer<ThemeProvider>(
                        builder: (context, themeProvider, child) {
                          return Switch(
                            activeColor: Colors.white,
                            activeTrackColor: Colors.green.shade400,
                            value: themeProvider.isDark,
                            onChanged: (value) {
                              themeProvider.setTheme(
                                value ? ThemeData.dark() : ThemeData.light(),
                                value,
                              );
                            },
                          );
                        },
                      ),
                    ),
                    CustomListTile(
                      title: "Notifications",
                      icon: Icons.notifications_none_rounded,
                      child: Switch(
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
                    CustomListTile(
                      title: "Lenguage",
                      icon: Icons.notifications_none_rounded,
                      child: Switch(
                        activeColor: Colors.white,
                        activeTrackColor: Colors.green.shade400,
                        value: _isSpanish,
                        onChanged: (value) {
                          setState(() {
                            _isSpanish = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const Divider(),
                SingleSection(
                  title: "Profile",
                  children: [
                    CustomListTile(
                      title: "Edit Profile",
                      icon: Icons.person_outline_rounded,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    CustomListTile(
                      title: "Change Password",
                      icon: Icons.password,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    CustomListTile(
                      title: "Sign out",
                      icon: Icons.exit_to_app_rounded,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                  ],
                ),
                const Divider(),
                SingleSection(
                  children: [
                    CustomListTile(
                      title: "My vehicles",
                      icon: Icons.directions_car,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyVehicles()),
                            );
                          },
                          icon: const Icon(Icons.arrow_forward_ios)),
                    ),
                    const CustomListTile(
                      title: "Share Autoassistenza",
                      icon: Icons.share_outlined,
                    ),
                    const CustomListTile(
                      title: "About",
                      icon: Icons.info_outline_rounded,
                    ),
                    CustomListTile(
                      title: "Delete account",
                      icon: Icons.delete_forever_rounded,
                      color: Colors.red[800],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
