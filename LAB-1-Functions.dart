double calculateAverage(List<num> nums) {
  if (nums.isEmpty) {
    return 0.0;
  }

  double sum = 0;
  for (var number in nums) {
    sum += number;
  }

  return sum / nums.length;
}
