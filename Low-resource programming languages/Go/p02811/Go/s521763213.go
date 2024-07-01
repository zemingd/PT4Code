package main

import (
        "fmt"
)

func main() {
        var k, x int
        fmt.Scanf("%d %d", &k, &x)

        if k*500 >= x {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}