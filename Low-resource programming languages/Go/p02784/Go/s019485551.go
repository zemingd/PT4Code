package main
import (
    "fmt"
)

func main() {
    var h, n int
    fmt.Scan(&h, &n)

    var tempA, sumA int
    for i := 0; i < n; i++ {
        fmt.Scan(&tempA)
        sumA += tempA
    }

    if sumA >= h {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}