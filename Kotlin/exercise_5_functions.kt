fun analyzeString(input: String): Triple<Int, Int, Int> {
    var wordCount = 1
    var uppercaseCount = 0
    var vowelCount = 0

    for (char in input) {
        if (char.isLetter()) {
            if (char.isUpperCase()) {
                uppercaseCount++
            }
            if (char in "aeiouAEIOU") {
                vowelCount++
            }
        } else if (char == ' ') {
            wordCount++
        } else {
            println("Error: Input should contain only alphabetic characters.")
            return Triple(0, 0, 0)
        }
    }

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    println("Enter a string:")
    val inputString = readLine()

    if (inputString == null) {
        println("Invalid Input")
        return
    }

    val (wordCount, uppercaseCount, vowelCount) = analyzeString(inputString)

    println("Number of words: $wordCount")
    println("Number of uppercase letters: $uppercaseCount")
    println("Number of vowels: $vowelCount")
}
