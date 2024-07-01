package main

import "fmt"

func main() {
        var n int
        fmt.Scan(&n)

        cnt := 0
        for m := 1; m <= n; m += 2 {
                if numDivisor(m) == 8 {
                        cnt++
                }
        }
        fmt.Println(cnt)
}

func numDivisor(n int) int {
        cnt := 0
        for m := 1; m <= n; m++ {
                if n%m == 0 {
                        cnt++
                }
        }
        return cnt
}