import 'animal.dart';

class Cat extends Animal{
  @override
  void eating(){
    super.eating();
    print(super.animalColorSuper);
    print("Cat is eating");
    print(animalColorSuper = "orange");
    print(animalColorSuper);
  }
}

void main(){
  var cat = Cat();
  cat.eating();
}