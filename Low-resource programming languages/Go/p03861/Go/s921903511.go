package main

import "fmt"

func count(i int, x int) int {
        if i < 0 {
                return 0
        }
        return i/x + 1
}

func main() {
        var a, b, x int
        fmt.Scan(&a, &b, &x)
        fmt.Println(count(b, x) - count(a-1, x))
}
