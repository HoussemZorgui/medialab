import 'package:flutter/material.dart';
import 'package:mediab/main.dart';
import 'package:nb_utils/nb_utils.dart';

import 'MLPharmacyProductComponent.dart';

class MLCategoryProductComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radiusOnly(topRight: 32),
        backgroundColor: appStore.isDarkModeOn ? black : white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            Text(
              'Analgestic',
              style: boldTextStyle(size: 24),
            ).paddingOnly(left: 16),
            10.height,
            MLPharmacyProductComponent(),
          ],
        ),
      ),
    );
  }
}
