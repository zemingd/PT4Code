package main

import (
        "fmt"
        //"sort"
)

func main() {
        var N, Y int
        fmt.Scan(&N, &Y)

        check := func() {
                for a := 0; a <= N; a++ {
                        for b := 0; b <= (N - a); b++ {
                                c := N - a - b
                                if (a*10000 + b*5000 + c*1000) == Y {
                                        fmt.Println(a, b, c)
                                        return
                                }
                        }
                }
                fmt.Println("-1 -1 -1")
        }
        check()
}
