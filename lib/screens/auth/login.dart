import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/auth/register.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/dashboard/dashboard.dart';
import 'package:baraquitaapp/screens/expenses/view_expense.dart';
import 'package:baraquitaapp/screens/product/components/product_list.dart';
import 'package:baraquitaapp/screens/product/create_product.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/profile/mensalidade/mensalidade.dart';
import 'package:baraquitaapp/screens/profile/password/password.dart';
import 'package:baraquitaapp/screens/sales/components/sell_list.dart';
import 'package:baraquitaapp/screens/sales/create_sell.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _nomecontroller = TextEditingController(text: 'User@test.com');
  final TextEditingController _nomebcontroller = TextEditingController(text: 'password');
  
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
            const Header(title: 'Entrar',),
            

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
                        labelText: 'Email'
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Campo Obrigatório.';
                        }
                       
                        // return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: _nomebcontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Password'
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
                    child: const Text('Entrar'),
                    onPressed: (){
                     if(_key.currentState!.validate()){
                       _key.currentState!.save();
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Dashboard()));
                      //  print('Pagar ${_phonecontroller.text}');
                      // _function(_phonecontroller.text,_codecontroller.text, context);
                     }
                    },
                  ),
                  ),

                  Padding(padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: const Text('Registrar'),
                    onPressed: (){
                     if(_key.currentState!.validate()){
                       _key.currentState!.save();
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Register()));
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

