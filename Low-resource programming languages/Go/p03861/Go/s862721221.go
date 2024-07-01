package main

import "fmt"

func main() {
        var a, b, x int
        fmt.Scan(&a, &b, &x)
        fmt.Println(b/x - (a-1)/x)
}
