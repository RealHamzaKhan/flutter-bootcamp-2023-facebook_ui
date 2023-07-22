import 'package:flutter/material.dart';

TextFormField custom_TextFormField({final String? hintText,final bool isObsecure=false}){
  return TextFormField(
    obscureText: isObsecure,
              decoration: InputDecoration(
                isDense: true,
                hintText: hintText,
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            );
}