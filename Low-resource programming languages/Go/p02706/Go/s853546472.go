package main

import(
    "fmt"
)

func main() {
    var n, m int
    var answer int
  	sum := 0
    fmt.Scan(&n, &m)
    var a[11111] int
    for i := 0 ; i < m ; i++{
        fmt.Scan(&a[i])
        sum += a[i]
    }
    answer = n - sum
    if answer < 0 {
        answer = -1
    }
    fmt.Println(answer)
}