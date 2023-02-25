import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecktedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[Home(), News()];

  void onItemTap(int index) {
    setState(() {
      _selecktedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff161616),
        appBar: AppBar(
          backgroundColor: const Color(0xff39B7B6),
          foregroundColor: const Color(0xff161616),
        ),
        body: Center(child: _widgetOptions.elementAt(_selecktedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff39B7B6),
          fixedColor: const Color(0xff161616),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
          ],
          currentIndex: _selecktedIndex,
          onTap: onItemTap,
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SingleChildScrollView(
            child: Column(children: [
      Text(
        "This is home.\nThere's nothing here yet, but something will appear soon",
        style: TextStyle(
          color: Color(0xffBFBFBF),
          fontFamily: "IMFellGreatPrimerSC-Regular",
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      )
    ])));
  }
}

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SingleChildScrollView(
            child: Column(children: [
      Text(
        "There is no news yet",
        style: TextStyle(
          color: Color(0xffBFBFBF),
          fontFamily: "IMFellGreatPrimerSC-Regular",
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      )
    ])));
  }
}
