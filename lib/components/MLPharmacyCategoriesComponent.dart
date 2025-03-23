import 'package:flutter/material.dart';
import 'package:mediab/main.dart';
import 'package:mediab/model/MLMedicationData.dart';
import 'package:mediab/screens/PurchaseMoreScreen.dart';
import 'package:mediab/utils/MLDataProvider.dart';
import 'package:nb_utils/nb_utils.dart';

class MLPharmacyCategoriesComponent extends StatefulWidget {
  static String tag = '/MLPharmacyCategoriesComponent';

  @override
  MLPharmacyCategoriesComponentState createState() =>
      MLPharmacyCategoriesComponentState();
}

class MLPharmacyCategoriesComponentState
    extends State<MLPharmacyCategoriesComponent> {
  List<MLMedicationData> listOne = mlCategoryMedicineList();
  List<MLMedicationData> listTwo = mlPrescriptionMedicineDataList();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height(),
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radiusOnly(topRight: 32),
        backgroundColor: appStore.isDarkModeOn ? black : white,
      ),
      child: PurchaseMoreScreen().withHeight(context.height() * 0.2),
    );
  }
}
