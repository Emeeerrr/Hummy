import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for emailAddresslogin widget.
  TextEditingController? emailAddressloginController;
  String? Function(BuildContext, String?)? emailAddressloginControllerValidator;
  // State field(s) for passwordlogin widget.
  TextEditingController? passwordloginController;
  late bool passwordloginVisibility;
  String? Function(BuildContext, String?)? passwordloginControllerValidator;
  // State field(s) for tipoUsuarioReg widget.
  String? tipoUsuarioRegValue;
  FormFieldController<String>? tipoUsuarioRegValueController;
  // State field(s) for nombre-Create widget.
  TextEditingController? nombreCreateController;
  String? Function(BuildContext, String?)? nombreCreateControllerValidator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordloginVisibility = false;
    passwordCreateVisibility = false;
  }

  void dispose() {
    emailAddressloginController?.dispose();
    passwordloginController?.dispose();
    nombreCreateController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController?.dispose();
  }

  /// Additional helper methods are added here.

}
