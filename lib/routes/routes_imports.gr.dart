// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:projec_8/page/booking-detail.dart' as _i1;
import 'package:projec_8/page/booking.dart' as _i2;
import 'package:projec_8/page/touris.dart' as _i5;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BookingDetail.name: (routeData) {
      final args = routeData.argsAs<BookingDetailArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BookingDetail(
          key: args.key,
          touri: args.touri,
        ),
      );
    },
    BookingApp.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BookingApp(),
      );
    },
  };
}

/// generated route for
/// [_i1.BookingDetail]
class BookingDetail extends _i3.PageRouteInfo<BookingDetailArgs> {
  BookingDetail({
    _i4.Key? key,
    required _i5.Touris touri,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          BookingDetail.name,
          args: BookingDetailArgs(
            key: key,
            touri: touri,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingDetail';

  static const _i3.PageInfo<BookingDetailArgs> page =
      _i3.PageInfo<BookingDetailArgs>(name);
}

class BookingDetailArgs {
  const BookingDetailArgs({
    this.key,
    required this.touri,
  });

  final _i4.Key? key;

  final _i5.Touris touri;

  @override
  String toString() {
    return 'BookingDetailArgs{key: $key, touri: $touri}';
  }
}

/// generated route for
/// [_i2.BookingApp]
class BookingApp extends _i3.PageRouteInfo<void> {
  const BookingApp({List<_i3.PageRouteInfo>? children})
      : super(
          BookingApp.name,
          initialChildren: children,
        );

  static const String name = 'BookingApp';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
