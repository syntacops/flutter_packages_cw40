import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
// #region Hide

class HoveringDemo extends StatelessWidget {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        key: _key,
        appBar: AppBar(
          title: Text('Hovering Demo'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hover Widget Demo',
                    textScaleFactor: 1.5,
                  ),
// #endregion
                  HoverWidget(
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      child: Center(child: Text('Hover Me..')),
                    ),
                    hoverChild: Container(
                      height: 200,
                      width: 200,
                      color: Colors.green,
                      child: Center(child: Text('Hover Me..')),
                    ),
                    onHover: (event) {
                      _key.currentState.showSnackBar(SnackBar(
                        content: Text('Yaay! I am Hovered'),
                      ));
                    },
                  )
// #region Hide 2
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hover Container Demo', textScaleFactor: 1.5),
// #endregion
                  HoverContainer(
                    width: 200,
                    height: 200,
                    hoverHeight: 220,
                    hoverWidth: 220,
                    color: Colors.red,
                    hoverColor: Colors.green,
                  )
                  // #region Hide 3
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hover AnimatedContainer Demo', textScaleFactor: 1.5),
                  // #endregion
                  HoverAnimatedContainer(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    hoverColor: Colors.green,
                  )
// #region Hide 4
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hover CrossFade Widget Demo', textScaleFactor: 1.5),
// #endregion
                  HoverCrossFadeWidget(
                    duration: Duration(milliseconds: 300),
                    firstChild: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.rectangle)),
                    secondChild: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle)),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          height: 200,
          width: 200,
          child: HoverButton(
            onpressed: () {},
            color: Colors.red,
            child: Center(
              child: Text('Hover Me..'),
            ),
            hoverTextColor: Colors.white,
            hoverColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
