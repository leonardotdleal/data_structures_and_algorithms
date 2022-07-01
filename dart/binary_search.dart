main() {
  List<int> list = [01, 03, 07, 09, 12, 15, 24, 26, 34, 49, 54, 66, 74, 78, 95];
  int itemToFind = 34;

  var result = binarySearch(list, itemToFind);

  print('O índice é ${result}');
}

int? binarySearch(List<int> list, int item) {
  int lowNumber = 0;
  int highNumber = list.length - 1;

  while (lowNumber <= highNumber) {
    int middleNumber = ((lowNumber + highNumber) / 2).round();
    int alternativeItem = list[middleNumber];

    // if middle of the list is equal to the searched number
    if (alternativeItem == item) {
      return middleNumber;
    }

    // if middle of the list is bigger than the searched number
    if (alternativeItem > item) {
      // set the biggest number of the list to the middle of the list, then exclude 50% of the list
      highNumber = middleNumber - 1;
    } else {
      // if middle of the list is less than the searched number
      // set the less number of the list to the middle of the list, then exclude 50% of the list
      lowNumber = middleNumber + 1;
    }
  }

  return null;
}
