package main

import (
    "fmt"
)

func main() {
    var x, a  int
    fmt.Scan(&x, &a)
    if x < a {
      fmt.Println(0)
    } else if x >= a{
      fmt.Println(10)
    }
}