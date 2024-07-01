package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(n int, a []int) int {
        const MOD = 1e9 + 7
        out := 0
        cur := make([]int, n)
        cur[0] = a[0]
        for i := 1; i < n; i++ {
                cur[i] = (a[i] + cur[i-1]) % MOD
        }
        for i := 0; i < n-1; i++ {
                out = (out + (a[i]*(cur[n-1]-cur[i]))%MOD) % MOD
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