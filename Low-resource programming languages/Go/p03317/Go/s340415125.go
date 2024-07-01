package main

import "fmt"

func main() {
        var n, k int
        fmt.Scanln(&n, &k)

        cnt := 1
        n -= k
        for n > 0 {
                n -= k - 1
                cnt++
        }
        fmt.Println(cnt)
}