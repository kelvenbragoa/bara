import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/expenses/expense.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class EditExpense extends StatefulWidget {
  const EditExpense({ Key? key }) : super(key: key);

  @override
  State<EditExpense> createState() => _EditExpenseState();
}

class _EditExpenseState extends State<EditExpense> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _phonecontroller = TextEditingController(text: 'Pagamento de Licenças');
  final TextEditingController _codecontroller = TextEditingController(text: '100');
  final TextEditingController _qtdcontroller = TextEditingController(text: '10');
  final TextEditingController _precocompracontroller = TextEditingController(text: '100');
  final TextEditingController _precovendacontroller = TextEditingController(text: '200');




 
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
            const Header(title: 'Editar Despesa',),
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
           
            Form(
        key: _key,
        
            child: SingleChildScrollView(
              child: Column(
                 
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                 
            
                         
            
                 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _phonecontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Despesa'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório. Digite nome do produto';
                        }
                       
                        // return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _codecontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Valor'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório. Digite a descrição do produto.';
                        }
                       
                        // return null;
                      },
                    ),
                  ),
                 
                ],
              ),
            ),
         
      ),
            
          ],
        ),

      ),
    );

  }
    
  }

