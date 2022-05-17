import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/expenses/expense.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class ViewExpense extends StatefulWidget {
  const ViewExpense({ Key? key }) : super(key: key);

  @override
  State<ViewExpense> createState() => _ViewExpenseState();
}

class _ViewExpenseState extends State<ViewExpense> {

  final String despesa = 'Pagamento de Licença';
  final String amount = '600';
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
            const Header(title: 'Ver Despensas',),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Expense()),
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
            title: 'Despesa',
            desc: despesa
            ),
          
          RowTitle(
            title: 'Valor',
            desc: amount
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

