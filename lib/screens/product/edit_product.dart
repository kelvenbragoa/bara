import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/product/product.dart';
import 'package:baraquitaapp/screens/stock/stock.dart';
import 'package:flutter/material.dart';



class EditProduct extends StatefulWidget {
  const EditProduct({ Key? key }) : super(key: key);

  @override
  State<EditProduct> createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _phonecontroller = TextEditingController(text: 'Vinagre de Maça 250ml');
  final TextEditingController _codecontroller = TextEditingController(text: 'Caixa de vinagre de 250ml');
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
            const Header(title: 'Editar Stock - Produtos',),
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
                        labelText: 'Produto'
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
                      controller: _qtdcontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Quantidade'
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
                      controller: _precocompracontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Preço de compra(unidade)'
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
                      controller: _precovendacontroller,
            
                      decoration: const InputDecoration(
                        labelText: 'Preço de venda(unidade)'
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

