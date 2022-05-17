import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/product/components/product_list.dart';
import 'package:baraquitaapp/screens/product/create_product.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/sales/components/sell_list.dart';
import 'package:baraquitaapp/screens/sales/create_sell.dart';
import 'package:flutter/material.dart';



class Sell extends StatefulWidget {
  const Sell({ Key? key }) : super(key: key);

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
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
            const Header(title: 'Vendas',),
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
                      MaterialPageRoute(builder: (context) => const CreateSell()),
                    );
                  }, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Adicionar")),
              ],
            ),

            const SizedBox(height: defaultPadding,),
           
            const SellList(),
            
          ],
        ),

      ),
    );

  }
    
  }

