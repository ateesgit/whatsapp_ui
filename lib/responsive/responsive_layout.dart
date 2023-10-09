import 'package:flutter/material.dart';

class ResponsiveLayouts extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayouts({super.key,required this.mobileScreenLayout,required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ( context,  constraints) { 
        if(constraints.maxWidth > 900){
          //web screen
          return webScreenLayout;
        }
        //mobile screen
        return mobileScreenLayout;
       },);
  }
}