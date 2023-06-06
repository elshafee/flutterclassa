import 'company.dart';
import 'contract.dart';
import 'nda.dart';

class FlutterDeveloper extends Company implements Contract, NDA
{
  @override
  void bandOne() {
   print("Band One is");
  }

  @override
  void benifits() {
    print("you get 3000 EGP as bonus");
  }

  @override
  void daysoff() {
    print("you will get 3 daysoff per week");
  }

  @override
  void donotShareTheDataWithAnyone() {

  }

  @override
  void netSalary() {

  }

  @override
  void workingHours() {

  }


}