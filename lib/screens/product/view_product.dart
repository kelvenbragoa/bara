import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class ViewProduct extends StatefulWidget {
  const ViewProduct({ Key? key }) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {

  final String product = 'Vinagre de Maça 250ml';
  final String desc = 'Caixa de vinagre de 250ml';
  final String precoCompra = '100';
  final String precoVenda = '200';
  final String qtd = '50';
 




 
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
            const Header(title: 'Ver Stock - Produtos',),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Product()),
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
            title: 'Preço de Compra',
            desc: precoCompra
            ),

        RowTitle(
            title: 'Preço de Venda',
            desc: precoVenda
            ),

        RowTitle(
            title: 'Quantidade',
            desc: qtd
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

