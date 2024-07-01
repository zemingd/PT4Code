package main

import (
  "fmt"
)

func main()  {
    var a,b int
    fmt.Scan(&a, &b)
    k500 := 500 * a
    if k500 >= b {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}