package main

import (
        "fmt"
)

func solution(n, k int, a []int) []int {
        for k > 0 {
                memo := make([]int, n)
                for i := 0; i < n; i++ {
                        lo := i - a[i]
                        hi := i + a[i]
                        for j := lo; j <= hi; j++ {
                                if 0 <= j && j < n {
                                        memo[j]++
                                }
                        }

                }
                a = memo
                k--
        }
        return a
}

func main() {
        var n, k int
        fmt.Scan(&n, &k)
        a := make([]int, n)
        for i := range a {
                fmt.Scan(&a[i])
        }
        nums := solution(n, k, a)
        for i, num := range nums {
                if i == len(nums)-1 {
                        fmt.Println(num)
                } else {
                        fmt.Printf("%v ", num)
                }
        }
}
