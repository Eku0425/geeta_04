import 'package:flutter/material.dart';

import '../modal/shlokModal.dart';

List<Verse> verses = [];

var repaintKey = GlobalKey();

List imageList = [
  'assets/bg2.jpg',
  'assets/img/ADH-1.jpg',
  'assets/img/04.jpg',
];

List imageListOfChapters = [
  'assets/img/main.jpg',
  'assets/img/gita.jpeg',
  //'assets/img/ADH-1.jpg',
  'assets/img/Chapter 2.jpg',
  'assets/img/Chapter 3.jpg',
  'assets/img/Chapter 4.jpg',
  'assets/img/Chapter 5.jpg',
  'assets/img/Chapter 6.jpg',
  'assets/img/Chapter 7.jpg',
  'assets/img/Chapter 8.jpg',
  'assets/img/Chapter 9.jpg',
  'assets/img/Chapter 10.jpg',
  'assets/img/Chapter 11.jpg',
  'assets/img/Chapter 12.jpg',
  'assets/img/Chapter 13.jpg',
  'assets/img/Chapter 14.jpg',
  'assets/img/Chapter 15.jpg',
  'assets/img/Chapter 16.jpg',
  'assets/img/Chapter 17.jpg',
];

List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text(
      'Sanskrit',
    ),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text(
      'Hindi',
    ),
  ),
  const PopupMenuItem(
    value: 2,
    child: Text(
      'English',
    ),
  ),
  const PopupMenuItem(
    value: 3,
    child: Text(
      'Gujarati',
    ),
  ),
];
