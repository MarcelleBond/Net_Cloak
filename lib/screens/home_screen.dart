import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helpers/responsive.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Net Cloak",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Responsive.isMobile(context)
            ? IconButton(
                onPressed: () => print("Info"),
                icon: const Icon(Icons.info_outline),
              )
            : null,
        actions: [
          IconButton(
            onPressed: () => context.read<ThemeProvider>().isDarkMode =
                !context.read<ThemeProvider>().isDarkMode,
            icon: Icon(context.read<ThemeProvider>().isDarkMode
                ? Icons.wb_sunny_outlined
                : Icons.brightness_2_outlined),
          ),
        ],
      ),
      bottomNavigationBar: Responsive.isMobile(context)
          ? const CustomBottomNavigationBar()
          : null,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatsIcon(
                title: "Location",
                subtitle: "FREE",
                icon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.flag_circle, size: 30,),
                ),
              ),
              StatsIcon(
                title: "60ms",
                subtitle: "PING",
                icon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.graphic_eq, size: 30,),
                ),
              ),
            ],
          ),
          const ConnectButton(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              StatsIcon(
                title: "0 kbs",
                subtitle: "Dowload",
                icon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.arrow_circle_down, size: 30,),
                ),
              ),
              StatsIcon(
                title: "0 kbs",
                subtitle: "Upload",
                icon: CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.purpleAccent,
                  child: Icon(Icons.arrow_circle_up, size: 30,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
