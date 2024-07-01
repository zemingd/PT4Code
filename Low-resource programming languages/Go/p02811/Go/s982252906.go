package main

import (
  "fmt"
)

func a()  {
    var a,b int
    k, x := fmt.Scan(&a, &b)
    if 500 * k > x {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}