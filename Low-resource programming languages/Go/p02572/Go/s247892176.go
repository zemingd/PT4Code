package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(n int, a []int) int {
        const MOD = 1e9 + 7
        out := 0
        for i := 0; i < n; i++ {
                for j := i + 1; j < n; j++ {
                        tmp := (a[i] * a[j]) % MOD
                        out = (out + tmp) % MOD
                }
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