import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/product/components/product_list.dart';
import 'package:baraquitaapp/screens/product/create_product.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:flutter/material.dart';



class Product extends StatefulWidget {
  const Product({ Key? key }) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
            const Header(title: 'Produtos',),
            Row(
              children: [
                ElevatedButton.icon(
                  style: TextButton.styleFrom(
                    padding:  const EdgeInsets.symmetric(
                      horizontal: defaultPadding   ,
                      vertical: defaultPadding 
                    )
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CreateProduct()),
                    );
                  }, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Adicionar")),
              ],
            ),

            const SizedBox(height: defaultPadding,),
           
            const ProductList(),
            
          ],
        ),

      ),
    );

  }
    
  }

