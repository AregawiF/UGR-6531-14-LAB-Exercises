import kotlin.random.Random

fun main() {
    print("Enter desired password length: ")
    val passwordLength = readLine()?.toIntOrNull() ?: 8 

    val password = buildPassword(passwordLength)
    println("Generated password: $password")
}

fun buildPassword(length: Int): String {
    val chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+"
    var password = ""

    repeat(length) {
        val randomIndex = Random.nextInt(chars.length)
        password += chars[randomIndex]
    }

    return password
}