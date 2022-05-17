import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class ViewStock extends StatefulWidget {
  const ViewStock({ Key? key }) : super(key: key);

  @override
  State<ViewStock> createState() => _ViewStockState();
}

class _ViewStockState extends State<ViewStock> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final String product = 'Vinagre de Maça 250ml';
  final String desc = 'Caixa de vinagre de 250ml';
 




 
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
            const Header(title: 'Editar Stock - Produtos',),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Stock()),
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
           
          Row(
            
            children: [
              const Text('Produto:',style: TextStyle(fontWeight: FontWeight.bold),),
              Text(product)
            ],
          ),
          const SizedBox(height: defaultPadding,),
          Row(
            children: [
              const Text('Descrição:',style: TextStyle(fontWeight: FontWeight.bold)),
              Text(desc)
            ],
          )
            
          ],
        ),

      ),
    );

  }
    
  }

