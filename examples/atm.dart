import 'dart:io';

class ATM {
  var _pinCode = 0;
  var balance = 0;
  var name = "";
  var userChoice = 0;
  var money = 0;

  void getUserInformation() {
    print("Welcome TO Our Bank");
    print("Please Enter your name: ");
    name = stdin.readLineSync()!;
    print("Please Enter your PIN Code:");
    _pinCode = int.parse(stdin.readLineSync()!);
    print("Please Enter your Account Balance");
    balance = int.parse(stdin.readLineSync()!);
    atmOperations();
  }

  void atmOperations() {
    print("Please select the Operation that you need");
    print("1 => Deposit,\n2=>withdraw, \n3=> Check Balance, \n4=>Exit");
    userChoice = int.parse(stdin.readLineSync()!);
    switch (userChoice) {
      case 1:
        Deposit();
        break;
      case 2:
        withdraw();
        break;
      case 3:
        checkBalance();
        break;
      case 4:
        print("Thanks for using our bank atm");
        break;

      default:
        {
          print("Invalid input");
        }
    }
  }

  void Deposit() {
    print("Please enter the money that you need to deposit");
    money = int.parse(stdin.readLineSync()!);
    balance += money;
    print("Done Successfully");
    checkBalance();
  }

  void withdraw() {
    print("Please enter the money that you need to withdraw");
    money = int.parse(stdin.readLineSync()!);
    if (money < balance) {
      balance -= money;
      print("Done Successfully");
      checkBalance();
    } else {
      print("Sorry your balance isn't enough");
      douyouneedanythig();
    }
  }

  void checkBalance() {
    print("Your Current Balance is $balance");
    douyouneedanythig();
  }

  void douyouneedanythig() {
    print("Do you need anything else?");
    print("1=> yes,\n 2=> No");
    userChoice = int.parse(stdin.readLineSync()!);
    switch(userChoice){
      case 1:
        atmOperations();
        break;
      case 2:
        print("Thanks for using our bank atm");
    }

  }
}
