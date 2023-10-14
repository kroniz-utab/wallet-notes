import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wallet_apps/presentation/widget/summary_screen/current_transaction.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';
import 'package:wallet_apps/utils/extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.kWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Constant.standardPadding,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                (Constant.standardPadding * 2).ph,
                Text(
                  'Halo, Seseorang!',
                  style: CustomTypography.kDisplaySmall,
                ),
                Constant.standardPadding.ph,
                const BalanceWidget(),
                Constant.standardPadding.ph,
                Text(
                  'Dompet kamu',
                  style: CustomTypography.kHeadlineSmall,
                ),
                (Constant.standardPadding / 2).ph,
                SizedBox(
                  height: Constant.standardPadding * 5,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) =>
                        index != 3 ? buildYourAccount() : buildAddNewWallet(),
                    separatorBuilder: (BuildContext context, int index) =>
                        (Constant.standardPadding / 2).pw,
                  ),
                ),
                (Constant.standardPadding * 2).ph,
                Text(
                  'Aktivitas Terbaru',
                  style: CustomTypography.kHeadlineSmall,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      const CurrentTransactionWidget(),
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddNewWallet() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(Constant.standardPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constant.standardPadding),
          border: Border.all(
            color: MyColors.kPastelSoft,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: MyColors.kPastelCream,
              child: Icon(
                LineIcons.plusCircle,
                size: Constant.standardPadding * 2,
                color: MyColors.kPurpleSuperDark,
              ),
            ),
            (Constant.standardPadding / 2).pw,
            Text(
              'Tambah Dompet',
              style: CustomTypography.kTitleSmall,
            )
          ],
        ),
      ),
    );
  }

  Container buildYourAccount() {
    return Container(
      padding: EdgeInsets.all(Constant.standardPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constant.standardPadding),
        border: Border.all(
          color: MyColors.kPastelSoft,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Constant.standardPadding * 4,
            width: Constant.standardPadding * 4,
            decoration: BoxDecoration(
              color: MyColors.kGrey,
              borderRadius: BorderRadius.circular(Constant.standardPadding),
            ),
            child: CachedNetworkImage(
              imageUrl: 'https://img.icons8.com/emoji/48/sandwich-emoji.png',
              height: Constant.standardPadding * 2,
            ),
          ),
          Constant.standardPadding.pw,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cash',
                style: CustomTypography.kTitleSmall,
              ),
              Text(
                'Rp. 1.200.000',
                style: CustomTypography.kTitleMedium,
              )
            ],
          )
        ],
      ),
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constant.standardPadding * 15,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            MyColors.kPastelCream,
            MyColors.kPastelSoft,
          ],
          radius: .9,
        ),
        borderRadius: BorderRadius.circular(
          Constant.standardPadding,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: Constant.standardPadding * 7,
            left: Constant.standardPadding,
            right: Constant.standardPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saldo Kamu',
                  style: CustomTypography.kTitleMedium,
                ),
                Text(
                  'Rp. 990.000.000',
                  style: CustomTypography.kDisplaySmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: Constant.standardPadding,
            right: Constant.standardPadding,
            child: Image.asset(
              'assets/img/piggy-bank.png',
              height: 90,
            ),
          )
        ],
      ),
    );
  }
}
