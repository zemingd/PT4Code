package main

import (
        "bufio"
        "fmt"
        "math"
        "os"
)

func solution(n, k int, a []int) []int {
        for k > 0 || math.Log(float64(k)) == float64(k) {
                memo := make([]int, n)
                for i := 0; i < n; i++ {
                        lo := max(0, i-a[i])
                        hi := min(n-1, i+a[i])
                        memo[lo]++

                        if hi+1 < n {
                                memo[hi+1]--
                        }

                }

                for i := 1; i < n; i++ {
                        memo[i] += memo[i-1]
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