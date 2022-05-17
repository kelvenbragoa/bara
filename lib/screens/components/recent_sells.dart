
import 'package:baraquitaapp/constants.dart';
import 'package:baraquitaapp/models/RecentFile.dart';
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
                          Text("Vendas Recentes",
                          style: Theme.of(context).textTheme.subtitle1 ,),
                          SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                columns: const [
                                  DataColumn(
                                    label: Text("Produto"),
                                    ),
                                  DataColumn(
                                    label: Text("Qtd"),
                                    ),
                                  DataColumn(
                                    label: Text("Total"),
                                    ),
                                 
                                ], 
                                rows: List.generate(demoRecentFiles.length, (index) => recentFileDataRow(demoRecentFiles[index]),
                                ),
                              ),
                            ),
                          )
                          
                        ],
                        ),
                    );
  }


  
}

DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(
                   cells: [
                    DataCell(
                        Row(
                          children: [
                                        Text(fileInfo.title ?? ''),
                                        
                                      ],
                                    )
                                  ),
                                DataCell(Text(fileInfo.date ?? '')),
                                DataCell(Text(fileInfo.size ?? '')),

                                ]);
  }