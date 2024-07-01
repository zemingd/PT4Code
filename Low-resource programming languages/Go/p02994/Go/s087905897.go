package main

import "fmt"

func sum(from, to int) int {
        var result int
        for i := from; i < to; i++ {
                result += i
        }
        return result
}

func main() {
        var n, l int
        fmt.Scan(&n, &l)

        max := l + n
        min := l

        var sum int
        for i := min; i < max; i++ {
                sum += i
        }

        if min <= 0 && max >= 0 {
                fmt.Println(sum)
                return
        }
        if max < 0 {
                fmt.Println(sum - (max - 1))
                return
        }
        if min > 0 {
                fmt.Println(sum - min)
                return
        }
        fmt.Println(sum)
}