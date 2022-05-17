import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/screens/components/header.dart';
import 'package:baraquitaapp/screens/components/home_app_bar.dart';
import 'package:baraquitaapp/screens/components/side_menu.dart';
import 'package:baraquitaapp/screens/expenses/components/expense_list.dart';
import 'package:baraquitaapp/screens/expenses/create_expense.dart';
import 'package:flutter/material.dart';



class Expense extends StatefulWidget {
  const Expense({ Key? key }) : super(key: key);

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
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
            const Header(title: 'Despesas',),
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
                      MaterialPageRoute(builder: (context) => const CreateExpense()),
                    );
                  }, 
                  icon: const Icon(Icons.add), 
                  label: const Text("Adicionar")),
              ],
            ),

            const SizedBox(height: defaultPadding,),
           
            const ExpenseList(),
            
          ],
        ),

      ),
    );

  }
    
  }

