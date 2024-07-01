package main

import (
        "bufio"
        "fmt"
        "os"
        "reflect"
)

func solution(n, k int, a []int) []int {
        for k > 0 {
                memo := make([]int, n+1)
                for i := 0; i < n; i++ {
                        l := max(0, i-a[i])
                        r := min(n, i+a[i]+1)
                        memo[l]++
                        memo[r]--

                }

                for i := 0; i < n; i++ {
                        memo[i+1] += memo[i]
                }
                memo = memo[:n]
                if reflect.DeepEqual(a, memo) {
                        break
                }
                a = memo
                k--
        }
        return a
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
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