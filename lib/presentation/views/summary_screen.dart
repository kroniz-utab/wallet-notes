import 'package:flutter/material.dart';
import 'package:wallet_apps/presentation/widget/summary_screen/summary_statistic.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';
import 'package:wallet_apps/utils/extension.dart';
import 'package:wallet_apps/utils/scaler.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MyColors.kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Constant.standardPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (Constant.standardPadding * 2).ph,
                Text(
                  'Ringkasan',
                  style: CustomTypography.kDisplaySmall,
                  textScaleFactor: Scaler.getFactorMobile(context),
                ),
                Text(
                  'Halo! ini lo statistik keuangan kamu!',
                  style: CustomTypography.kBodyMedium,
                  textScaleFactor: Scaler.getFactorMobile(context),
                ),
                (Constant.standardPadding * 2).ph,
                const SummaryStatistics(),
                // (Constant.standardPadding).ph,
                // Text(
                //   'Aktivitas Terbaru',
                //   style: CustomTypography.kHeadlineMedium,
                // ),
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemBuilder: (context, index) =>
                //       const CurrentTransactionWidget(),
                //   itemCount: 3,
                //   physics: const NeverScrollableScrollPhysics(),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
