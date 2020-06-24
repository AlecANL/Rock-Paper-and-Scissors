import 'dart:io';

class Game {
  // properties
  List<String> usersName = [];
  List<int> chose = [];
  List<String> choseConver = [];

  // setter and getters

  // constructors
  Game() {
    this.createUser();
    this.convertChose();
    this.renderWinner();
  }

  // methods
  void createUser() {
    for (int i = 0; i < 2; i++) {
      stdout.writeln('write your username');
      String name = stdin.readLineSync();
      usersName.add(name);
    }
  }

  void userChose() {
    stdout.writeln('Chose an option: 1.- Paper, 2.-Rock, 3.- Scissors');
    for (int i = 0; i < usersName.length; i++) {
      stdout.writeln('chose your optin ${this.usersName[i]}');
      int choseOption = int.parse(stdin.readLineSync());
      chose.add(choseOption);
    }
  }

  void convertChose() {
    this.userChose();
    for (int i = 0; i < chose.length; i++) {
      switch ('${this.chose[i]}') {
        case '1':
          choseConver.add('paper');
          break;
        case '2':
          choseConver.add('rock');
          break;
        case '3':
          choseConver.add('scissors');
          break;
        default:
          stdout.writeln('sorry not found');
      }
    }
  }

  renderWinner() {
    if ('${this.choseConver[0]}' == '${this.choseConver[1]}') {
      stdout.writeln('empate');
    } else if ('${this.choseConver[0]}' == 'paper' &&
        '${this.choseConver[1]}' == 'rock') {
      stdout.writeln('${this.usersName[0]} is winner');
    } else if ('${this.choseConver[0]}' == 'rock' &&
        '${this.choseConver[1]}' == 'paper') {
      stdout.writeln('${this.usersName[1]} is winner');
    } else if ('${this.choseConver[0]}' == 'scissors' &&
        '${this.choseConver[1]}' == 'paper') {
      stdout.writeln('${this.usersName[0]} is winner');
    } else if ('${this.choseConver[0]}' == 'paper' &&
        '${this.choseConver[1]}' == 'scissors') {
      stdout.writeln('${this.usersName[1]} is winner');
    } else if ('${this.choseConver[0]}' == 'scissors' &&
        '${this.choseConver[1]}' == 'rock') {
      stdout.writeln('${this.usersName[1]} is winner');
    } else if ('${this.choseConver[0]}' == 'rock' &&
        '${this.choseConver[1]}' == 'scissors') {
      stdout.writeln('${this.usersName[0]} is winner');
    }
  }

  readUser() {
    for (int i = 0; i < usersName.length; i++) {
      stdout.writeln('${this.usersName[i]} chose ${this.choseConver[i]}');
    }
  }
}
