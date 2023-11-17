import 'package:flutter/material.dart';
import 'package:orzu_grand/src/presentation/home_screen/screens/korzinka_screen.dart';
import 'package:orzu_grand/src/service/constants/colors.dart';
import 'package:orzu_grand/src/service/constants/strings.dart';

class ReclamaButton extends StatelessWidget {
  const ReclamaButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 390,
          width: MediaQuery.sizeOf(context).width * 0.85,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 1,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// #1
              Row(
                children: [
                  const Expanded(
                      child: Image(
                    image: AssetImage('assets/images/img_changyutgich.png'),
                    height: 81,
                    width: 91,
                  )),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: const Text(
                              StringTxt.recTovarDescTxt,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.visible,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('1 750 000 сум',style: TextStyle(color: ColorUi.appTxtCL,fontSize: 16,fontWeight: FontWeight.w700)),
                            GestureDetector(
                             onTap: (){
                               Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const KorzinkaScreen()));
                             },
                              child: Container(
                                height: 32,
                                width: 62,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: ColorUi.appTxtCL,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/icons/ic_button_shopping_card.png'),
                                  height: 26,
                                  width: 26,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              /// #2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Image(
                    image: AssetImage('assets/images/img_playstation.png'),
                    height: 81,
                    width: 91,
                  )),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: const Text(
                              StringTxt.recTovarDescTxt,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.visible,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('1 750 000 сум',style: TextStyle(color: ColorUi.appTxtCL,fontSize: 16,fontWeight: FontWeight.w700)),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const KorzinkaScreen()));
                              },
                              child: Container(
                                  height: 32,
                                  width: 62,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: ColorUi.appTxtCL,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/icons/ic_button_shopping_card.png'),
                                    height: 26,
                                    width: 26,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                      child: Image(
                    image: AssetImage('assets/images/img_halodilnik.png'),
                    height: 81,
                    width: 91,
                  )),
                  /// #3
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            child: const Text(
                              StringTxt.recTovarDescTxt,
                              style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.visible,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('1 750 000 сум',style: TextStyle(color: ColorUi.appTxtCL,fontSize: 16,fontWeight: FontWeight.w700),),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const KorzinkaScreen()));
                              },
                              child: Container(
                                  height: 32,
                                  width: 62,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: ColorUi.appTxtCL,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/icons/ic_button_shopping_card.png'),
                                    height: 26,
                                    width: 26,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          width: MediaQuery.sizeOf(context).width * 0.85,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xffff7011),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: const Text(
            StringTxt.recButtonTxt,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
