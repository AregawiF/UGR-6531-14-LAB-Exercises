fun main(){
    val originalPrice: Double = 100.0
    var discountPercentage: Double = 0.65
    val thresholdPercentage: Double = 0.5
    val finalDiscount = if (discountPercentage > thresholdPercentage) {
        println("The discount is too high.")
        thresholdPercentage
    } else {
        discountPercentage
    }
    val finalPrice = calculatePrice(originalPrice, finalDiscount)

    println("Original price: $originalPrice")
    println("Discount percentage: ${finalDiscount * 100}%")
    println("Price after discount: $finalPrice")
}
fun calculatePrice (price: Double, discount: Double): Double{
    return price * (1- discount)
}
