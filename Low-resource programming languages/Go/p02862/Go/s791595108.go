package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var si = bufio.NewScanner(os.Stdin)

func readInt() int {
        si.Scan()
        r, _ := strconv.Atoi(si.Text())
        return r
}

func powmod(a, N, m int) int {
        n := uint(N)
        r := 1
        for n != 0 {
                if n&1 != 0 {
                        r = r * a % m
                }
                n >>= 1
                a = a * a % m
        }
        return r
}
func factorialmod(n, m int) int {
        r := 1
        for i := 2; i <= n; i++ {
                r = r * i % m
        }
        return r
}
func main() {
        MOD := 1000000007
        si.Split(bufio.ScanWords)
        X, Y := readInt(), readInt()

        ret := 0
        for i := 0; i <= X/2; i++ {
                n := X - i*2
                if Y != n*2+i {
                        continue
                }
                c := n + i
                f := factorialmod(c, MOD)
                inv := make([]int, c+1)
                inv[c] = powmod(f, MOD-2, MOD)
                for j := c; j > 0; j-- {
                        inv[j-1] = inv[j] * j % MOD
                }
                ret = f * inv[i] % MOD * inv[n] % MOD
                break
        }
        fmt.Println(ret)

}