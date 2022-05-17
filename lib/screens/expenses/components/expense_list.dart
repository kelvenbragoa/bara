

import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/models/Expense.dart';
import 'package:baraquitaapp/models/Stock.dart';
import 'package:baraquitaapp/models/StockProducts.dart';
import 'package:baraquitaapp/screens/expenses/edit_expense.dart';
import 'package:baraquitaapp/screens/expenses/view_expense.dart';
import 'package:baraquitaapp/screens/product/edit_product.dart';
import 'package:baraquitaapp/screens/product/view_product.dart';
import 'package:baraquitaapp/screens/stock/components/dialog.dart';
import 'package:baraquitaapp/screens/stock/edit_stock.dart';
import 'package:baraquitaapp/screens/stock/view_stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ExpenseList extends StatelessWidget {
  const ExpenseList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                      padding: const EdgeInsets.all(defaultPadding),
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child:Column(
                        children: [
                          Text("Despesas",
                          style: Theme.of(context).textTheme.subtitle1 ,),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(

                                
                                columns: const [
                                  DataColumn(
                                    label: Text("Despesas"),
                                    ),
                                  DataColumn(
                                    label: Text("Valor"),
                                    ),
                                  
                                 
                                 
                                  DataColumn(
                                    label: Text("Ações"),
                                    ),
                                 
                                ], 
                                rows: List.generate(demoExpense.length, (index) => recentFileDataRow(demoExpense[index],context),
                                ),
                              ),
                            ),
                          )
                          
                        ],
                        ),
                    );
  }


  
}

DataRow recentFileDataRow(Expense fileInfo,BuildContext context) {
  
    return DataRow(
      
                   cells: [
                    DataCell(Text(fileInfo.name ?? ''),),
                    DataCell(Text("${fileInfo.amount} MT")),
                   
                    DataCell(Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const EditExpense()),
                                          );
                                      },
                                      child: const Icon(Icons.edit)
                                      ),
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ViewExpense()),
                                          );
                                      },
                                      child: const Icon(Icons.remove_red_eye_outlined)
                                      ),
                                    InkWell(
                                      onTap: (){
                                        showAlertDialog1(context);
                                      },
                                      child: const Icon(Icons.delete)
                                      ),

                                  ],
                                )),

                                ]);
  }