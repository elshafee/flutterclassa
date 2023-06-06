import 'animal.dart';
import 'bird.dart';

class Duck extends Bird with Flyable{

  void duckisbird(){
    print("Duck is a Bird");
  }

  @override
  void fly(){
    print("Duck Can't Fly");
  }

}