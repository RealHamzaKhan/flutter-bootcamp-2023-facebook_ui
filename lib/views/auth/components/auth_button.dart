import 'package:facebook_ui/common/app_style.dart';
import 'package:flutter/material.dart';

Widget authButton({final Function()? onTap,final double? height,required String text,final Color? color}){
  return GestureDetector(
              onTap: onTap,
              child: Container(
                width: double.infinity,
                height: height,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text(text,style: appStyle(
                  size: 20,
                  fw: FontWeight.w600,
                  color: Colors.white
                ),),),
              ),
            );
}