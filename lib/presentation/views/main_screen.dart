import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wallet_apps/presentation/provider/bottom_nav_provider.dart';
import 'package:wallet_apps/presentation/views/home_screen.dart';
import 'package:wallet_apps/presentation/views/summary_screen.dart';
import 'package:wallet_apps/styles/colors.dart';
import 'package:wallet_apps/styles/typograph.dart';
import 'package:wallet_apps/utils/constant.dart';
import 'package:wallet_apps/utils/scaler.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final idx = ref.watch(bottomNavProvider);
    final controller = ref.watch(bottomNavControllerProvider);

    return Scaffold(
      backgroundColor: MyColors.kWhite,
      body: PageView(
        controller: controller,
        children: [
          const HomeScreen(),
          const SummaryScreen(),
          Scaffold(
            backgroundColor: MyColors.kWhite,
            body: Center(
              child: Text(
                'Coming Soon (Budget)',
                style: CustomTypography.kDisplayMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: MyColors.kWhite,
            body: Center(
              child: Text(
                'Coming Soon (Group Spend)',
                style: CustomTypography.kDisplayMedium,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
        height:
            (Constant.standardPadding * 5) * Scaler.getFactorMobile(context),
        width: (Constant.standardPadding * 5) * Scaler.getFactorMobile(context),
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 20,
            onPressed: () {},
            backgroundColor: MyColors.kPurpleSuperDark,
            child: Center(
              child: Icon(
                Icons.add,
                size: Constant.standardPadding *
                    3 *
                    Scaler.getFactorMobile(context),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          LineIcons.home,
          LineIcons.pieChart,
          LineIcons.wallet,
          LineIcons.users,
        ],
        activeIndex: idx,
        gapLocation: GapLocation.center,
        onTap: (index) {
          ref.read(bottomNavProvider.notifier).state = index;
          controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 700),
            curve: Curves.decelerate,
          );
        },
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: Constant.standardPadding * 2,
        rightCornerRadius: Constant.standardPadding * 2,
        backgroundColor: MyColors.kGrey,
        activeColor: MyColors.kPurpleSuperDark,
        inactiveColor: MyColors.kPurpleSoft,
        iconSize: Constant.standardPadding * 2,
        elevation: 20,
        splashColor: MyColors.kPurpleSuperDark,
        shadow: BoxShadow(
          color: MyColors.kPurpleSoft,
          blurRadius: 5,
          blurStyle: BlurStyle.outer,
          spreadRadius: 2,
        ),
        scaleFactor: Scaler.getFactorMobile(context),
      ),
    );
  }
}
