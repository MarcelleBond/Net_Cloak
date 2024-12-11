import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Semantics(
      button: true,
      child: InkWell(
        onTap: () => print("Choose Location"),
        child: Container(
          height: 62,
          padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.041),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.flag_circle_outlined,
                size: 36,
              ),
              // SizedBox(width: 12),
              Text(
                "Choose VPN Location",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const CircleAvatar(
                child: Icon(Icons.keyboard_arrow_right),
              )
            ],
          ),
        ),
      ),
    );
  }
}
