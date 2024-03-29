import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../Utils/appconstants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
        required this.name,
        required this.title,
        required this.iconData,
        required this.textInputType, this.obscure=false, this.initialVal=""})
      : super(key: key);
  final String name, title;
  final IconData iconData;
  final TextInputType textInputType;
  final bool obscure;
  final String initialVal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 7,
        ),
        Theme(
          data: ThemeData(primaryColor: AppConst.mainColor.withOpacity(.8)),
          child: FormBuilderTextField(
            name: name,
            initialValue: initialVal,
            obscureText: obscure,
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(
                iconData,
                color: Colors.grey[400],
                size: 20,
              ),
           
              fillColor: Colors.grey[200],
              focusColor: AppConst.mainColor.withOpacity(.8),
            ),
            //onChanged: _onChanged,
            // valueTransformer: (text) => num.tryParse(text),
            keyboardType: textInputType,
          ),
        ),
      ],
    );
  }
}