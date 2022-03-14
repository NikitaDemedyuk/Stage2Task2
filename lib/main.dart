import 'dart:io';

class KeyNumberException {
}

Map setMap() {
  var mapFizzBizz = <int, String>{};
  for(int i = 1; i < 101; ++i) {
    if (i % 3 == 0 && i % 5 == 0) {
      mapFizzBizz[i] = "FizzBizz";
    } else if (i % 5 == 0) {
      mapFizzBizz[i] = "Bizz";
    } else if (i % 3 == 0) {
      mapFizzBizz[i] = "Fizz";
    } else {
      mapFizzBizz[i] = "Nothing";
    }
  }
  return mapFizzBizz;
}

void printMap(Map mapFizzBizz) {
  stdout.write("\n");
  for (var item in mapFizzBizz.entries) {
    stdout.write("Key: ${item.key}, Value: ${item.value} \n");
  }
  stdout.write("\n");
}

int main() {
  Map mapFizzBizz = setMap();
  printMap(mapFizzBizz);
  try {
    stdout.write("\nEnter the index: ");
    int numberKey = int.parse(stdin.readLineSync() ?? '0');
    if (numberKey > 100 || numberKey < 1) {
      throw (KeyNumberException);
    }
    stdout.write("\nKey: $numberKey, Value: ${mapFizzBizz[numberKey]}");
  } catch (KeyNumberException) {
      stdout.write('\nIncorrect index\n');
      return 0;
  }
  return 0;
}