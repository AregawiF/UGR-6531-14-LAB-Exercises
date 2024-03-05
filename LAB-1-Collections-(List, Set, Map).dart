int findHighestNumber(List<int> nums) {
  if (nums.isEmpty) {
    print("The list is empty");
    return -1;
  }
  
  int highest = nums[0];
  for (var number in nums) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}

void mapKeysValues(Map<dynamic, dynamic> map) {
  if (map.isEmpty) {
    print("The map is empty");
    return;
  }

  print("Keys:");
  map.keys.forEach((key) {
    print(key);
  });

  print("Values:");
  map.values.forEach((value) {
    print(value);
  });
}

List<T> removeDuplicates<T>(List<T> list) {
  List<T> uniqueList = [];
  for (var element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }
  return uniqueList;
}