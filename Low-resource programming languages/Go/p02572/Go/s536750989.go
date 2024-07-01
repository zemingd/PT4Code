package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(n int, a []int) int {
        const MOD = 1e9 + 7
        out := 0
        cur := make([]int, n+1)
        cur[0] = a[0]
        for i := 0; i < n; i++ {
                cur[i+1] = a[i] + cur[i]
        }
        for i := 0; i < n; i++ {
                sum := (cur[n] - cur[i+1]) % MOD
          out = (out + a[i] * sum) % MOD
        }
        return out
}

func main() {
        r := bufio.NewReader(os.Stdin)
        var n int
        fmt.Fscan(r, &n)
        a := make([]int, n)
        for i := range a {
                fmt.Fscan(r, &a[i])
        }
        fmt.Println(solution(n, a))
}