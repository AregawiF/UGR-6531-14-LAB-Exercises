int findHighestNumber(List<int> nums) {
  int highest = nums[0];
  
  for (var number in nums) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}

void main() {
  List<int> numbers = [];
  try {
    int highest = findHighestNumber(numbers);
    print("The highest number is: $highest");
  } catch (e) {
    print("Error occurred: The list is empty");
  }
}