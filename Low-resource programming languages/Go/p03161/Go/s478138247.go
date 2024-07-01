package main

import (
        "bufio"
        "fmt"
        "math"
        "os"
        "strconv"
        "strings"
)

////////////////////////////////////////
///        templates                 ///
////////////////////////////////////////

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
        sc.Scan()
        return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readBigLine() string {
        buf := make([]byte, 0, 1000000)
        for {
                l, p, e := rdr.ReadLine()
                if e != nil {
                        panic(e)
                }
                buf = append(buf, l...)
                if !p {
                        break
                }
        }
        return string(buf)
}

func strSprit(str string) []string {
        cols := strings.Split(str, " ")
        return cols
}

func parseInt(str string) int {
        n, _ := strconv.Atoi(str)
        return n
}

func intSprit(str string) []int {
        strs := strSprit(str)
        cols := make([]int, len(strs))
        for i, v := range strs {
                cols[i] = parseInt(v)
        }
        return cols
}

func bitCount(n uint) int {

        x := uint64(n)

        const m = 1<<64 - 1
        const m0 = 0x5555555555555555
        const m1 = 0x3333333333333333
        const m2 = 0x0f0f0f0f0f0f0f0f

        x = x>>1&(m0&m) + x&(m0&m)
        x = x>>2&(m1&m) + x&(m1&m)
        x = (x>>4 + x) & (m2 & m)
        x += x >> 8
        x += x >> 16
        x += x >> 32

        return int(x) & (1<<7 - 1)
}

func bitExist(n, i int) bool {
        return ((n >> uint(i)) & 1) == 1
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////
func abs(a, b int) int {
        return int(math.Abs(float64(a - b)))
}

func chmin(dp []int, idx, n int) {
        if dp[idx] > n {
                dp[idx] = n
        }
}
func main() {
        line := readBigLine()
        sp := strSprit(line)
        N := parseInt(sp[0])
        K := parseInt(sp[1])

        l := readBigLine()
        h := intSprit(l)

        INF := 10000000

        dp := make([]int, N+1000)
        for i := 0; i < N+1000; i++ {
                dp[i] = INF
        }
        dp[0] = 0

        for i := 0; i < N; i++ {
                for j := 1; j <= K; j++ {
                        if N > i+j {
                                chmin(dp, i+j, dp[i]+abs(h[i], h[i+j]))
                        }
                }
        }
        fmt.Println(dp[N-1])
}