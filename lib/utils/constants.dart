// Routes
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String kHomeScreen = '/';
const String kLocationScreen = '/location';
const String kCityScreen = '/city';

final kTempTextStyle = GoogleFonts.comfortaa(fontSize: 100.0);
final kMessageTextStyle = GoogleFonts.comfortaa(fontSize: 60.0);
final kButtonTextStyle = GoogleFonts.comfortaa(fontSize: 30.0);
final kConditionTextStyle = GoogleFonts.comfortaa(fontSize: 100.0);
final kInputTextStyle = GoogleFonts.comfortaa(color: Colors.black);
final kInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide.none,
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  fillColor: Colors.white,
  filled: true,
  hintText: 'Enter city name',
  hintStyle: GoogleFonts.comfortaa(color: Colors.grey),
);
