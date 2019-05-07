import 'package:flutter/material.dart';
import '../demo/button.dart';
import '../demo/floating_action_button.dart';
import '../demo/popup_menu_button.dart';
import '../demo/form.dart';
import '../demo/checkbox.dart';
import '../demo/radio.dart';
import '../demo/switch.dart';
import '../demo/slider.dart';
import '../demo/datetime.dart';
import '../demo/simple_dialog.dart';
import '../demo/alert_dialog.dart';
import '../demo/bottom_sheet.dart';
import '../demo/snack_bar.dart';
import '../demo/expansion_panel.dart';
import '../demo/chip.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          listItem(title: 'ChipDemo', page: ChipDemo()),
          listItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          listItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          listItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
          listItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          listItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          listItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          listItem(title: 'SliderDemo', page: SliderDemo()),
          listItem(title: 'SwitchDemo', page: SwitchDemo()),
          listItem(title: 'RadioDemo', page: RadioDemo()),
          listItem(title: 'CheckboxDemo', page: CheckboxDemo()),
          listItem(title: 'FormDemo', page: FormDemo()),
          listItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
          listItem(title: 'Button', page: ButtonDemo()),
          listItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}

class listItem extends StatelessWidget {
  final String title;
  final Widget page;

  listItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
