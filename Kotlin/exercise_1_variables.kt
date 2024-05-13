fun main() {
    print("Enter first number: ")
    val num1 = readLine()?.toDoubleOrNull()
    print("Enter second number: ")
    val num2 = readLine()?.toDoubleOrNull()

    if (num1 == null || num2 == null) {
        println("Invalid number input !!")
        return
    }

    println("Enter the operation (addition, subtraction, multiplication, division):")
    val operation = readLine()

    val result = if (operation == "addition"){
        num1 + num2
    } else if (operation == "subtraction"){
        num1 - num2
    } else if (operation == "multiplication"){
        num1 * num2
    }else if (operation == "division"){
        if (num2 == 0.0){
            "Cannot divide by zero"
        }else{
        num1 / num2}
    }else{
        println("Invalid operation input !!")
    }

    print(result)

}