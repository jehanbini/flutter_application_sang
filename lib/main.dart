import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 10, 10, 11)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 33, 33),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ 
          // 여기는 현재 잔고가 들어갈 메인화면 
          const Text('Welcome to Sibal Bank', style: TextStyle(fontSize: 30),),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 172, 165, 165),
                borderRadius: BorderRadius.circular(15)
                ), 
              height: 200,
              width: 350,
            ), 
            const SizedBox(height: 0.1,),
            const Text('Sibal'),
            const SizedBox(height: 30),
            //여기는 두번째 지출한도와 송금이 들어갈 서브화면 - 지출한도를 설정하는 파트를 삽입해야한다.
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 172, 165, 165),
                borderRadius: BorderRadius.circular(15)
              ),
              height: 100,
              width: 350,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                    child: const Text('지출한도'),
                  ), const SizedBox(width: 50,),
                  FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.black
                    ),
                    child: const Text('송금'),
                  ),
                ],
              ),
            ),//지출한도 아래 페이지를 의미한다.
            const SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 172, 165, 165),
                borderRadius: BorderRadius.circular(15)
                ), 
              height: 300,
              width: 350,
            )
          ],
        ),
      ),
    );
  }
}
