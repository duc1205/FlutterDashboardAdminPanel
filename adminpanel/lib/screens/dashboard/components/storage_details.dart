import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      // height: 700,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: 'Documents Files',
            svgSrc: 'assets/icons/Documents.svg',
            numberOfFiles: 1329,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            title: 'Media Files',
            svgSrc: 'assets/icons/media.svg',
            numberOfFiles: 1329,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            title: 'Other Files',
            svgSrc: 'assets/icons/folder.svg',
            numberOfFiles: 1329,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            title: 'Unknown',
            svgSrc: 'assets/icons/unknown.svg',
            numberOfFiles: 140,
            amountOfFiles: '1.3GB',
          ),
        ],
      ),
    );
  }
}
