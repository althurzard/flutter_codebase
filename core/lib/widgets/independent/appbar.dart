import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:core/core.dart';
import 'package:core/generated_images.dart';
import '/styles/styles.dart';

class DefaultAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool? backwardsCompatibility;
  final Widget? leading;
  final ShapeBorder? shape;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool? automaticallyImplyLeading;
  final Color? backgroundColor;
  const DefaultAppbar({
    Key? key,
    required this.title,
    this.backwardsCompatibility,
    this.leading,
    this.centerTitle = false,
    this.shape,
    this.actions,
    this.automaticallyImplyLeading,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: centerTitle,
        elevation: 0,
        brightness: Brightness.dark,
        flexibleSpace: const Image(
          image: AssetImage(Img.header),
          fit: BoxFit.fill,
          height: 100,
        ),
        iconTheme: Theme.of(context)
            .appBarTheme
            .iconTheme
            ?.copyWith(color: Colors.white),
        backgroundColor: backgroundColor ?? Colors.transparent,
        automaticallyImplyLeading: automaticallyImplyLeading ?? true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backwardsCompatibility: backwardsCompatibility,
        leading: leading,
        actions: actions,
        shape: shape);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class StatusAppBar extends StatelessWidget with PreferredSizeWidget {
  final Brightness? brightness;
  const StatusAppBar({Key? key, this.brightness}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: brightness ?? Brightness.dark,
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0);
}

class BackAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool? backwardsCompatibility;
  final Widget? leading;
  final ShapeBorder? shape;
  final bool? centerTitle;
  final List<Widget>? actions;
  final bool? automaticallyImplyLeading;
  final Color? backgroundColor;
  const BackAppbar({
    Key? key,
    required this.title,
    this.backwardsCompatibility,
    this.leading,
    this.centerTitle,
    this.shape,
    this.actions,
    this.automaticallyImplyLeading,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: centerTitle,
        elevation: 0,
        brightness: Brightness.dark,
        flexibleSpace: const Image(
          image: AssetImage(Img.header),
          fit: BoxFit.fill,
          height: 100,
        ),
        iconTheme: Theme.of(context)
            .appBarTheme
            .iconTheme
            ?.copyWith(color: Colors.white),
        backgroundColor: backgroundColor ?? Colors.transparent,
        automaticallyImplyLeading: automaticallyImplyLeading ?? true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backwardsCompatibility: backwardsCompatibility,
        leading: leading ??
            IconButton(
                icon: SvgPicture.asset(
                  Ic.backIco,
                  color: AppColors.white,
                ),
                onPressed: () => Navigator.of(context).pop()),
        actions: actions,
        shape: shape);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class EmptyAppbar extends StatelessWidget with PreferredSizeWidget {
  const EmptyAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      iconTheme: Theme.of(context)
          .appBarTheme
          .iconTheme
          ?.copyWith(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
