fun KM_To_Miles(kilometers: Double): Double {
    return kilometers * 0.621371
}
fun main() {
    val distance = 100.0
    val unit = "kilometers"

    val converted_Distance = KM_To_Miles(distance)

    println("Distance: $distance $unit")
    println("Converted distance: $converted_Distance miles")
}


