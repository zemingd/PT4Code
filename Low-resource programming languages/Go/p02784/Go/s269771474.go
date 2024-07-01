package main

import "fmt"

func main() {
    var A, B int
    fmt.Scan(&A, &B)

    for i := 0; i < B; i++ {
        var C int
        fmt.Scan(&C)
        A = A - C
    }

    if A <= 0 {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }

}
