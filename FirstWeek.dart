/*
Author: Irmak Akyeli
Date: 23/06/2020
This code is for the first week of the project Biyosfer XYF where I will
will learn dart. It contains the even the most basic concepts. First 4 parts only.
*/

main(List<String> args) {

  final String authorName = "Irmak";
  const PI = 3.14;
  int authorAge = 20;
  int hexaNo = 0xAABBCC;
  double expoNo = 1.42e5;


  print("what is the raunded value of pi?");
  print("$authorName: it is $PI");
  
  print("can you write hexa numbers or so here?");
  print("$authorName: yes! you can which is preety cool look:");
 
  
  print("Hexa: $hexaNo Expo: $expoNo");
  print("you can even print int if you put " + 50.toString() + " to string like this or ${5*5} like this");
  //end of the first part


  for(int i =0; i < 5; i++)
  {
    print("Cool!");
  }

  List friends = ["Ecenaz", "Tolga", "Efe", "Ilke" ,"Denizhan", "Ayberk"];

  for(String temp in friends)
  {
    print("$temp is $authorName's friend" );
  }


  int count = 0;
  while(count < 0)
  {
    if (friends[count] == "Ilke")
    {
      print("Hello Ilke, how is project going??");
      break;
    }
    count++;
  }

  switch(authorAge)
  {
    case 15: print("Seem a little too young?");
    break;

    case 16: print("A little better");
    break;

    case 18: print("A bit more to go...");
    break;

    case 20: print("bingo she is 20 years old");
    break;

    default: {
      print("Well... It is rude to ask anyway...");
    }

  }

  int num = 50;
  int num2 = 1;

  if(num < num2)
  {
    print("No way 50 is smaller than 1!");
  }
  else if (50 == 1)
  {
    print("oh come on! you know they are not equal!");
  }
  else
  {
    print("Did you really checked that with an if statement??");
  }

  int smallNum = (num < num2) ? num : num2;
  print("The smaller number is $smallNum");
  //end of the second part

  List<String> foodSheLikes = List();

  foodSheLikes.add("Balık");
  foodSheLikes.add("Mantı");
  foodSheLikes.add("Köfte");
  foodSheLikes.add("Türlü");

  print("One of the food she likes: ${foodSheLikes[foodSheLikes.length - 1]}");
  print("Wait she does not like it! remove it!");

  foodSheLikes.remove("Türlü");

  for(String s in foodSheLikes)
  {
    print("She likes: $s");
  }

  print("Better like this.");

  try {
    int amountWanted = 50;
    GetAllowence(amountWanted);
  }catch(e){
    print("sorry we got an error: " + e.showMessage());
  }

  howIsShe();

  Map<String, String> friends2 = Map();
friends2["Ecenaz"] = "Best friend!";
friends2["Efe"] = "Coolest!";
friends2["Tolga"] = "Cutie";

friends2.forEach((key, value) => print("$authorName's friend $key is $value"));

}
///////////////////////////////////////////////////
GetAllowence (int amount)
{
  if (amount > 20)
    throw new noMoneyException();
  else
    print("$amount taken.");
}

class noMoneyException implements Exception{
  String showMessage() => "She is broke try again in 5 years...";
}

void howIsShe() => print("She is Fine... I guess?");

void herFavAnimals(String animal1, String animal2, String animal3)
{
  print("Wow you know her quite well!");
  print("Her favorite animals are $animal1, $animal2, $animal3");
}

void herFavAnimals2(String animal1, String animal2, {String animal3})
{
  print("Wow you know her well!");
  print("Her favorite animals are $animal1, $animal2");
  if(animal3 != null) print ("$animal3 too");
}

void herFavAnimals3(String animal1, {String animal2, String animal3})
{
  print("Wow you know her ok");
  print("Her favorite animals are $animal1");
  if(animal2 != null) print ("$animal2 too");
  if(animal3 != null) print ("$animal3 too");
}

class AuthorInfo
{
  String name;
  int age;
  //var _phoneNumber = "0534*****59";
  bool isSheCute = true;

  AuthorInfo(this.name, this.age)
  {
    print("Is she cute? $isSheCute");
  }

  AuthorInfo.withoutAge(this.name)
  {
    print("You don't know her age well. Is she still cute? $isSheCute");
  }

  void PlayGames() => print("She is playing video games.... Again!");
  String get getPhoneNo => "Well, She is not giving you her phone number... Maybe next time!";
  set happyBirthDay(int age)
  {
    if (age < this.age)
    print("that is not possible! Unless you have a time machine :( ");
    else
    {
    print("Is it her birthday? Happy $age years.");
    this.age = age;
    }
  }

}