import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:isllame/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'hadeth_details/hadeth_details.dart';
import 'sura_details/sura_details.dart';
import 'home_screen.dart';
import 'my_theme.dart';


void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider() ,
      child:  MyApp()));
}

class MyApp extends StatelessWidget {
  late MyProvider provider;
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<MyProvider>(context);
    initSharedPreferences();

    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      locale: Locale(provider.languageCode),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => const HadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
  Future<void> initSharedPreferences()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var language = prefs.getString("language");
    if(language!=null){
      provider.changeLanguage(language);
    }
    var isDark=prefs.getBool("isDark");
    if (isDark==true){
      provider.changeTheme(ThemeMode.dark);
    }else if (isDark==false){
      provider.changeTheme(ThemeMode.light);
    }
  }
}
