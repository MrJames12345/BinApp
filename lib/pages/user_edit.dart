import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserEdit extends StatefulWidget {
  final void Function()? goToSettingsPage;
  UserEdit({required this.goToSettingsPage, super.key});

  @override
  UserEditState createState() => UserEditState();
}

class UserEditState extends State<UserEdit> {
  
  bool dataLoaded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    Padding _buildLabel(String label) => Padding(
      padding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
      child: Text(label, style: GoogleFonts.livvic(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: const Color(0xFF000000)
      )),
    );

    // Main
    return Scaffold(
      body: Column(
        children: [
      
          
        ],
      ),
    );
  }
}