import 'dart:io';  

class Parent {
  List<int> _numbers = [];
  Map<String, dynamic> _info = {};
  void loadData(List<int> nums, Map<String, dynamic> infoMap) {
    _numbers = nums;
    _info    = infoMap;
  }
  List<int> numbers() {
    List<int> oddList = [];
    for (int n in _numbers) {
      if (n % 2 != 0) {    
        oddList.add(n);
      }
    }
    return oddList;
  }
 
  dynamic info(String key) {
    if (_info.containsKey(key)) {
      return _info[key];     
    } else {
      return 'Not found!';   
    }
  }
}
class Child extends Parent {
  String execute(dynamic Function() fn) {
    return fn().toString();
  }
}
void main() {
 
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  stdout.write('Are you a student?: ');
  bool isStudent = stdin.readLineSync()!.toLowerCase() == 'yes';

  stdout.write('Enter your major  : ');
  String major = stdin.readLineSync()!;

  stdout.write('Enter numbers: ');
  List<int> userNumbers = stdin.readLineSync()!
      .trim()
      .split(' ')
      .map((e) => int.parse(e))
      .toList();
 
  Child child = Child();
  child.loadData(userNumbers, {
    'name'     : name,
    'age'      : age,
    'isStudent': isStudent,
    'major'    : major,
  });
 
  print('All numbers      : ${child._numbers}');
  print('Odd numbers only : ${child.numbers()}');
  print('');
 
  print('Name     : ${child.info('name')}');
  print('Age      : ${child.info('age')}');
  print('Student? : ${child.info('isStudent')}');
  print('Major    : ${child.info('major')}');
  print('GPA      : ${child.info('gpa')}');
  print('');
 
  List<int> odds = child.numbers();

  String line1 = child.execute(() => 'Hello, ${child.info('name')}!');
  String line2 = child.execute(() => 'Odd numbers: ${child.numbers()}');
  String line3 = child.execute(
    () => odds.isEmpty
        ? 'No odd numbers to sum!'
        : 'Sum of odd numbers: ${odds.reduce((a, b) => a + b)}',
  );

  print('Result:');
  print('  $line1');
  print('  $line2');
  print('  $line3');
 
}