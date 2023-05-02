import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DonarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tipoDonacion widget.
  String? tipoDonacionValue;
  FormFieldController<String>? tipoDonacionValueController;
  // State field(s) for unidades widget.
  TextEditingController? unidadesController;
  String? Function(BuildContext, String?)? unidadesControllerValidator;
  String? _unidadesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Necesitamos saber cuantas unidades donarás';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for ubicacion widget.
  var ubicacionValue = FFPlace();
  // State field(s) for direccion widget.
  TextEditingController? direccionController;
  String? Function(BuildContext, String?)? direccionControllerValidator;
  String? _direccionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    unidadesControllerValidator = _unidadesControllerValidator;
    direccionControllerValidator = _direccionControllerValidator;
  }

  void dispose() {
    unidadesController?.dispose();
    direccionController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
