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



class Password extends StatefulWidget {
  const Password({ Key? key }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

 final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _phonecontroller = TextEditingController();
  final TextEditingController _codecontroller = TextEditingController();
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
            const Header(title: 'Trocar password',),
            

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
                        labelText: 'Password antiga'
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
                        labelText: 'Nova password'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório. Digite a descrição do produto.';
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
                        labelText: 'Repetir nova password'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório. Digite a descrição do produto.';
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

