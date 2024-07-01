fun main(args: Array<String>) {
    var (a, b) = readLine()!!.split(" ").map(String::toInt)
    println(if (a > b) a - 1 else a)
}