package main

import (
        "fmt"
)

func main() {
        var N int
        fmt.Scan(&N)

        judge := func(T int, N int) bool {
                if (T-N) < 0 || (T-N)%2 != 0 {
                        return false
                }
                T -= N
                return true
        }

        preT := 0
        preX := 0
        preY := 0
        possible := 0
        for i := 0; i < N; i++ {
                var t, x, y int
                fmt.Scan(&t, &x, &y)
                t -= preT
                x -= preX
                y -= preY
                if !judge(t, x+y) {
                        possible += 1
                }
                preT = t
                preX = x
                preY = y
        }
        if possible == 0 {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}
