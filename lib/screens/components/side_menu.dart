import 'package:baraquitaapp/screens/auth/login.dart';
import 'package:baraquitaapp/screens/dashboard/dashboard.dart';
import 'package:baraquitaapp/screens/expenses/expense.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/profile/profile.dart';
import 'package:baraquitaapp/screens/sales/sell.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

  class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color:Colors.white,
      child: Drawer(
        child: SingleChildScrollView(
          //este componente permite o scrolling do conteudo
          child: Column(
            children: [
              
              DrawerHeader(
                

                child: Image.asset("assets/images/logo.png")),

                DrawerListTile(
                  title: "Painel", 
                  svgSrc: "assets/icons/menu_dashbord.svg",
                  press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Dashboard()),
                    );
                  },
                ),
        
                DrawerListTile(
                  title: "Stock",
                  svgSrc: "assets/icons/menu_tran.svg",
                  press: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Stock()),
                    );
                  },
                ),
                DrawerListTile(
                  title: "Produtos",
                  svgSrc: "assets/icons/menu_task.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Product()),
                    );
                  },
                ),
                DrawerListTile(
                  title: "Vendas",
                  svgSrc: "assets/icons/menu_doc.svg",
                  press: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sell()),
                    );
                  },
                ),
                DrawerListTile(
                  title: "Despesas",
                  svgSrc: "assets/icons/menu_store.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Expense()),
                    );
                  },
                ),
                /* 
                DrawerListTile(
                  title: "Notification",
                  svgSrc: "assets/icons/menu_notification.svg",
                  press: () {},
                ),
                DrawerListTile(
                  title: "Profile",
                  svgSrc: "assets/icons/menu_profile.svg",
                  press: () {},
                ),
                */
                DrawerListTile(
                  title: "Definições",
                  svgSrc: "assets/icons/menu_setting.svg",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),

                DrawerListTile(
                  title: "Sair",
                  svgSrc: "assets/icons/menu_setting.svg",
                  press: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                  },
                ),
                
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key, 
    required this.title, 
    required this.svgSrc, 
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,),
      title: Text(title, style: const TextStyle(color: Colors.white54),),
    );
  }
}