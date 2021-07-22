import 'package:flutter/material.dart';
import 'package:adminpanel/constants.dart';

class CloudStorageInfo {
  final String svgSrc, title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiels,
    required this.percentage,
    required this.color,
  });
}

List demoMyFiels = [
  CloudStorageInfo(
    title: 'Documents',
    svgSrc: 'assets/icons/Documents.svg',
    numOfFiels: 1329,
    color: primaryColor,
    percentage: 35,
    totalStorage: '1.9GB',
  ),
  CloudStorageInfo(
    title: 'Google Drive',
    svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
    numOfFiels: 1329,
  ),
  CloudStorageInfo(
    title: "One Drive",
    svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
    numOfFiels: 1328,
  ),
  CloudStorageInfo(
    title: "Documents",
    svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
    numOfFiels: 5328,
  ),
];
