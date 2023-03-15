import 'package:example/compiled_code/adding_order.dart';
import 'package:example/compiled_code/buttons/cancel_button.dart';
import 'package:example/compiled_code/colors_palette.dart';
import 'package:example/compiled_code/grid_view.dart';
import 'package:example/compiled_code/login_page_initial.dart';
import 'package:example/compiled_code/picking_confirmation.dart';
import 'package:example/list_example.dart';
import 'package:example/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbook/flutterbook.dart';

import 'compiled_code/appbar_with_text.dart';
import 'compiled_code/bin_item.dart';
import 'compiled_code/bin_location.dart';
import 'compiled_code/buttons/back_confirm_button.dart';
import 'compiled_code/buttons/grid_view_button.dart';
import 'compiled_code/buttons/popup_banner_confirm.dart';
import 'compiled_code/buttons/popup_button.dart';
import 'compiled_code/buttons/selection_button.dart';
import 'compiled_code/default_selection_page.dart';
import 'compiled_code/mobile_keyboard.dart';
import 'compiled_code/row_view_items.dart';

void main() {
  runApp(const Storyboard());
}

class Storyboard extends StatelessWidget {
  const Storyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterBook(
      themes: Themes.themes,
      categories: [
        Category(categoryName: 'LIBRARY', organizers: [
          Folder(
            folderName: 'Buttons',
            organizers: [
              Component(
                componentName: 'Ontego One Buttons',
                states: [
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Cancel Button',
                    builder: (context, c) => CancelButton(),
                  ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Back and Confirm Button',
                    builder: (context, c) => BackConfirmButton(),
                  ),
                  ComponentState(
                  codeSample: """PopupButton()""",
                  stateName: 'Pop up Button initial',
                  builder: (context, c) => PopupButton(),
                ),
                ComponentState(
                  codeSample: """PopupButtonSuccess()""",
                  stateName: 'Pop up Button Success',
                  builder: (context, c) => PopupButtonSuccess(),
                ),
                ComponentState(
                  codeSample: """SelectionButton()""",
                  stateName: 'Selection Button',
                  builder: (context, c) => SelectionButton(),
                ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Grid View Button',
                    builder: (context, c) => GridViewButton(),
                  ),
                ],
              ),
            ],
          ),
          Folder(
            folderName: 'Colors',
            organizers: [
              Component(
                componentName: 'Ontego One Color Palette',
                states: [
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Color Palette',
                    builder: (context, c) => ColorsPalette(),
                  ),
                ],
              ),
            ],
          ),
          Folder(
            folderName: 'Components',
            organizers: [
              Component(
                componentName: 'Example Components',
                states: [
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'App Bar ',
                    builder: (context, c) => AppbarWithText(),
                  ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Adding Order',
                    builder: (context, c) => AddingOrder(),
                  ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Grid View Mobile',
                    builder: (context, c) => GridViewV2(),
                  ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Picking Confirmation',
                    builder: (context, c) => PickingConfirmation(),
                  ),
                   ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Row View for Items',
                    builder: (context, c) => RowViewItems(),
                  ),
                ],
              ),
              Component(
              componentName: 'Inventory Counting',
              states: [
                ComponentState(
                  codeSample: """Bin Location """,
                  stateName: 'Primary',
                  builder: (context, c) => BinLocation(),
                ),
                ComponentState(
                  codeSample: """Bin Location """,
                  stateName: 'Secondary',
                  builder: (context, c) => BinItem(),
                ),
              ],
            ),
            Component(
              componentName: 'Keyboard',
              states: [
                ComponentState(
                  codeSample: """Bin Location """,
                  stateName: 'Mobile Keyboard',
                  builder: (context, c) => MobileKeyboard(),
                ),
              ],
            ),
              Component(
                componentName: 'Login Page',
                states: [
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Login Page Initial',
                    builder: (context, c) => LoginPageInitial(),
                  ),
                ],
              ),
              Component(
                componentName: 'Selection Page',
                states: [
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'Default',
                    builder: (context, c) => DefaultSelectionPage(),
                  ),
                  ComponentState(
                    codeSample: """Bin Location """,
                    stateName: 'After Selection (Default)',
                    builder: (context, c) => GridViewV2(),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
