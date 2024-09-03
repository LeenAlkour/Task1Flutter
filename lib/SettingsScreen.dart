import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/CustomWidgets/CustomContainer.dart';
import 'package:task1/CustomWidgets/CustomIcon.dart';
import 'package:task1/CustomWidgets/CustomTitle.dart';
import 'package:task1/CustomWidgets/CustomTextButtons.dart';

import 'CustomWidgets/CustomToggleButtons.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomTitle(
          padding: 0.0,
          title: "Settings",
          size: 0.06,
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CustomIcon(
            color: Colors.blue,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitle(
              title: "security settings",
            ),
            CustomContainer(
                hight: height * 0.2,
                width: width * 0.9,
                radius: 15,
                padding: width * 0.04,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomTextButtons(
                          onPressed: () {},
                          title: "face id",
                        ),
                        Spacer(),
                        CustomToggleButtons(
                          value: isSwitched1,
                          onChanged: (bool val) {
                            setState(() {
                              isSwitched1 = val;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomTextButtons(
                          title: "pin",
                          onPressed: () {},
                        ),
                        Spacer(),
                        CustomToggleButtons(
                          value: isSwitched2,
                          onChanged: (bool val) {
                            setState(() {
                              isSwitched2 = val;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomTextButtons(
                          onPressed: () {},
                          title: "change pin",
                        ),
                        Spacer(),
                        CustomIcon(
                          size: 18.0,
                          icon: Icons.arrow_forward_ios,
                          color: Colors.blue,
                        ),
                      ],
                    )
                  ],
                )),
            CustomTitle(
              title: "password",
            ),
            CustomContainer(
                hight: height * 0.07,
                padding: width * 0.05,
                child: Row(
                  children: [
                    CustomTextButtons(
                      onPressed: () {},
                      title: "change password",
                    ),
                    Spacer(),
                    CustomIcon(
                      size: 18.0,
                      icon: Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ],
                )),
            CustomTitle(
              title: "Approved addresses",
            ),
            CustomContainer(
                hight: height * 0.07,
                padding: width * 0.05,
                child: Row(
                  children: [
                    CustomTextButtons(
                      onPressed: () {},
                      title: "manage",
                    ),
                    Spacer(),
                    CustomIcon(
                      size: 18.0,
                      icon: Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ],
                )),
            CustomTitle(
              title: "Security Keys",
            ),
            CustomContainer(
                padding: width * 0.05,
                hight: height * 0.07,
                child: Row(
                  children: [
                    CustomIcon(
                      size: 20.0,
                      icon: Icons.add,
                      color: Colors.blue,
                    ),
                    CustomTextButtons(
                      onPressed: () {},
                      padding: 0.0,
                      title: "add security keys",
                    ),
                    Spacer(),
                    CustomIcon(
                      size: 18.0,
                      icon: Icons.arrow_forward_ios,
                      color: Colors.blue,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
