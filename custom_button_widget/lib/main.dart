import 'package:flutter/material.dart';

class UnitConverter extends StatelessWidget {
  final String text;
  final dynamic color;
  final dynamic icon;

  const UnitConverter({Key? key, this.text = "", this.color, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildTitle(this.text, this.color, this.icon);
  }

  @override
  Widget _buildTitle(String text, dynamic color, dynamic icon) {
    return Material(
        color: Colors.transparent,
        child: Container(
            height: 99.0,
            child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(19.0)),
                hoverColor: this.color,
                splashColor: Color.lerp(this.color, Colors.white,.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            this.icon,
                            size: 59.0,
                          ),
                        )),
                    Expanded(
                        child: Text(
                          this.text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.0),
                        ))
                  ],
                ),
                onTap: () {
                  print("Clicked!!");
                }),
            padding: const EdgeInsets.all(7.0)));
  }
}