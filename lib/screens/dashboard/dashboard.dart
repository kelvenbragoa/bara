import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/dashboard_card.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/recent_sells.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:flutter/material.dart';



class Dashboard
 extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        padding:  const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Header(title: 'Painel Analítico',),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Row(
              children: const [
                Expanded(child: DashboardCard(title: 'Total Custos/Despesas',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
                SizedBox(width: defaultPadding,),
                Expanded(child: DashboardCard(title: 'Total Vendas',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
            ],),
            Row(
              children: const [
                Expanded(child: DashboardCard(title: 'Total Lucro ',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
                SizedBox(width: defaultPadding,),
                Expanded(child: DashboardCard(title: 'Variância',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
            ],),
              ],
            ),
            /*Row(
              children: const [
                Expanded(child: DashboardCard(title: 'Total Custos',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
                SizedBox(width: defaultPadding,),
                Expanded(child: DashboardCard(title: 'Total Custos',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
            ],),
            const SizedBox(height: defaultPadding,),
            Row(
              children: const [
                Expanded(child: DashboardCard(title: 'Total Custos',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
                SizedBox(width: defaultPadding,),
                Expanded(child: DashboardCard(title: 'Total Custos',amount: 4000, amountMonth: 4000,svgSrc: "assets/icons/Documents.svg",)),
            ],),*/
            const SizedBox(height: defaultPadding,),
            RecentFiles(),
            
          ],
        ),

      ),
    );

  }
    
  }

