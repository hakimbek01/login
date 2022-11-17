import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.grey.shade900,
                Colors.grey.shade600,
                Colors.grey.shade400,
              ]
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login", style: TextStyle(color: Colors.white, fontSize: 37),),
                    SizedBox(height: 15,),
                    Text("Welcome back!", style: TextStyle(color: Colors.white, fontSize: 20),)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        Card(
                          elevation: 30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Full Name',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                                Divider(),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                                Divider(),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Phone number',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                                Divider(),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          margin: EdgeInsets.only(top: 30, left: 15, right: 15),
                        ),
                        SizedBox(height: 20,),
                        MaterialButton(
                          height: 40,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          onPressed: (){},
                          color: Colors.green.shade800,
                          minWidth: 190,
                          child: Text("Sign Up", style: TextStyle(color: Colors.white,fontSize: 15),),
                        ),
                        SizedBox(height: 20,),
                        Text('Sign Up with SNS', style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                height: 40,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                onPressed: (){
                                  final Uri url = Uri.parse('https://www.facebook.com/campaign/landing.php?campaign_id=11554070363&extra_1=s%7Cc%7C477437435741%7Ce%7Cfacebook%7C&placement=&creative=477437435741&keyword=facebook&partner_id=googlesem&extra_2=campaignid%3D11554070363%26adgroupid%3D112923417056%26matchtype%3De%26network%3Dg%26source%3Dnotmobile%26search_or_content%3Ds%26device%3Dc%26devicemodel%3D%26adposition%3D%26target%3D%26targetid%3Dkwd-541132862%26loc_physical_ms%3D1028523%26loc_interest_ms%3D%26feeditemid%3D%26param1%3D%26param2%3D&gclid=EAIaIQobChMIsd_Bquq0-wIVHQWiAx3jEwYOEAAYASAAEgKQWfD_BwE');
                                  launchUrl(url);
                                },
                                color: Colors.blue,
                                minWidth: 100,
                                child: Text("Facebook", style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                              SizedBox(width: 10,),
                              MaterialButton(
                                height: 40,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                onPressed: (){
                                  final Uri url = Uri.parse("https://www.google.ru/");
                                  launchUrl(url);
                                },
                                color: Colors.red,
                                minWidth: 100,
                                child: Text("Google", style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                              SizedBox(width: 10,),
                              MaterialButton(
                                height: 40,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                onPressed: (){
                                  final Uri url = Uri.parse("https://www.apple.com/");
                                  launchUrl(url);
                                },
                                color: Colors.black,
                                minWidth: 100,
                                child: Text("Apple", style: TextStyle(color: Colors.white,fontSize: 15),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
