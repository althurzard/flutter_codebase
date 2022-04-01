import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_bloc/localization_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../generated_images.dart';
import 'components/custom_tabbar.dart';
import 'package:core/core.dart';
import 'package:core/l10n/generated/l10n.dart';
import 'components/localization_widget.dart';

class TabbarController extends StatelessWidget {
  const TabbarController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = getIt.get<PersistentTabController>();
    return LocalizationWidget(builder: (context, state) {
      var items = _navBarsItems(context);
      return PersistentTabView.custom(
        context,
        controller: controller,
        itemCount: items
            .length, // This is required in case of custom style! Pass the number of items for the nav bar.
        screens: _buildScreens(),
        confineInSafeArea: true,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        hideNavigationBarWhenKeyboardShows: true,
        customWidget: CustomTabbar(
          confineToSafeArea: false,
          navBarDecoration: const NavBarDecoration(
              colorBehindNavBar: Colors.white,
              borderRadius: BorderRadius.horizontal()),
          navBarEssentials: NavBarEssentials(
              backgroundColor: Colors.white,
              selectedScreenBuildContext: context,
              navBarHeight: 64,
              selectedIndex: controller.index,
              items: _navBarsItems(context),
              onItemSelected: (index) {
                controller.jumpToTab(index);
              }),
        ),
      );
    });
  }

  List<Widget> _buildScreens() {
    // ignore: prefer_const_constructors
    return [Home(), Container(), Container(), Container()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    const textStyle = TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Ic.home,
          color: AppColors.primary,
        ),
        title: S.of(context).home,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.inactiveColor,
        textStyle: textStyle,
        inactiveIcon: SvgPicture.asset(
          Ic.home,
          color: AppColors.inactiveColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Ic.document,
          color: AppColors.primary,
        ),
        title: S.of(context).document,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.inactiveColor,
        textStyle: textStyle,
        inactiveIcon: SvgPicture.asset(
          Ic.document,
          color: AppColors.inactiveColor,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          Ic.notification,
          color: AppColors.primary,
        ),
        title: S.of(context).notification,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.inactiveColor,
        textStyle: textStyle,
        inactiveIcon: SvgPicture.asset(
          Ic.notification,
          color: AppColors.inactiveColor,
        ),
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(Ic.user, color: AppColors.primary),
          title: S.of(context).profile,
          activeColorPrimary: AppColors.primary,
          inactiveColorPrimary: AppColors.inactiveColor,
          textStyle: textStyle,
          inactiveIcon:
              SvgPicture.asset(Ic.user, color: AppColors.inactiveColor)),
    ];
  }

  void showMenuBottomSheet(BuildContext context) async {}
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonContainer(
            textString: S.of(context).submit_btn,
            press: () {
              context.read<LocalizationBloc>().add(SwitchLanguageEvent());
            },
          )
        ],
      ),
    );
  }
}
