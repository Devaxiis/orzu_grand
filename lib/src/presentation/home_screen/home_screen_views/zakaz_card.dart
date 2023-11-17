import 'package:flutter/material.dart';
import 'package:orzu_grand/src/service/constants/colors.dart';
import 'package:orzu_grand/src/service/constants/strings.dart';

class ZakazCard extends StatelessWidget {
  const ZakazCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 195,
        width: MediaQuery.sizeOf(context).width / 1.1,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16,top: 16),
              child: Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        style:TextStyle(color: ColorUi.appTxtCL,fontWeight: FontWeight.w700,fontSize: 16),
                        children: [
                          TextSpan(text: StringTxt.zakazNameTxt),
                          TextSpan(text: StringTxt.zakazNumberTxt,style:TextStyle(color: ColorUi.appBarIcCL,fontWeight: FontWeight.w600,fontSize: 14)),
                          TextSpan(text: StringTxt.zakazDateTxt,style:TextStyle(color: ColorUi.bodyZakazCardCheckCl,fontWeight: FontWeight.w600,fontSize: 14)),
                        ]
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: ColorUi.bodyZakazCardCheckCl,
                        borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    child: const Icon(Icons.check,color: ColorUi.bodyProfileTxtGreenCL,),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,bottom: 16),
                  child: Container(
                    height: 34,
                    width: MediaQuery.sizeOf(context).width /2.3,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: ColorUi.appTxtCL,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Text(StringTxt.zakazButtonTxt,style: TextStyle(color: Colors.white),),
                  ),
                ),
                const Spacer(),
                const SizedBox(
                    height: 100,
                    width: 100,
                    child: Image(image: AssetImage("assets/images/img_box.png"))),
              ],
            )
          ],
        ),
      ),
    );
  }
}

