package main

import (
    . "fmt"
    "math"
)

func main() {
    var a, b float64
    Scanf("%f %f", &a, &b)

    max := math.Max(a + b, math.Max(a - b, a * b))
    Println(int(max))
}
