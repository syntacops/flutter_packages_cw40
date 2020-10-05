import 'package:flutter/material.dart';
import 'package:flutter_packages_cw40/widgets/dialog_4_search_demo.dart';
import 'package:flutter_packages_cw40/widgets/editable_demo.dart';
import 'package:flutter_packages_cw40/widgets/flutter_event_calendar_demo.dart';
import 'package:flutter_packages_cw40/widgets/future_button_demo.dart';
import 'package:flutter_packages_cw40/widgets/hovering_demo.dart';
import 'package:flutter_packages_cw40/widgets/syncfusion_flutter_pdfviewer_demo.dart';

class DemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(64.0),
      child: PageView(
        children: [
          // FlutterEventCalendardemo(),
          // Dialog4SearchDemo(title: 'Dialog4Search'),
          // SyncFusionDemo(),
          // HoveringDemo(),
          // FutureButtonDemo(),
          // EditableDemo(),
        ],
      ),
    ));
  }
}
