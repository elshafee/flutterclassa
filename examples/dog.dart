import 'animal.dart';

class Dog extends Animal{
  @override
  void eating(){
    super.eating();
    print("Dog is eating");
  }
}

void main(){
  var dog = Dog();
  dog.eating();
}