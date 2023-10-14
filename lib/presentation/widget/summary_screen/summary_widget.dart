import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';
import 'package:wallet_apps/utils/extension.dart';
import 'package:wallet_apps/utils/scaler.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Constant.standardPadding * 17,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    MyColors.kPastelCream,
                    MyColors.kPastelSoft,
                  ],
                  radius: .9,
                ),
                borderRadius: BorderRadius.circular(
                  Constant.standardPadding * 2,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/img/casual-piggy.png',
              height: 200,
            ),
          ),
          Positioned(
            bottom: Constant.standardPadding / 2,
            left: Constant.standardPadding / 2,
            right: Constant.standardPadding / 2,
            child: Container(
              height: Constant.standardPadding * 7,
              decoration: BoxDecoration(
                color: MyColors.kWhite,
                borderRadius: BorderRadius.circular(
                  Constant.standardPadding * 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Constant.standardPadding * 2,
                  vertical: Constant.standardPadding,
                ),
                child: CarouselSlider(
                  items: [
                    buildValue(
                      context,
                      title: 'Pemasukan',
                      value: '220.403.020',
                      icons: Icons.north_east,
                    ),
                    buildValue(
                      context,
                      title: 'Pengeluaran',
                      value: '100.203.230',
                      icons: Icons.south_east,
                    ),
                  ],
                  options: CarouselOptions(
                    height: Constant.standardPadding * 6,
                    initialPage: 0,
                    reverse: false,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayCurve: Curves.easeInSine,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 700),
                    viewportFraction: 1,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row buildValue(BuildContext context,
      {required String title, required String value, required IconData icons}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: CustomTypography.kBodyMedium,
              textScaleFactor: Scaler.getFactorMobile(context),
            ),
            Text(
              'Rp. $value',
              style: CustomTypography.kHeadlineSmall,
              textScaleFactor: Scaler.getFactorMobile(context),
            )
          ],
        ),
        (Constant.standardPadding * 3).pw,
        CircleAvatar(
          backgroundColor: MyColors.kPurpleCream,
          radius:
              Constant.standardPadding * 2 * Scaler.getFactorMobile(context),
          child: Icon(
            icons,
            size:
                Constant.standardPadding * 2 * Scaler.getFactorMobile(context),
            color: MyColors.kPurpleDark,
          ),
        )
      ],
    );
  }
}
