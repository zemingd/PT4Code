package main

import (
        "fmt"
)

func main() {
        var a, b, x int
        fmt.Scanf("%d %d %d", &a, &b, &x)
        fmt.Println(judge(a, b, x))
}

func judge(a, b, x int) string {
        if a < 0 || b < 0 || x < 0 {
                return "NO"
        }
        if a > x {
                return "NO"

        } else if a+b < x {
                return "NO"

        } else if a+b >= x {
                return "YES"

        }
        return "NO"
}
