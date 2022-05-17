

import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/models/Stock.dart';
import 'package:baraquitaapp/models/StockProducts.dart';
import 'package:baraquitaapp/screens/stock/components/dialog.dart';
import 'package:baraquitaapp/screens/stock/edit_stock.dart';
import 'package:baraquitaapp/screens/stock/view_stock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RecentFiles extends StatelessWidget {
  const RecentFiles({ Key? key }) : super(key: key);

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
                          Text("Stock",
                          style: Theme.of(context).textTheme.subtitle1 ,),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(

                                
                                columns: const [
                                  DataColumn(
                                    label: Text("Produto Stock"),
                                    ),
                                  DataColumn(
                                    label: Text("Descrição"),
                                    ),
                                 
                                  DataColumn(
                                    label: Text("Ações"),
                                    ),
                                 
                                ], 
                                rows: List.generate(demoStock.length, (index) => recentFileDataRow(demoStock[index],context),
                                ),
                              ),
                            ),
                          )
                          
                        ],
                        ),
                    );
  }


  
}

DataRow recentFileDataRow(Stock fileInfo,BuildContext context) {
  
    return DataRow(
      
                   cells: [
                    DataCell(
                        Row(
                          children: [
                                        Text(fileInfo.title ?? ''),
                                        
                                      ],
                                    )
                                  ),
                                DataCell(Text(fileInfo.desc ?? '')),
                                
                                DataCell(Row(
                                  children: [
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const EditStock()),
                                          );
                                      },
                                      child: const Icon(Icons.edit)
                                      ),
                                    InkWell(
                                      onTap: (){
                                         Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const ViewStock()),
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