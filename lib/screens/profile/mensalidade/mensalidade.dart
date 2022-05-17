import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/expenses/view_expense.dart';
import 'package:baraquitaapp/screens/product/components/product_list.dart';
import 'package:baraquitaapp/screens/product/create_product.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/profile/profile.dart';
import 'package:baraquitaapp/screens/sales/components/sell_list.dart';
import 'package:baraquitaapp/screens/sales/create_sell.dart';
import 'package:flutter/material.dart';



class Mensalidade extends StatefulWidget {
  const Mensalidade({ Key? key }) : super(key: key);

  @override
  State<Mensalidade> createState() => _MensalidadeState();
}

class _MensalidadeState extends State<Mensalidade> {

 final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _codecontroller = TextEditingController();
  bool loading = false;
  String selectedValue = "1";

 
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
            const Header(title: 'Mensalidade',),
            

            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
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
            title: 'Estado',
            desc: 'Ativo até 20-01-2000'
            ),

            Row(
              children: [
                Expanded(child: Text('A mensalidade é de 50MT por mês. Pago a partir do Mpesa.'))
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
                    child: DropdownButton(
                              value: selectedValue,
                              onChanged: (String? newValue){
                                setState(() {
                                  selectedValue = newValue!;
                                });
                              },
                              items: dropdownItems
                              ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _codecontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Número de celular vodacom'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório.';
                        }
                       
                        // return null;
                      },
                    ),
                  ),
                  
                 
                
            
                  
                  
            
                 loading ? Padding(padding: const EdgeInsets.all(8),
                    child: Center(child: Column(
                      children: const [
                        CircularProgressIndicator(),
                        Text('Por favor aguarde')
                      ],
                    )),
                  ) : 
                  
            
                  Padding(padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    
                    child: const Text('Submeter'),
                    onPressed: (){
                     if(_key.currentState!.validate()){
                       _key.currentState!.save();
                      //  print('Pagar ${_phonecontroller.text}');
                      // _function(_phonecontroller.text,_codecontroller.text, context);
                     }
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


List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("1 Mês - 50MT"),value: "1"),
    DropdownMenuItem(child: Text("2 Meses - 100MT"),value: "2"),
    DropdownMenuItem(child: Text("3 Meses - 150MT"),value: "3"),
    DropdownMenuItem(child: Text("4 Meses - 200MT"),value: "4"),
    DropdownMenuItem(child: Text("5 Meses - 250MT"),value: "5"),
    DropdownMenuItem(child: Text("6 Meses - 300MT"),value: "6"),
    DropdownMenuItem(child: Text("7 Meses - 350MT"),value: "7"),
    DropdownMenuItem(child: Text("8 Meses - 400MT"),value: "8"),
    DropdownMenuItem(child: Text("9 Meses - 450MT"),value: "9"),
    DropdownMenuItem(child: Text("10 Meses - 500MT"),value: "10"),
    DropdownMenuItem(child: Text("11 Meses - 550MT"),value: "11"),
    DropdownMenuItem(child: Text("12 Meses - 600MT"),value: "12"),
  ];
  return menuItems;
}