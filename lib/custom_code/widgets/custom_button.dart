// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/flutter_flow_widgets.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    this.width,
    this.height,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String text;
  final Future<dynamic> Function() onTap;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
        onPressed: widget.onTap,
        text: widget.text,
        options: FFButtonOptions(
          width: double.infinity,
          height: 56,
          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
          color: FlutterFlowTheme.of(context).primary,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'SF Pro Display',
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
          elevation: 0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(10),
        ));
  }
}
