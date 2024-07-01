package main

import "fmt"

func main() {
    var N int
    var sum int

    fmt.Scan(&N)

    for i := 1; i <= N; i++ {
        sum += i
    }

    fmt.Println(sum)
}
