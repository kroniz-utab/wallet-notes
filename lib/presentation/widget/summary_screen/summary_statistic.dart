import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_apps/presentation/provider/home_screen_provider.dart';
import 'package:wallet_apps/presentation/widget/summary_screen/summary_widget.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';

class SummaryStatistics extends ConsumerStatefulWidget {
  const SummaryStatistics({
    super.key,
  });

  @override
  ConsumerState<SummaryStatistics> createState() => _SummaryStatisticsState();
}

class _SummaryStatisticsState extends ConsumerState<SummaryStatistics>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final viewController = ref.watch(summaryTabProvider);
    final viewIndex = ref.watch(summaryTabIndexProvider);

    TabController tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: viewIndex,
    );

    tabController.addListener(
      () {
        ref.read(summaryTabIndexProvider.notifier).state = tabController.index;
        viewController.animateToPage(
          tabController.index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
        );
      },
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: MyColors.kAlternateWhite,
            borderRadius: BorderRadius.circular(
              Constant.standardPadding,
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: Constant.standardPadding / 2,
          ),
          child: TabBar(
            physics: const NeverScrollableScrollPhysics(),
            tabs: const [
              Tab(text: 'Bulan ini'),
              Tab(text: 'Minggu ini'),
              Tab(text: 'Hari ini'),
            ],
            controller: tabController,
            isScrollable: false,
            padding: EdgeInsets.symmetric(
              horizontal: Constant.standardPadding,
            ),
            indicator: BoxDecoration(
              color: MyColors.kWhite,
              borderRadius: BorderRadius.circular(Constant.standardPadding),
              boxShadow: [
                BoxShadow(
                  color: MyColors.kPurpleCream,
                  offset: const Offset(0, 2),
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ],
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.symmetric(
              horizontal: Constant.standardPadding,
            ),
            automaticIndicatorColorAdjustment: true,
            labelStyle: CustomTypography.kTitleSmall,
            labelColor: MyColors.kBlack,
            unselectedLabelColor: MyColors.kBlack.withOpacity(.4),
          ),
        ),
        // (Constant.standardPadding).ph,
        SizedBox(
          height: Constant.standardPadding * 25,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: viewController,
            children: const [
              SummaryWidget(),
              SummaryWidget(),
              SummaryWidget(),
            ],
          ),
        )
      ],
    );
  }
}
