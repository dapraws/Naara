import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/profile_model/profile_model.dart';
import 'package:hackfest2024_naara/themes/colors.dart';
import 'package:hackfest2024_naara/widgets/profile_page/proflie_list_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<ProfileModel> profile = [];

  void initModel() {
    profile = ProfileModel.getProfile();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Scaffold(
      backgroundColor: light,
      body: Stack(
        children: [
          Container(
            color: secondary,
            width: double.infinity,
            height: MediaQuery.of(context).size.height - 100,
          ),
          Positioned.fill(
            bottom: 0,
            left: 0,
            right: 0,
            top: 200,
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                ),
                color: light,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/images/profile-picture.png',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 290,
            child: Column(
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Bandung',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A4243),
                  ),
                ),
              ],
            ),
          ),
          ProfileListWidget(profile: profile)
        ],
      ),
    );
  }
}
