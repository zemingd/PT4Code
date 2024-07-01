package main

import (
    "fmt"
)

func hoge(n int) int {
    if n == 0 {
        return 0
    }
    for i := 0;true;i++ {
        if (n >> i && 1 == 1){
            return i
        }
    }
}

func main() {
    var n int
    fmt.Scan(&n)
    count := 0
    for i := 0; i < n; i++ {
        var ai int
        fmt.Scan(&ai)
        count += hoge(ai)
    }
    fmt.Println(count)
}