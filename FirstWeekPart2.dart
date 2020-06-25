/*
Author: Irmak Akyeli
Date: 23/06/2020
This code is for the first week of the project Biyosfer XYF where I will
will learn dart. It contains the even the most basic concepts. Last parts but my imagination started run
low so I used the teachers examples.
*/
import 'dart:async';

main(List<String> args) 
{
  var rectangle1 = Rectangle(8, 3 , true);
  int area = rectangle1.calcArea();
  int peri = rectangle1.calcPerimetre();

  print("The $rectangle1 has the area $area and the perimetre $peri");

  Function f1 = (int sub1, int sub2) {
    int result = sub1 - sub2;
    print(result);
  };

  f1(15, 5);
  highFunc("Substraction", f1);

  showTheContent();
  print(" ");
  showTheContent2();
}

////////////////////////////////////////////////////////////

abstract class Shape
{
  int height, width;

  Shape(int height, int width)
  {
    this.height = height;
    this.width = width;
  }

  void calcArea();

  void calcPerimetre();
}

class Rectangle extends Shape
{

  bool isItSymmetric;

  Rectangle(int height, int width, bool isItSymmetric) : super(height, width)
  {
    this.isItSymmetric = isItSymmetric;
  }

  @override
  int calcArea()
  {
    return height*width;
  }

  @override
  int calcPerimetre()
  {
    return 2*(height+width);
  }
}

class SoldInSteam
{
  void isOnSale()
  {
    print("Look the game is on Sale!");
  }

  void bougthTheGame()
  {
    print("You bougth the game.");
  }
}

class AgeOfEmpires
{
  void isItDEVersion() => print("Yes it is!");
}

class Skyrim implements SoldInSteam
{
  @override
  void isOnSale() => print("Look Skyrim is on Sale!");

  @override
  void bougthTheGame() => print("You bought Skyrim.");
}


class AoE implements SoldInSteam, AgeOfEmpires
{
  @override
  void isOnSale() => print("Look AoE is on Sale!");

  @override
  void bougthTheGame() => print("You bought AoE.");

  @override
  void isItDEVersion() => print("Yes it is AgeOfEmpires 2 Definitive Edition");
}

void highFunc(String whatIsIt, Function f)
{
  print("$whatIsIt: \nResult: ");
  f(13, 5);
}

showTheContent()
{
  print("It is starting");
  Future<String> content = takeContent();
  content.then((result) => print("The content of first alternative is: $result"));
}

showTheContent2() async
{
  print("It is starting");
  String content = await takeContent();
  print("The content of second alternative is: $content");
}

Future<String> takeContent()
{
  print("First step");

  Future<String> result = Future.delayed(Duration(seconds: 5), ()
  {
    return "here is the content";
  });

  print("Last step is completed");
  return result; 
}