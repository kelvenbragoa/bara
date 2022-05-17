
import 'package:baraquitaapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({
    Key? key, 
   
    required this.svgSrc, 
    required this.title, 
    required this.amount, 
    required this.amountMonth,
  }) : super(key: key);

  final String svgSrc;
  final String title;
  final double amount;
  final double amountMonth;





  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.7),
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: primaryColor.withOpacity(0.1),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: SvgPicture.asset(svgSrc ,color: primaryColor,),
              ),
              const Icon(
                Icons.more_vert, color:Colors.white54
              )
            ],
          ),
          Text(title , 
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${amount} MT"
                , style: Theme.of(context)
                .textTheme.caption
                !.copyWith(color: 
                Colors.white70
                ),
                ),
                Text(" $amountMonth MT"
                , style: Theme.of(context)
                .textTheme.caption
                !.copyWith(color: 
                Colors.white
                ),
                ),
              ],
            )
        ],
      ),
    );
  }
}