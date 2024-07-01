package main

import (
    "fmt"
    "math"
)

func main() {
    var input int
    fmt.Scanln(&input)
    kubik := math.Pow(input, 3)
    fmt.Println(kubik)
}
