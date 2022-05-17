import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/auth/login.dart';
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



class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

   final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _nomecontroller = TextEditingController(text: 'Kelven Bragoa');
  final TextEditingController _nomebcontroller = TextEditingController(text: 'MetaAi');
  final TextEditingController _telefonecontroller = TextEditingController(text: '842648618');
  final TextEditingController _provinciacontroller = TextEditingController(text: 'Sofala');
  final TextEditingController _emailcontroller = TextEditingController(text: 'kelvenbragoa@hotmail.com');
  final TextEditingController _enderecocontroller = TextEditingController(text: 'Av.Eduardo Mondlane');
  final TextEditingController _passwordcontroller = TextEditingController(text: 'password');
  final TextEditingController _rpasswordcontroller = TextEditingController(text: 'password');
  final TextEditingController _sexocontroller = TextEditingController(text: 'Masculino');
  
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // backgroundColor: Colors.white,
      // elevation: 0,
      title:RichText(
        text: TextSpan(
          style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: 'Bara',
              style: TextStyle(color: Colors.yellow)
            ),
            TextSpan(
              text:'Quita',
              style: TextStyle(color:Colors.red)
            )
          ]
          
        )),
        
    ),
      body: SingleChildScrollView(
        padding:  const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [

             const Header(title: 'Registrar',),
            

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
                      controller: _sexocontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Sexo'
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

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _passwordcontroller,
                      obscureText: true,
            
                      decoration: const InputDecoration(
                        labelText: 'Password'
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
                      controller: _rpasswordcontroller,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Repetir Password'
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
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
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

