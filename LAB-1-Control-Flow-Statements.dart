void main() {
  int dayOfWeek = 4; 
  switch (dayOfWeek) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid number");
  }
  // Fibonacci Sequence
  
  int limit = 10;
  int first = 0;
  int second = 1;

  print("Fibonacci Sequence:");

  for (int i = 0; i < limit; i++) {
    if (i <= 1) {
      print(i);
    } 
    else {
      int curr = first + second;
      print(curr);
      first = second;
      second = curr;
    }
}