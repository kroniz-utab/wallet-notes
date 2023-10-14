import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';
import 'package:wallet_apps/utils/extension.dart';

class CurrentTransactionWidget extends StatelessWidget {
  const CurrentTransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constant.standardPadding * 7,
      padding: EdgeInsets.all(Constant.standardPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Constant.standardPadding * 4,
            width: Constant.standardPadding * 4,
            decoration: BoxDecoration(
              color: MyColors.kPastelCream,
              borderRadius: BorderRadius.circular(Constant.standardPadding),
            ),
            child: CachedNetworkImage(
              imageUrl: 'https://img.icons8.com/emoji/48/sandwich-emoji.png',
              height: Constant.standardPadding * 2,
            ),
          ),
          Constant.standardPadding.pw,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gyukaku Premium Enak Sekali Bro Yakin',
                  style: CustomTypography.kTitleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Rp 350.000',
                  style: CustomTypography.kBodyMedium,
                ),
                Text(
                  '31 minutes ago',
                  style: CustomTypography.kBodySmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
