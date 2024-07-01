package main

import (
	. "fmt"
)

// func init() { Println("----------------------------------------") }

func main() {
    var a, b, x int
    Scanf("%d %d %d", &a, &b, &x)

    if x < a || a + b < x {
        Println("NO")
    } else {
        Println("YES")
    }
}
