import 'package:baraquitaapp/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


AppBar HomeAppBar(BuildContext context) {
    return AppBar(
      // backgroundColor: Colors.white,
      // elevation: 0,
      title:RichText(
        text: TextSpan(
          style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: 'Bara',
              style: TextStyle(color: Colors.yellow)
            ),
            TextSpan(
              text:'Quita',
              style: TextStyle(color:Colors.red)
            )
          ]
          
        )),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: (){
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
            }, 
            icon: SvgPicture.asset("assets/icons/menu_setting.svg"))
        ],
    );
  }
