package main

import (
	. "fmt"
)

// func init() { Println("----------------------------------------") }

func main() {
    var a, b int
    Scanf("%d %d", &a, &b)

    if b >= a {
        Println(a)
    } else {
        Println(a - 1)
    }
}
