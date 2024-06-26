class BankAccount(val accountNumber: String, var balance: Double) {

    fun deposit(amount: Double) {
        balance += amount
        println("Deposit successful. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (balance >= amount) {
            balance -= amount
            println("Withdrawal successful. New balance: $balance")
        } else {
            println("Insufficient funds. Current balance: $balance")
        }
    }

    fun printBalance() {
        println("Account Number: $accountNumber")
        println("Current balance: $balance")
    }
}

fun main() {
    val myAccount = BankAccount("000001234567890", 1000.0)

    myAccount.printBalance()
    myAccount.deposit(500.0)
    myAccount.withdraw(200.0)
    myAccount.withdraw(2000.0)
    myAccount.printBalance()
}