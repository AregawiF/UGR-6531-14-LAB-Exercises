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