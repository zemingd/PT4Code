package main

import (
        "fmt"
)

func main() {
    var (
        a, b int
    )
        fmt.Scanf("%d %d", &a, &b)

    if (multipleResultIsEven(a, b) == true) {
        fmt.Println("Odd")
    } else {
        fmt.Println("Even")
    }
}

func multipleResultIsEven(a int, b int) bool {
    if (a * b % 2 == 0){
        return true
    } else {
        return false
    }
}