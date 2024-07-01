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
        fmt.Println("Even")
    } else {
        fmt.Println("Odd")
    }
}

func multipleResultIsEven(a int, b int) bool {
    if (a * b % 2 == 0){
        return true
    } else {
        return false
    }
}