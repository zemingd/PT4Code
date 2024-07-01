package main

import(
    "fmt"
    "math"
)

func main() {
    var R float32
    var answer float32

    fmt.Scan(&R)

    answer = 2 * math.Pi * R

    fmt.Println(answer)
}
    