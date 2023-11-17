import 'package:flutter/material.dart';
import 'package:orzu_grand/src/presentation/home_screen/home_screen.dart';
import 'package:orzu_grand/src/presentation/home_screen/screens/location_screen.dart';
import 'package:orzu_grand/src/presentation/home_screen/screens/message_screen.dart';
import 'package:orzu_grand/src/presentation/kategory/kategory_screen.dart';
import 'package:orzu_grand/src/presentation/korzinka/korzinka_screen.dart';
import 'package:orzu_grand/src/presentation/profile/profile_screen.dart';
import 'package:orzu_grand/src/presentation/sevimli/sevimli_screen.dart';
import 'package:orzu_grand/src/service/constants/colors.dart';
import 'package:orzu_grand/src/service/constants/strings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #AppBAr
      appBar: AppBar(
        forceMaterialTransparency:true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const LocationScreen()));
            },
          icon: const Image(image: AssetImage("assets/icons/ic_location.png"),height: 22,width: 22,),
        ),
        centerTitle: true,
        title: const Text(StringTxt.orzuGrandTxt,style: TextStyle(color: ColorUi.appTxtCL,fontSize: 18,fontWeight: FontWeight.w800),),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const MessageScreen()));
          },
              icon:const SizedBox(
                  height: 25,
                  width: 25,
                  child: Image(image: AssetImage("assets/images/img_messages.png"),)))
        ],
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          KategoryScreen(),
          KorzinkaScreen(),
          SevimliScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorUi.appTxtCL,
        selectedLabelStyle: const TextStyle(color: ColorUi.appTxtCL),
        showSelectedLabels: true,
        onTap: (value){
          index = value;
          controller.jumpToPage(index);
          setState(() {});
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(icon: SizedBox(height: 25,width: 25,child: Image(image: AssetImage("assets/icons/ic_button_home.png"),color: ColorUi.appBarIcCL,)),label: StringTxt.homeTxt),
          BottomNavigationBarItem(icon: SizedBox(height: 25,width: 25,child: Image(image: AssetImage("assets/icons/ic_button_search.png"),color: ColorUi.appBarIcCL,)),label: StringTxt.katalogTxt),
          BottomNavigationBarItem(icon: SizedBox(height: 25,width: 25,child: Image(image: AssetImage("assets/icons/ic_button_shopping_card.png"),color: ColorUi.appBarIcCL,)),label: StringTxt.korzinaTxt),
          BottomNavigationBarItem(icon: SizedBox(height: 25,width: 25,child: Image(image: AssetImage("assets/icons/ic_button_heart.png"),color: ColorUi.appBarIcCL,)),label: StringTxt.sevimliTxt),
          BottomNavigationBarItem(icon: SizedBox(height: 25,width: 25,child: Image(image: AssetImage("assets/icons/ic_button_user.png"),color: ColorUi.appBarIcCL,)),label: StringTxt.profileTxt),
        ],
      ),
    );
  }
}
