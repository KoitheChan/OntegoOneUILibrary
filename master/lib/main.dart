import 'package:example/compiled_code/atoms/gridappbar_menu.dart';
import 'package:example/compiled_code/atoms/gridappbar_menu_options.dart';
import 'package:example/compiled_code/atoms/gridappbar_menu_options_hover.dart';
import 'package:example/compiled_code/atoms/gridview_icons.dart';
import 'package:example/compiled_code/atoms/keyboard_button.dart';
import 'package:example/compiled_code/atoms/pick_and_pack_circles.dart';
import 'package:example/compiled_code/atoms/refresh_icon.dart';
import 'package:example/compiled_code/atoms/text_field.dart';
import 'package:example/compiled_code/barcode.dart';
import 'package:example/compiled_code/after_selection_page.dart';
import 'package:example/compiled_code/barcode_without_input.dart';
import 'package:example/compiled_code/buttons/cancel_button.dart';
import 'package:example/compiled_code/buttons/keyboard_cancelconfirm.dart';
import 'package:example/compiled_code/gradient_app_bar.dart';
import 'package:example/compiled_code/buttons/grid_app_bar.dart';
import 'package:example/compiled_code/buttons/popup_failed.dart';
import 'package:example/compiled_code/font_size.dart';
import 'package:example/compiled_code/keyboardv2.dart';
import 'package:example/compiled_code/positions.dart';
import 'package:example/compiled_code/colors_palette.dart';
import 'package:example/compiled_code/grid_view.dart';
import 'package:example/compiled_code/login_page_initial.dart';
import 'package:example/compiled_code/picking_confirmation.dart';
import 'package:example/compiled_code/scan_item.dart';
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
import 'compiled_code/pick_and_pack_view.dart';

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
              Component(componentName: 'Pop Up Buttons', states: [
                ComponentState(
                  markdown: '''
### Pop Up Button Initial
This Pop-Up button appears when the user has just started the app to log in, or try test data. There are several different
                      variations of this button that will appear in the app with different text. ''',
                  codeSample: """
import 'package:flutter/material.dart';

class PopupButton extends StatelessWidget {
  const PopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 600.0,right: 400.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 450,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Do you want to explore the application first with the help of demo data?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 224,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFF1675D),
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Text(
                        "No",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 224,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF31AF80),
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Yes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Roboto',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );//,
    //);
  }
}

""",
                  stateName: 'Pop up Button initial',
                  builder: (context, c) => PopupButton(),
                ),
                ComponentState(
                    markdown: '''
### Pop Up Button Failed
This pop-up button appears when there is an issue with the input the user has chosen.
 ''',
                    codeSample: """
import 'package:flutter/material.dart';

class PopupButtonSuccess extends StatelessWidget {
  const PopupButtonSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 600,
            width: 500,
           color: Colors.white,
              child: Container(
                height: 450,
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 450,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.zero,
                              bottomRight: Radius.zero,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              "Picklist sent Succesfully",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                      
                  Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 448,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFF31AF80),
                            //borderRadius: BorderRadius.circular(10),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            "Confirm",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: 'Roboto',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ),
        ),
      ),
      );
  }
}
 """,
                    builder: (context, c) => PopupButtonFailed(),
                    stateName: 'Pop up Button Failed'),
                ComponentState(
                  markdown: '''
### Pop Up Button Success
This Success Button appears when you have successfully did something in the app. 
                  For example, this appears after the Picklist has been confirmed successfully. ''',
                  codeSample: """
import 'package:flutter/material.dart';

class PopupButtonSuccess extends StatelessWidget {
  const PopupButtonSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //body: Center(
        child: Container(
         color: Color.fromARGB(255, 243, 242, 242),
          child: Padding(
            padding: const EdgeInsets.only(left: 600.0,right: 400.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 450,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          "Picklist sent Succesfully",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 448,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF31AF80),
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Confirm",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Roboto',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}""",
                  stateName: 'Pop up Button Success',
                  builder: (context, c) => PopupButtonSuccess(),
                ),
              ]),
              Component(
                componentName: 'Ontego One Buttons',
                componentMarkdown: """### Buttons and Dialogue Boxes
The different buttons and dialogue boxes that appear in the OntegoOne App 
               """,
                states: [
                  ComponentState(
                    markdown: """
### Cancel Button
Takes user back to the page they were at before from the Selection Page.
               """,
                    codeSample: r'''
child: Center(
                  child: Container(
                    width: 250,
                    height: 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2FA8D0),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    decoration:
                        BoxDecoration(color: Color(0xFFFAFAFA), boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                      ),
                    ]),
                  ),
                ),
                stateName: 'Cancel Button),''',
                    stateName: 'Cancel Button',
                    builder: (context, c) => CancelButton(),
                  ),
                  ComponentState(
                    markdown: """
### Back and Confirm Buttons
Lets the user make the decision to go back to the previous menu, or confirm their choice.
               """,
                    codeSample: r'''
child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 124,
                        decoration:
                            BoxDecoration(color: Color(0xFFFAFAFA), boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                          ),
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Back',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF089CD1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 124,
                        decoration:
                            BoxDecoration(color: Color(0xFFF3F6F6), boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                          ),
                        ]),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFFABADB1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                stateName: 'Back and Confirm Buttons'),''',
                    stateName: 'Back and Confirm Buttons',
                    builder: (context, c) => BackConfirmButton(),
                  ),
                  ComponentState(
                    markdown: '''
### Selection Button
This button appears after selecting several functions in the OntegoOne App. For example, after
                  clicking "Goods Receipts," this Select Supplier button will appear on top of another button with another text. ''',
                    codeSample: """
import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 600.0,top: 350.0,right: 400.0),
        child: Column(
          children: [
            SizedBox(
              child: Container(
                height: 70,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF2FA8D0),
                ),
                child: Center(
                  child: Text(
                    "Select Supplier",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
""",
                    stateName: 'Selection Button',
                    builder: (context, c) => SelectionButton(),
                  ),
                  ComponentState(
                    markdown: """
### GridView Singular Button
The buttons that make up the grid use multiple singular buttons.
               """,
                    codeSample: r'''
 child: Center(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF089CD1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 250,
                        width: 250,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'imgs/delivery.png',
                                height: 30,
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Delivery',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  stateName: 'Singular Button'),
            ]),''',
                    stateName: 'Grid View Button',
                    builder: (context, c) => GridViewButton(),
                  ),
                  ComponentState(
                      markdown: '''
### Keyboard Cancel and Confirm Buttons
These are the Cancel and Confirm buttons that the Mobile Keyboard has.
 ''',
                      codeSample: '''
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeyboardCancelConfirm extends StatelessWidget {
  const KeyboardCancelConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          children: [
            Container(
              height: 40,
              width: 204,
              child: Center(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Color(0xFF2FA8D0),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 204,
              color: Color(0xFF2FA8D0),
              child: Center(
                child: Text(
                  "Confirm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 ''',
                      builder: (context, c) => KeyboardCancelConfirm(),
                      stateName: 'Keyboard Cancel & Confirm')
                ],
              ),
            ],
          ),
          Folder(
            folderName: 'Global Presets',
            organizers: [
              Component(
                componentName: 'Preset Lists',
                states: [
                  ComponentState(
                    markdown: """
### OntegoOne Colour Palette
These colours are used throughout OntegoOne for a more immersive and aesthetic experience with the app. 
The full code can be found on lib/app/helpers/app_colors.dart.
               """,
                    codeSample: """
class AppColors {
  static const Color mainColor = Color(0xFF009BCF);
  static const Color greyTextField = Color(0xFFF0F3F3);
  static const Color featureBox = Color(0xFF31AFD8);
  static const Color optionRed = Color(0xFFF1675D);
  static const Color optionGreen = Color(0xFF31AF80);
  static const Color greyContainer = Color(0xFF969696);
  static const Color blueButton = Color(0xFF31AFD8);
  static const Color disabledButton = Color(0xFFF3F6F6);
  static const Color disabledDarkButton = Color(0xFFABADB1);
  static const Color blueText = Color(0xFF009BD1);
  static const Color greyText = Color(0xFF96999E);
  static const Color disabledText = Color(0xFFABADB1);
  static const Color standardText = Colors.black;
  static const Color darkGreyText = Color(0xFF838383);
  static const Color white = Colors.white;
  static const Color greyRow = Color.fromARGB(255, 244, 246, 245);
  static const Color greyBottomDivider = Color.fromARGB(255, 202, 203, 205);
  static const Color grayTopDevider = Color.fromARGB(255, 226, 226, 226);
  static const Color greenTickBox = Color(0xFF019C63);
  static const Color greenTrafficLight = Color(0xFF41C300);
  static const Color redTrafficLight = Color(0xFFF44236);
  static const Color orange = Color(0xFFF6891F);
  static const Color yellow = Color(0xFFFFD234);
  static const Color darkGreen = Color(0xFF1B6948);
  static const Color darkerGreen = Color(0xFF0B452C);
  static const Color highlightDefault = Color(0xFF5A8E12);
  static const Color lighterGreen = Color(0xFFC1E09E);
const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

                    """,
                    stateName: 'Color Palette',
                    builder: (context, c) => ColorsPalette(),
                  ),
                  ComponentState(markdown: '''
### Font Sizes in OntegoOne
These are the global font sizes that are used in OntegoOne. 
The full code can be found on lib/app/helpers/app_font_sizes.dart.
 ''', codeSample: '''
import 'package:flutter/material.dart';

class FontSize extends StatelessWidget {
  const FontSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  width: 600,
                  height: 1000,
                  child: Container(
                    color: Color.fromARGB(255, 254, 254, 254),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 10",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 12",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 14",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 15",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 16",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 18",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 20",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                              width: 600,
                              height: 50,
                              child: Text(
                                "Ontego One with Font Size 26",
                                style: TextStyle(
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.loose,
                            child: Container(
                              width: 600,
                              height: 80,
                              child: Text(
                                "Ontego One with Font Size 40",
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => FontSize(), stateName: 'Font Sizes'),
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
                    markdown: """
### Grid View
This GridView is made using a column of rows filled with containers that have been decorated to make it easier for clients to understand and navigate through the app.
### The full code can be found on lib/app/modules/dashboard/pages/dashboard_page.dart.
               """,
                    codeSample: """
import 'package:flutter/material.dart';

class GridViewV2 extends StatelessWidget {
  const GridViewV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Column(
                      children: [
                        Center(
                          child: Row(
                            // Goods
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/goods_receipt.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Goods Receipt',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                //Pick and Pack
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/pick_and_pack.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Pick and Pack',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_status.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Status',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_transfer.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Transfer',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/inventory_counting2.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Inventory Counting',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF089CD1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 150,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'lib/assets/imgs/delivery.png',
                                      height: 20,
                                      width: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text(
                                        'Delivery',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
    );
  }
}
 """,
                    stateName: 'Grid View Mobile',
                    builder: (context, c) => GridViewV2(),
                  ),
                  ComponentState(
                    markdown: """
### Picking Confirmation Dialogue Popup
This is the Dialogue Popup that appears when we want to confirm picking items.
The full code can be found at lib/app/modules/function/pick_and_pack/pages/pick_confirm_take_dialog.dart.
               """,
                    codeSample: r'''
  child: Center(
                      child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F6F6),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 7,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Column(
                            children: [
                              const Text('Please Pick'),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 7.0, right: 5, left: 7),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '20pcs',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5.0, right: 5.0),
                                        child: Image.asset(
                                          'imgs/pencil.png',
                                          height: 15,
                                          width: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text('of item'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('Etikettendrucker',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  'from Bin Location',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '05-601-R03-P01',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Image.asset(
                                  'imgs/upload.png',
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: const Text(
                                      'Back',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF089CD1),
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 250,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 50),
                                    child: const Text(
                                      'Confirm',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF089CD1),
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    stateName: 'Confirmation'),
 ''',
                    stateName: 'Picking Confirmation',
                    builder: (context, c) => PickingConfirmation(),
                  ),
                  ComponentState(
                    markdown: """
### Pick and Pack View
This is the button that the user will see after clicking on the Pick and Pack button from the menu.
""",
                    codeSample: """
import 'package:flutter/material.dart';

class RowViewItems extends StatelessWidget {
  const RowViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top:100,left: 100),
          child: Container(
            height: 200,
            width: 550,
            color: Color.fromARGB(255, 253, 253, 253),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 248, 248, 248),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 8.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            child: Image(
                              image: AssetImage("lib/assets/imgs/arrows.png"),
                              color: Color.fromARGB(255, 222, 222, 222),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Positions",
                            style: TextStyle(
                              color: Color.fromARGB(255, 142, 142, 142),
                            ),
                          ),
                          SizedBox(
                            width: 400,
                          ),
                          Text("1"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Pick-Up Number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "5",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Pick-Date",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 0,
                              ),
                              child: Text(
                                "2022-05-30",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image:
                                    AssetImage("lib/assets/imgs/green_single.png"),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "Positions",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 140,
                              ),
                              child: Text(
                                "5",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 108,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Remarks",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                right: 0,
                              ),
                              child: Text(
                                "",
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 189,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                image: AssetImage("lib/assets/imgs/red_single.png"),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

""",
                    stateName: 'Pick and Pack View',
                    builder: (context, c) => PickAndPackView(),
                  ),
                ],
              ),
              Component(
                componentName: 'Inventory Counting',
                componentMarkdown: """
### Inventory Counting Views
The different views of the Inventory Counting feature. These views also appear in different parts of the app as well. 
""",
                states: [
                  ComponentState(
                    markdown: '''
### Primary Button
This is the Bin Location button that doesn't only appear in Inventory Counting, but also in multiple parts of the app. It allows the user to choose a Bin Location.
 ''',
                    codeSample: """
import 'package:flutter/material.dart';

class BinLocation extends StatelessWidget {
  const BinLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            height: 80,
            width: 600,
            color: Color.fromARGB(255, 253, 253, 253,),
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bin Location",
                    style: TextStyle(
                      color: Color.fromARGB(255, 142, 142, 142),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text("05-501-R01-P01"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

""",
                    stateName: 'Primary',
                    builder: (context, c) => BinLocation(),
                  ),
                  ComponentState(
                    markdown: '''
### Secondary Button
This is the button that appears after clicking on the Primary button. 
 ''',
                    codeSample: """
import 'package:flutter/material.dart';

class BinItem extends StatelessWidget {
  const BinItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Container(
            color: Color.fromARGB(
              255,
              253,
              253,
              253,
            ),
            width: 600,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, left: 0.0),
                    child: Column(
                      children: [
                        Text(
                          "Item",
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Text(
                            "B10000",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text(
                            "Description",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 69.0),
                          child: Text(
                            "Etikettendrucker",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 110,
                      left: 120,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 25,
                          width: 40,
                          color: Color.fromARGB(255, 199, 199, 199),
                          child: Center(
                            child: Text(
                              "970",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 80.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:55.0),
                          child: Text(
                            "Quantity",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            "10 pc",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38.0),
                          child: Text(
                            "Batch",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60.0),
                          child: Text(
                            "B1-00098",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: Image(
                      image: AssetImage(
                        "lib/assets/imgs/tick_box.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

""",
                    stateName: 'Secondary',
                    builder: (context, c) => BinItem(),
                  ),
                  ComponentState(markdown: '''
### Positions Page in Inventory Counting
Inventory Counting view after choosing “Back” on Scan Item page.
 ''', codeSample: '''
import 'package:flutter/material.dart';

class Positions extends StatelessWidget {
  const Positions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 100),
          child: Container(
            height: 130,
            width: 550,
            color: Color.fromARGB(255, 253, 253, 253),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 248, 248, 248),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 8.0,
                      ),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("lib/assets/imgs/refresh.png"),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "Positions",
                            style: TextStyle(
                              color: Color.fromARGB(255, 121, 121, 121),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 440,
                          ),
                          Text("1"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 228, 228, 228),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Number",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Date",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Type",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 142, 142, 142),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                right: 90,
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                        ),
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "2016-09-08",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 185,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          child: Image(
                            image: AssetImage("lib/assets/imgs/people.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => Positions(), stateName: 'Positions Page'),
                  ComponentState(markdown: '''
### Scan Item View
This is the view the user will see after choosing a Bin Location. 
 ''', codeSample: '''
import 'package:flutter/material.dart';

class ScanItem extends StatelessWidget {
  const ScanItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 140,
              width: 500,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 500,
                    color: Color(0xFFFFD234),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text(
                            "Scan Item",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    padding: EdgeInsets.only(top: 15,left: 5,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEAEFF3),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Choose Item",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 180, 183, 184),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 ''', builder: (context, c) => ScanItem(), stateName: 'Scan Item'),
                ],
              ),
              Component(
                componentName: 'Keyboard',
                componentMarkdown: '''
### Keyboard for OntegoOne
This keyboard is used in the app so the user is able to input information inside the app when needed. 
 ''',
                states: [
                  ComponentState(
                    codeSample: """
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//add imoport to cupertino buttons
//use reference from keyboard_module.dart

class MobileKeyboard extends StatelessWidget {
  const MobileKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
      
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "a",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "b",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "c",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "d",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "e",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //first Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "f",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "g",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "h",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "i",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "j",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //2nd Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "k",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "l",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "m",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "n",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "o",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), //3rd Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          "123",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Icon(
                          CupertinoIcons.chevron_forward, 
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Image(
                          image: AssetImage("lib/assets/imgs/Aa.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Image(
                          image: AssetImage("lib/assets/imgs/Spacebar.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEFF3),
                      ),
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Icon(
                          Icons.backspace
                        ),
                      ),
                    ),
                  ],
                ),
              ), //4th Column
              SizedBox(
                height: 2,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 204,
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Color(0xFF2FA8D0),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 204,
                      color: Color(0xFF2FA8D0),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
""",
                    stateName: 'Mobile Keyboard',
                    builder: (context, c) => MobileKeyboard(),
                  ),
                  ComponentState(markdown: '''
### Keyboard V2
This keyboard is the Text Field that appears after clicking on an icon, and it allows users to type their information using an external keyboard.
 ''', codeSample: ''' import 'package:flutter/material.dart';

class KeyboardV2 extends StatelessWidget {
  const KeyboardV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            //child: Padding(
            //padding: const EdgeInsets.only(left: 600.0,right: 400.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 450,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Text(
                                    "Enter OntegoOne ID",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 280,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 30,
                                    child: Image(
                                      image: AssetImage(
                                        "lib/assets/imgs/inventory_transfer.png",
                                      ),
                                      color: Color(0xFF009BCF),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black,
                                          width: 3.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 17.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 6.0),
                                  child: Text(
                                    "Enter OntegoOne ID",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color(0xFF96999E),
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 240,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    "0/30",
                                    style: TextStyle(
                                      color: Color(0xFF96999E),
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 224,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF31AFD8),
                          fontFamily: 'Roboto',
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 224,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF31AFD8),
                        //borderRadius: BorderRadius.circular(10),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.zero,
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Confirm",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Roboto',
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 ''', builder: (context, c) => KeyboardV2(), stateName: 'Keyboard V2')
                ],
              ),
              Component(
                componentName: 'Login Page',
                states: [
                  ComponentState(
                    markdown: """
### OntegoOne Login Page
This is where users start up and login to their respective companies' OntegoOne system.
### The full code can be found at lib/app/modules/login/pages/occ_page.dart.
               """,
                    codeSample: """
child: Center(
                  child: Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Color(0xFFF3F6F6),
                        boxShadow: [
                          BoxShadow(blurRadius: 7, color: Colors.grey)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                              width: 600,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter OntegoOne ID',
                                  fillColor: Color(0xFF089CD1),
                                  suffixIcon:
                                      Icon(Icons.lock), //Right Side Icon
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Please enter your OntegoOne ID. You do not have one? Then register at:',
                          style: TextStyle(color: Color(0xFFA3A5AA)),
                        ),
                        Text(
                          'ontego.one',
                          style: TextStyle(color: Color(0xFF089CD1)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'English |',
                                style: TextStyle(color: Color(0xFFA3A5AA)),
                              ),
                              Text(
                                'Deutsch',
                                style: TextStyle(color: Color(0xFF089CD1)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'Do you have questions? Then send us an e-mail to: ',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFFA3A5AA)),
                            ),
                            Text(
                              'help@ontego.one',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xFF089CD1)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                stateName: 'Login Page Initial'),
""",
                    stateName: 'Login Page Initial',
                    builder: (context, c) => LoginPageInitial(),
                  ),
                ],
              ),
              Component(
                componentName: 'Selection Page',
                componentMarkdown: """
### The Selection Page
The Selection Page can be seen multiple times throughout the app, such as when choosing a Customer and selecting a Supplier. 
The full code can be found on lib/app/modules/function/goods_receipt/pages/select_supplier_page.dart.
               """,
                states: [
                  ComponentState(
                    markdown: """
### Selection Page
Choosing an option leads you to another page that takes you directly to its function. The cancel button returns you to the Grid View.
               """,
                    codeSample: """
import 'package:flutter/material.dart';

class DefaultSelectionPage extends StatelessWidget {
  const DefaultSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Container(
                    height: 500,
                    width: 250,import 'package:flutter/material.dart';

class DefaultSelectionPage extends StatelessWidget {
  const DefaultSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                  child: Container(
                    height: 500,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Choose a Supplier...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'No Supplier',
                            style: TextStyle(color: Color(0xFFF6902C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Servicepartner',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 277.0),
                          child: Center(
                            child: Container(
                              width: 250,
                              height: 55,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF2FA8D0),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 7,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Choose a Supplier...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'No Supplier',
                            style: TextStyle(color: Color(0xFFF6902C)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: const Text(
                            'Servicepartner',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 277.0),
                          child: Center(
                            child: Container(
                              width: 250,
                              height: 55,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Cancel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF2FA8D0),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFAFAFA),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 7,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}
""",
                    stateName: 'Default',
                    builder: (context, c) => DefaultSelectionPage(),
                  ),
                  ComponentState(
                    codeSample: """
 r'''
 child: Center(
                  child: Container(
                    height: 500,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(blurRadius: 7, color: Colors.grey)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Text(
                            'Choose an Order...',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: ColoredBox(
                            color: Color(0xFFF6902C),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 5),
                              child: SizedBox(
                                height: 35,
                                width: 250,
                                child: Text(
                                  'Servicepartner',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Text(
                            'All Orders',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Text(
                            '477 (3)',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Text(
                            '478 (3)',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: const Text(
                            'Add Order',
                            style: TextStyle(color: Color(0xFF089CD1)),
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 175),
                                child: Container(
                                  height: 45,
                                  width: 124,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFAFAFA),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                        ),
                                      ]),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Back',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFF089CD1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 175),
                                child: Container(
                                  height: 45,
                                  width: 124,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF3F6F6),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 7,
                                        ),
                                      ]),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Confirm',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xFFABADB1),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                stateName: 'After Selection'),
''',
""",
                    markdown: """
### After Selection Page
After choosing an option, this page will come up. For example, After selecting the Supplier, we can choose the product.
               """,
                    stateName: 'After Selection',
                    builder: (context, c) => AfterSelectionPage(),
                  ),
                ],
              ),
              Component(componentName: 'App Bar States', states: [
                ComponentState(markdown: """
### Grid App Bar
This app bar appears when the user is at the menu / grid view of the OntegoOne App.
""", codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          height: 80,
          width: 600,
          child: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [Color(0xFF089CD1), Color(0xFFF0F3F3)]),
          )),
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => GridAppBar(), stateName: 'Grid App Bar'),
                ComponentState(
                  markdown: """
### App Bar in OntegoOne
AppBar with Information and Icons. 
               """,
                  codeSample: """
import 'package:flutter/material.dart';

class AppbarWithText extends StatelessWidget {
  const AppbarWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF089CD1),
                      Color.fromARGB(255, 200, 232, 243),
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Color(0xFFFAFAFA),
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/imgs/icon_shadow.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        Text(
                          "Goods Receipt",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFAFAFA),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "Service Partner",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFAFAFA),
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "- Add Order",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFFFAFAFA),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 300,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.signal_wifi_off_outlined,size: 30,
                              color: Color(0xFFFF68F2A),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Image(
                              image: AssetImage("lib/assets/imgs/barcode.png"),
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

""",
                  stateName: 'App Bar ',
                  builder: (context, c) => AppbarWithText(),
                ),
                ComponentState(
                    markdown: """
### Gradient View
The gradient colours used before the information is added on the text bar. 
               """,
                    codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GradientAppBar extends StatelessWidget {
  const GradientAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          height: 200,
          width: 1500,
          child: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [Color(0xFF089CD1), Color(0xFFF0F3F3)]),
          )),
        ),
      ),
    );
  }
}

 ''',
                    builder: (context, c) => GradientAppBar(),
                    stateName: 'Gradient for App Bar'),
              ]),
              Component(componentName: 'Barcode Scanner States', states: [
                ComponentState(
                  markdown: """### Barcode Scan / Manual Input
OntegoOne supports scanning barcodes to check for orders, inventory, etc. In this example, it is the Barcode Scan / Manual Input version of the feature.
The full code can be found on lib/app/modules/function/delivery/pages/input_order_number.dart.
               """,
                  codeSample: """
import 'package:flutter/material.dart';

class AddingOrder extends StatelessWidget {
  const AddingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 600,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "Please scan the barcode of the order",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage("lib/assets/imgs/barcode_scan.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    padding: EdgeInsets.only(top: 15,left: 5,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEAEFF3),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Enter Manually",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 180, 183, 184),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
""",
                  stateName: 'Barcode Scanner',
                  builder: (context, c) => BarcodeScanner(),
                ),
                ComponentState(
                    markdown: '''
### Barcode Scanner without Input
This is another version of the scanner without the "Enter Manually" box. It appears several times in the app.
 ''',
                    codeSample: '''
import 'package:flutter/material.dart';

class BarcodeScannerWOInput extends StatelessWidget {
  const BarcodeScannerWOInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 600,
              color: Color.fromARGB(255, 253, 253, 253),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Text(
                    "Please scan the barcode of the order",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image(
                    image: AssetImage("lib/assets/imgs/barcode_scan.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 500,
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFEAEFF3),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 ''',
                    builder: (context, c) => BarcodeScannerWOInput(),
                    stateName: 'Barcode Sc. w/o Input'),
              ])
            ],
          ),
          Folder(folderName: 'Atoms', organizers: [
            Component(componentName: 'Smaller OntegoOne Items', states: [
              ComponentState(
                  markdown: '''
### Circles in Pick and Pack
These are the small circles in Pick and Pack's view 
 ''',
                  codeSample: ''' 
 import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PickAndPackCircle extends StatelessWidget {
  const PickAndPackCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage("lib/assets/imgs/green_single.png")),
          Image(image: AssetImage("lib/assets/imgs/red_single.png"))
        ],
      ),
    );
  }
}

 ''',
                  builder: (context, c) => PickAndPackCircle(),
                  stateName: 'Pick and Pack Circles'),
              ComponentState(markdown: '''
### Singular Keyboard Button
This is a singular keyboard button that makes up the keyboard of OntegoOne.
 ''', codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFEAEFF3),
        ),
        height: 40,
        width: 80,
        child: Center(
          child: Text(
            "a",
            style: TextStyle(
              color: Color(0xFF2FA8D0),
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => KeyboardButton(), stateName: 'Keyboard Button'),
              ComponentState(markdown: '''
### Refresh Icon
OntegoOne's Refresh Icon that can be found in the Pick and Pack View.
 ''', codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RefreshIcon extends StatelessWidget {
  const RefreshIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: AssetImage("lib/assets/imgs/refresh.png")),
    );
  }
}

 ''', builder: (context, c) => RefreshIcon(), stateName: 'Refresh Icon'),
              ComponentState(markdown: '''
### Text Fields
The text fields in OntegoOne appear like this multiple times throughout the app.
 ''', codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 500,
        padding: EdgeInsets.only(
          top: 15,
          left: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFEAEFF3),
        ),
        margin: EdgeInsets.all(10),
        child: Text(
          "Enter Manually",
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 180, 183, 184),
          ),
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => TextFields(), stateName: 'Text Fields'),
            ]),
            Component(componentName: 'Grid View Atoms', states: [
              ComponentState(markdown: '''
### Grid View Icons
These are the icons of every feature that can be seen on the grid view when the user first enters the app after logging in.
 ''', codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridViewIcons extends StatelessWidget {
  const GridViewIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color(0xFF31AFD8),
        child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage("lib/assets/imgs/goods_receipt.png")),
            Image(image: AssetImage("lib/assets/imgs/pick_and_pack.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_status.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_transfer.png")),
            Image(image: AssetImage("lib/assets/imgs/inventory_counting2.png")),
            Image(image: AssetImage("lib/assets/imgs/delivery.png")),
          ],
        ),
      ),
    );
  }
}

 ''', builder: (context, c) => GridViewIcons(), stateName: 'Grid View Icons'),
              ComponentState(
                  markdown: '''
### Grid App Bar Menu
This is the 3 dots icon that leads to more options at the menu in OntegoOne's App.
 ''',
                  codeSample: '''
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GridAppBarMenu extends StatelessWidget {
  const GridAppBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(
          Icons.more_vert,
          size: 50,
          color: Color(0xFF47AFD7),
        ),
      ),
    );
  }
}
 ''',
                  builder: (context, c) => GridAppBarMenu(),
                  stateName: 'Grid App Bar Menu'),
              ComponentState(
                  markdown: '''
### Grid App Bar Menu Options
Here is an example of one of the options that appear when clicking on the "Menu" button on home.
 ''',
                  builder: (context, c) => MenuOptions(),
                  stateName: 'Grid App Bar Menu Options'),
              ComponentState(
                  builder: (context, c) => MenuOptionsHover(),
                  stateName: 'Grid App Bar Menu Hover')
            ])
          ]),
        ]),
      ],
    );
  }
}
