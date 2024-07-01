package main

import (
    "fmt"
)

func main() {
    var N int
    fmt.Scan(&N)
    ans := "No"
    for i := 1; i < 10; i++ {
        d := N / i
        m := N % i
        if m == 0 && d <= 9 {
            ans = "Yes"
        }
    }
    fmt.Println(ans)
}