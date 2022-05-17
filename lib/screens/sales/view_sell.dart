import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/sales/sell.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class ViewSell extends StatefulWidget {
  const ViewSell({ Key? key }) : super(key: key);

  @override
  State<ViewSell> createState() => _ViewSellState();
}

class _ViewSellState extends State<ViewSell> {

  final String product = 'Vinagre de Maça 250ml';
  final String desc = 'Caixa de vinagre de 250ml';
  final String precoUnitario = '100';
  final String precoTotal = '200';
  final String data = '20-01-2022';
 




 
  bool loading = false;

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
            const Header(title: 'Ver Venda',),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Sell()),
                    );
                  },
                  child: Row(children: const [
                    Icon(Icons.arrow_back),
                    Text("Voltar")
                  ],),
                )
              ],
            ),
            

            const SizedBox(height: defaultPadding,),
           
          RowTitle(
            title: 'Produto',
            desc: product
            ),
          
          RowTitle(
            title: 'Descriçao',
            desc: desc
            ),
          
          RowTitle(
            title: 'Preço Unitario',
            desc: precoUnitario
            ),

        RowTitle(
            title: 'Preço Total',
            desc: precoTotal
            ),

        RowTitle(
            title: 'Data',
            desc: data
            ),
            
          ],
        ),

      ),
    );

  }
    
  }

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
    required this.title,
    required this.desc,
  }) : super(key: key);

  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(
        
        children: [
           Text('$title : ',style: TextStyle(fontWeight: FontWeight.bold),),
          Text(desc)
        ],
      ),

       const SizedBox(height: defaultPadding,),
      ]
    )
    ;

  }
}

