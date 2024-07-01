package main

import "fmt"

func main() {
    var a, b, c, x int
    fmt.Scan(&a, &b, &c, &x)

    cnt := 0

    for i := 0; i <= a; i++ {
        for j := 0; j <= b; j++ {
            for k := 0; k <= c; k++ {
                if i*500+j*100+k*50 == x {
                    cnt++
                }
            }
        }
    }

    fmt.Println(cnt)
}