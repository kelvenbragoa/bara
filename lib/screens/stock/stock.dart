import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/dashboard_card.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/stock/components/recent_sells.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/stock/create_stock.dart';
import 'package:flutter/material.dart';



class Stock
 extends StatefulWidget {
  const Stock({ Key? key }) : super(key: key);

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(context),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        padding:  const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
            const Header(title: 'Stock',),
            Row(
              children: [
                ElevatedButton.icon(
                  style: TextButton.styleFrom(
                    padding:  const EdgeInsets.symmetric(
                      horizontal: defaultPadding   ,
                      vertical: defaultPadding 
                    )
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateStock()),
                    );
                  }, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Adicionar")),
              ],
            ),

            const SizedBox(height: defaultPadding,),
           
            const RecentFiles(),
            
          ],
        ),

      ),
    );

  }
    
  }

