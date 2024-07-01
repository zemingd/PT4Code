package main

import "fmt"

func main() {
    var r, g, b, v int
    fmt.Scanf("%d %d %d", &r, &g, &b)
    v = r*100 + g*10 + b
    if v%4 == 0 {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}