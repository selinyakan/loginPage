import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GirisSayfasi(),
    );
  }
}

class GirisSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).primaryColorLight, //değişken gibi kolaylık sağlar
      //Color(0xFFcdb7b5)
      body: Center(
        child: Column(
          children: [
            SizedBox(
              //tepe ile boşluk
              height: 130.0,
            ),
            Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/logo.png"))), //logo
          ),
            SizedBox(
              //logo ve yazı arası boşluk
              height: 30.0,
            ),
            Text(
              "Selin'in Appi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              //yazı ve giriş yap arası boşluk
              height: 45.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(20.0),
              elevation: 10.0, //gölge
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mail ile Giriş",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Facebook Giriş",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "GMail Giriş",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              height: 52.0,
                              decoration: BoxDecoration(
                                color: Color(0xffee6363),
                                //color: Color.fromARGB(255, 238, 99, 99),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          //kutunun geçişi
                          Colors.blue[300],
                          Colors.blue[50],
                        ]),
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(20.0)), //kenarları yuvarlattı
                //padding: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width -
                    70.0, //cihaz ekranının enini kaplasın ancak dış kenardan 35er içe doğru
                height: 200.0,
                /*child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.pinkAccent,
                ),*/
              ),
            )
          ],
        ),
      ),
    );
  }
}
