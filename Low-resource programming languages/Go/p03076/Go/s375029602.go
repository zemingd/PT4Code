package main

import (
        "fmt"
)

func main() {
        var a [5]int
        var ce int
        for i := 0; i < 5; i++ {
                fmt.Scanf("%d", &a[i])
                ce += ceilInt(a[i])
        }

        ft := 130 * 5
        var t int
        for i := 0; i < 5; i++ {
                t = ce - ceilInt(a[i]) + a[i]
                if t < ft {
                        ft = t
                }
        }
        fmt.Println(ft)
}

func ceilInt(a int) int {
        var c int
        if a % 10 == 0 {
                c = a
        } else {
                c = (a / 10)*10 + 10
        }
        return c
}
