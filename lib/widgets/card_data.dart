import 'package:flutter/material.dart';


class CardModel {
  String cardHolderName;
  String cardNumber;
  String expDate;
  String cvv;
  Color cardColor;

  CardModel({
    this.cardHolderName,
    this.cardNumber,
    this.cvv,
    this.expDate,
    this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "John Doe",
    cardNumber: "****  ****  ****  1234",
    cvv: "**4",
    expDate: "12/21",
    cardColor: Color(0xff00444f),
  ),
  CardModel(
    cardHolderName: "Alex Doe",
    cardNumber: "****  ****  ****  4321",
    cvv: "**1",
    expDate: "01/22",
    cardColor: Color(0xff802d38),
  ),
  CardModel(
    cardHolderName: "Zack Doe",
    cardNumber: "****  ****  ****  4321",
    cvv: "**1",
    expDate: "01/22",
    cardColor: Color(0xffff7b67),
  ),
];