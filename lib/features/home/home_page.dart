import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_playground/features/create/create_button.dart';
import 'package:responsive_playground/features/filter/filter_button.dart';
import 'package:responsive_playground/features/filter/filter_page.dart';
import 'package:responsive_playground/features/navigation/navigation_page.dart';
import 'package:responsive_playground/features/search/search_button.dart';
import 'package:responsive_playground/resources/resources.dart';

import '../feed/feed_page.dart';
import '../navigation/navigation_button.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _homeScaffoldKey = GlobalKey();

  final GlobalKey<ScaffoldState> _feedScaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            if (!context.showNavigationAsDrawer)
              SizedBox(width: _HomePageSpecs.navigationPageWidth),
            Expanded(
              child: Scaffold(
                key: _homeScaffoldKey,
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  leading: context.showNavigationAsDrawer
                      ? NavigationButton(_homeScaffoldKey)
                      : null,
                  centerTitle: false,
                  title: Text('App Bar'),
                  actions: [
                    SearchButton(),
                    if (context.showFilterAsDrawer)
                      FilterButton(_feedScaffoldKey),
                  ],
                ),
                body: Scaffold(
                  key: _feedScaffoldKey,
                  endDrawer: context.showFilterAsDrawer ? filterDrawer : null,
                  body: Row(
                    children: [
                      Expanded(child: FeedPage()),
                      if (!context.showFilterAsDrawer) filterDrawer,
                    ],
                  ),
                ),
                drawer:
                    context.showNavigationAsDrawer ? navigationDrawer : null,
              ),
            ),
          ],
        ),
        if (!context.showNavigationAsDrawer) navigationDrawer,
        Align(
          alignment: context.createButtonAlignment,
          child: Padding(
            padding: EdgeInsets.only(
              top: context.createButtonTop,
              left: context.createButtonLeft,
              right: Spacings.large,
              bottom: Spacings.large,
            ),
            child: CreateButton(),
          ),
        )
      ],
    );
  }









  Widget get navigationDrawer => SizedBox(
        width: _HomePageSpecs.navigationPageWidth,
        child: NavigationPage(),
      );

  Widget get filterDrawer => SizedBox(
        width: _HomePageSpecs.filterPageWidth,
        child: FilterPage(),
      );
}

extension _HomePageSpecs on BuildContext {
  static const navigationPageWidth = 360.0;
  static const filterPageWidth = 300.0;

  bool get showNavigationAsDrawer {
    return [
      DisplaySize.xsmall,
      DisplaySize.small,
      DisplaySize.medium,
    ].contains(display.size);
  }

  bool get showFilterAsDrawer {
    return [
      DisplaySize.xsmall,
      DisplaySize.small,
    ].contains(display.size);
  }

  Alignment get createButtonAlignment {
    if ([
      DisplaySize.xsmall,
      DisplaySize.small,
    ].contains(display.size)) {
      return Alignment.bottomRight;
    } else {
      return Alignment.topLeft;
    }
  }

  double get createButtonTop {
    if ([
      DisplaySize.xsmall,
      DisplaySize.small,
    ].contains(display.size)) {
      return 0.0;
    } else {
      return 56.0 + 16.0;
    }
  }

  double get createButtonLeft {
    switch (display.size) {
      case DisplaySize.xsmall:
      case DisplaySize.small:
        return 0.0;
      case DisplaySize.medium:
        return 16.0;
      case DisplaySize.large:
      case DisplaySize.xlarge:
        return navigationPageWidth - (56.0 / 2);
      default:
        return 0.0;
    }
  }
}
