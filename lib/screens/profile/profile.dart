import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/expenses/view_expense.dart';
import 'package:baraquitaapp/screens/product/components/product_list.dart';
import 'package:baraquitaapp/screens/product/create_product.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/profile/mensalidade/mensalidade.dart';
import 'package:baraquitaapp/screens/profile/password/password.dart';
import 'package:baraquitaapp/screens/sales/components/sell_list.dart';
import 'package:baraquitaapp/screens/sales/create_sell.dart';
import 'package:flutter/material.dart';



class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

   final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _nomecontroller = TextEditingController(text: 'Kelven Bragoa');
  final TextEditingController _nomebcontroller = TextEditingController(text: 'MetaAi');
  final TextEditingController _telefonecontroller = TextEditingController(text: '842648618');
  final TextEditingController _provinciacontroller = TextEditingController(text: 'Sofala');
  final TextEditingController _emailcontroller = TextEditingController(text: 'kelvenbragoa@hotmail.com');
  final TextEditingController _enderecocontroller = TextEditingController(text: 'Av.Eduardo Mondlane');
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
            const Header(title: 'Definições',),
            

            const SizedBox(height: defaultPadding,),
            RowTitle(
            title: 'Estado',
            desc: 'Ativo até 20-01-2000'
            ),

            

            InkWell(
              onTap: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Password()),
                    );
              },
              child: Container(
                padding: EdgeInsets.all(defaultPadding * 0.7),
                   
                    decoration: BoxDecoration(color: primaryColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text('Password'),
                  
                  const Icon(
                    Icons.arrow_forward, color:Colors.white54
                  )
                  ],
                ),
              ),
            ),

            const SizedBox(height: defaultPadding,),

            InkWell(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Mensalidade()),
                    );
              },
              child: Container(
                padding: EdgeInsets.all(defaultPadding * 0.7),
                   
                    decoration: BoxDecoration(color: primaryColor.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text('Mensalidades'),
                  
                  const Icon(
                    Icons.arrow_forward, color:Colors.white54
                  )
                  ],
                ),
              ),
            ),
            

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
                      controller: _nomecontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Nome completo'
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
                      controller: _nomebcontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Nome empreendimento'
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
                      controller: _telefonecontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Telefone'
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
                      controller: _provinciacontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Provincia'
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
                      controller: _enderecocontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Endereço'
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
                      controller: _emailcontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Email'
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

