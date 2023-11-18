import 'package:flutter/material.dart';
import 'package:orzu_grand/src/presentation/home_screen/home_screen_views/reclama_button.dart';
import 'package:orzu_grand/src/presentation/home_screen/home_screen_views/trend_tovar_card.dart';
import 'package:orzu_grand/src/presentation/home_screen/home_screen_views/zakaz_card.dart';
import 'package:orzu_grand/src/presentation/home_screen/screens/korzinka_screen.dart';
import 'package:orzu_grand/src/presentation/profile/profile_screen.dart';
import 'package:orzu_grand/src/service/constants/colors.dart';
import 'package:orzu_grand/src/service/constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> category = [
    StringTxt.categoryTxt,
    StringTxt.mashxurTxt,
    StringTxt.skidkaRasrochkaTxt
  ];
  int value = 0;
  int valueCategory = 0;
  PageController controller = PageController(initialPage: 0);
  PageController trendController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #Backgroun Color
      backgroundColor: const Color(0xfff0f0f0),

      // #Body
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const ProfileScreen()));
              },
              icon: const Image(
                image: AssetImage("assets/icons/ic_profile.png"),
                height: 20,
                width: 20,
                color: Color(0xff000000),
              ),
            ),
            title: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        color: ColorUi.bodyProfileTxtBlackCL,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(text: StringTxt.userTxt),
                  TextSpan(
                      text: StringTxt.userNameTxt,
                      style: TextStyle(color: ColorUi.bodyProfileTxtGreenCL)),
                ])),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return const ZakazCard();
                  }),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
              ),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    /// #Search
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width / 1.1,
                        child: const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/icons/ic_search.png'),
                                    )),
                              ),
                              hintText: StringTxt.searchTxt,
                              filled: true,
                              fillColor: ColorUi.searchBackgroundCl,
                              border: UnderlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// #Reklama
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (__, index) {
                              return Container(
                                height: 170,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                clipBehavior: Clip.antiAlias,
                                width: MediaQuery.sizeOf(context).width / 1.3,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/img_anons.png"),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13)),
                                ),
                              );
                            }),
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// #Button
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const KorzinkaScreen()));
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.sizeOf(context).width / 1.1,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: ColorUi.appTxtCL,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: const Text(
                            StringTxt.aksiyaTxt,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    /// #Tovar den
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            StringTxt.zakaTovarDenTxt,
                            style: TextStyle(
                                color: ColorUi.bodyProfileTxtBlackCL,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "22:33:15",
                            style: TextStyle(
                                color: ColorUi.appBarIcCL,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// #Trend Tovar
                    Center(
                      child: SizedBox(
                        height: 310,
                        width: MediaQuery.sizeOf(context).width * 0.85,
                        child: PageView(
                          controller: trendController,
                          onPageChanged: (indf){
                            value = indf;
                            setState(() {});
                          },
                          children: const [
                            TrendTovarCard(imageUrl: 'assets/images/img_playstation.png'),
                            TrendTovarCard(imageUrl: 'assets/images/img_iphone.png'),
                            TrendTovarCard(imageUrl: 'assets/images/img_halodilnik.png'),
                          ],
                        ),
                      )
                    ),
                    const SizedBox(height: 11),

                    /// #three button
                    Row(
                      children: [
                        const Spacer(flex: 4),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              value = 0;
                              trendController.animateToPage(value, duration: const Duration(milliseconds: 700), curve: Curves.linear);
                            });
                          },
                          child: Container(
                            height: 34,
                            width: 34,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_playstation.png')),
                                shape: BoxShape.circle,
                                border: value == 0
                                    ? Border.all(
                                        width: 2,
                                        color: const Color(0xffff7011))
                                    : Border.all(
                                        width: 2,
                                        color: const Color(0xfff0F0F0))),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              value = 1;
                              trendController.animateToPage(value, duration: const Duration(milliseconds: 700), curve: Curves.linear);
                            });
                          },
                          child: Container(
                            height: 34,
                            width: 34,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_iphone.png')),
                                shape: BoxShape.circle,
                                border: value == 1
                                    ? Border.all(
                                        width: 2,
                                        color: const Color(0xffff7011))
                                    : Border.all(
                                        width: 2,
                                        color: const Color(0xfff0F0F0))),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              value = 2;
                              trendController.animateToPage(value, duration: const Duration(milliseconds: 700), curve: Curves.linear);
                            });
                          },
                          child: Container(
                            height: 34,
                            width: 34,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_divan.png')),
                                shape: BoxShape.circle,
                                border: value == 2
                                    ? Border.all(
                                        width: 2,
                                        color: const Color(0xffff7011))
                                    : Border.all(
                                        width: 2,
                                        color: const Color(0xfff0F0F0))),
                          ),
                        ),
                        const Spacer(flex: 4),
                      ],
                    ),
                    const SizedBox(height: 20),

                    /// #Rekomend vam
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        StringTxt.rekomendatsiyaTovarTxt,
                        style: TextStyle(
                            color: ColorUi.bodyProfileTxtBlackCL,
                            fontSize: 22,
                            fontWeight: FontWeight.w700),
                      ),
                    ),

                    const SizedBox(height: 20),
                    /// Category
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        height: 80,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: category.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      valueCategory = index;
                                      controller.animateToPage(valueCategory, duration: const Duration(milliseconds: 700), curve: Curves.linear);
                                    });
                                  },
                                  child: valueCategory == index
                                      ? Text(category[index],
                                          style: const TextStyle(
                                              color: Color(0xffff7011),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600))
                                      : Text(category[index],
                                          style: const TextStyle(
                                              color: Color(0xff7b7b7b),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600))),
                            );
                          },
                          separatorBuilder: (__, indx) {
                            return const SizedBox(width: 20);
                          },
                        ),
                      ),
                    ),
                    Center(
                        child: SizedBox(
                      height: 480,
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: controller,
                        onPageChanged: (indeks) {
                          setState(() {
                            valueCategory = indeks;
                          });
                        },
                        children: const [
                          ReclamaButton(),
                          ReclamaButton(),
                          ReclamaButton(),
                        ],
                      ),
                    )),
                    const SizedBox(height: 20),

                    /// #orzu blog text
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 24),
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Color(0xff14a23c),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700),
                              children: [
                            TextSpan(text: 'ORZU'),
                            TextSpan(
                                text: 'BLOG',
                                style: TextStyle(color: Color(0xffff7011))),
                          ])),
                    ),

                    /// #Reklama
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: SizedBox(
                        height: 200,
                        width: MediaQuery.sizeOf(context).width,
                        child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (_, index) {
                            return Container(
                              height: 200,
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              margin: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/img_reklama.png'),
                                    fit: BoxFit.cover),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 40,
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xffff7011),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: const Text(
                        StringTxt.recButtonTxt,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Container(
                        height: 140,
                        width: MediaQuery.sizeOf(context).width * 0.86,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0,0),
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ]
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  StringTxt.hamaTovarTxt,
                                  style: TextStyle(
                                      color: Color(0xff14A23C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: Text(StringTxt.hamaTovarDescTxt,
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),overflow: TextOverflow.visible,),
                                ),
                                Container(
                                  height: 30,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(right: 30),
                                  decoration: const BoxDecoration(
                                    color: Color(0xffff7011),
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                  ),
                                  child: const Text(
                                    StringTxt.katalogTxt,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Transform.scale(
                                    scale: 1.6,
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 15,right: 15),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/img_card.png'),
                                        height: 100,
                                        width: 100,
                                      ),
                                    )))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
