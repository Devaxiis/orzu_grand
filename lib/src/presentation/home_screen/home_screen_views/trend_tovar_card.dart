import 'package:flutter/material.dart';
import 'package:orzu_grand/src/presentation/home_screen/screens/korzinka_screen.dart';
import 'package:orzu_grand/src/service/constants/strings.dart';

class TrendTovarCard extends StatelessWidget {
  final String imageUrl;
  const TrendTovarCard({super.key,required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.sizeOf(context).width * 0.85,
      padding: const EdgeInsets.symmetric(
          horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ]),
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Image(
                image: AssetImage(
                  imageUrl,
                ),
                height: 130,
                width: 170,
              )),
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      StringTxt.zakaTovarDescriptionTxt,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 000 000 сум',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Text('1 750 000 сум',
                              style: TextStyle(
                                  color: Color(0xffff7011),
                                  fontSize: 16,
                                  fontWeight:
                                  FontWeight.w700)),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const KorzinkaScreen()));
                        },
                        child: Container(
                          height: 32,
                          width: 86,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color(0xffff7011),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(8))),
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
              ))
        ],
      ),
    );
  }
}
