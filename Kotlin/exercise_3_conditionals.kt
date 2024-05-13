fun main(){
    print("Enter the grade (between 0 and 100): ")
    val gradeInNumber = readLine()?.toIntOrNull()
    if (gradeInNumber == null || gradeInNumber !in 0..100) {
        println("Invalid input !!")
        return
    }
    val gradeInLetter = when {
        gradeInNumber >= 90 -> "A"
        gradeInNumber >= 80 -> "B"
        gradeInNumber >= 70 -> "C"
        gradeInNumber >= 60 -> "D"
        else -> "F"
    }

    println("Letter grade: $gradeInLetter")
}