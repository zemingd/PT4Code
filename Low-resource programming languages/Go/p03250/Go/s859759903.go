package main

import {
    "fmt"
}

func main() {
    var A, B, C int
    fmt.Scanf("%d %d %d", &A, &B, &C)
    if A >= B && A >= C {
        fmt.Println(A * 10 + B + C)
    } else if B >= A && B >= C{
        fmt.Println(B * 10 + A + C)
    } else {
        fmt.Println(C * 10 + A + B)
    }
}
