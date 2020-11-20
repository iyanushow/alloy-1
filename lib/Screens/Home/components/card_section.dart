import 'package:alloy/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:alloy/constants.dart';

class CardSection extends StatefulWidget {
  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16, right: 6),
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 10),
              height: 199,
              width: 344,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(cards[index].cardBackground)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child:
                    SvgPicture.asset(cards[index].cardElementTop),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SvgPicture.asset(
                        cards[index].cardElementBottom),
                  ),
                  Positioned(
                    left: 29,
                    top: 48,
                    child: Text(
                      'CARD NUMBER',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 29,
                    top: 65,
                    child: Text(
                      cards[index].cardNumber,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 21,
                    top: 35,
                    child: Image.asset(
                      cards[index].cardType,
                      width: 27,
                      height: 27,
                    ),
                  ),
                  Positioned(
                    left: 29,
                    bottom: 45,
                    child: Text("CARD HOLDERNAME",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kWhiteColor,
                      ),),
                  ),
                  Positioned(
                    left: 29,
                    bottom: 21,
                    child: Text(cards[index].user,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor,
                      ),),
                  ),
                  Positioned(
                    left: 202,
                    bottom: 45,
                    child: Text("EXPIRY DATE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kWhiteColor,
                      ),),
                  ),
                  Positioned(
                    left: 202,
                    bottom: 21,
                    child: Text(cards[index].cardExpired,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor,
                      ),),
                  )
                ],
              ),
            );
          }),
    );
  }
}
