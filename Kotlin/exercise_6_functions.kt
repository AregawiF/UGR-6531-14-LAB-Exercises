fun findMax(numbers: List<Int>): Int? {
    if (numbers.isEmpty()) return null
    var max_num = numbers[0]
    for (num in numbers) {
        if (num > max_num) {
            max_num = num
        }
    }
    return max_num
}
fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}
fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) return null
    var sum = 0.0
    for (num in numbers) {
        sum += num
    }
    return sum / numbers.size
}
fun main() {
    val numbers1 = listOf(3, 7, 2, 8, 5)
    val numbers2 = listOf(11, 22, 30, 43, 57)
    val numbers3 = listOf(1.0, 2.0, 3.0, 4.0, 5.0)

    val maxNumber = findMax(numbers1)
    println("Maximum value: $maxNumber")

    val evenNumbers = filterEvenNumbers(numbers2)
    println("Even numbers: $evenNumbers")

    val average = calculateAverage(numbers3)
    println("Average value: $average")
}
