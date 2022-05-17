

import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/models/Sales.dart';
import 'package:baraquitaapp/models/Stock.dart';
import 'package:baraquitaapp/models/StockProducts.dart';
import 'package:baraquitaapp/screens/product/edit_product.dart';
import 'package:baraquitaapp/screens/product/view_product.dart';
import 'package:baraquitaapp/screens/sales/edit_sell.dart';
import 'package:baraquitaapp/screens/sales/view_sell.dart';
import 'package:baraquitaapp/screens/stock/components/dialog.dart';
import 'package:baraquitaapp/screens/stock/edit_stock.dart';
import 'package:baraquitaapp/screens/stock/view_stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SellList extends StatelessWidget {
  const SellList({ Key? key }) : super(key: key);

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
                          Text("Produtos",
                          style: Theme.of(context).textTheme.subtitle1 ,),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(

                                
                                columns: const [
                                  DataColumn(
                                    label: Text("Nome"),
                                    ),
                                  DataColumn(
                                    label: Text("Qtd"),
                                    ),
                                  
                                  DataColumn(
                                    label: Text("Preço Unitário"),
                                    ),

                                 DataColumn(
                                    label: Text("Total"),
                                    ),
                                  
                                  DataColumn(
                                    label: Text("Data"),
                                    ),
                                 
                                  DataColumn(
                                    label: Text("Ações"),
                                    ),
                                 
                                ], 
                                rows: List.generate(demoSales.length, (index) => recentFileDataRow(demoSales[index],context),
                                ),
                              ),
                            ),
                          )
                          
                        ],
                        ),
                    );
  }


  
}

DataRow recentFileDataRow(Sales fileInfo,BuildContext context) {
  
    return DataRow(
      
                   cells: [
                    DataCell(Text(fileInfo.name ?? ''),),
                    DataCell(Text(fileInfo.qtd ?? '')),
                    DataCell(Text("${fileInfo.precoUnitario} MT")),
                    DataCell(Text("${fileInfo.total} MT")),
                    DataCell(Text(fileInfo.date ?? '')),
                                
                    DataCell(Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const EditSell()),
                                          );
                                      },
                                      child: const Icon(Icons.edit)
                                      ),
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ViewSell()),
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