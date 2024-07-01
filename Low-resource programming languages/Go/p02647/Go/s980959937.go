package main

import (
        "bufio"
        "fmt"
        "os"
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
        r := bufio.NewReader(os.Stdin)
        var n, k int
        fmt.Fscan(r, &n, &k)
        a := make([]int, n)
        for i := range a {
                fmt.Fscan(r, &a[i])
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