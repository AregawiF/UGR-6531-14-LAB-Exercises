fun main() {
    val strings = listOf("HeLlo", "World", "kotlin")
    val numbers = listOf(1, 5, 2, 8, 3, 9, 4)

    val uppercaseStrings = transformToUppercase(strings)
    println("Uppercase Strings: $uppercaseStrings")

    val filteredNumbers = filterNumbersGreaterThan(numbers, 4)
    println("Filtered Numbers: $filteredNumbers")

    val sum = sumOfNumbers(numbers)
    println("Sum of Numbers: $sum")
}

fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.uppercase() }
}

fun filterNumbersGreaterThan(numbers: List<Int>, threshold: Int): List<Int> {
    return numbers.filter { it > threshold }
}

fun sumOfNumbers(numbers: List<Int>): Int {
    return numbers.reduce { sum, element -> sum + element }
}