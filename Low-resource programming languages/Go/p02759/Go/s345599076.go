package main

import (
        "fmt"
        "math"
)

func main() {
        var N int
        fmt.Scanf("%d", &N)

        fmt.Println(int(math.Ceil(float64(N) / 2.0)))
}