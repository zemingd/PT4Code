package main

import "fmt"

func Cube(x int) int {
    return x * x * x
}

func main() {
    var t int
    fmt.Scan(&t)
    fmt.Println(Cube(t))
}
