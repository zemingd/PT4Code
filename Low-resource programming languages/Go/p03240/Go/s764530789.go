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

func setBit(d, n int) int {
        t := 1 << uint(n)
        return d | t
}

func intAbs(n int) int {
        return int(math.Abs(float64(n)))
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////
func calcHeight(x, y, cx, cy, h int) int {
        xa := intAbs(x - cx)
        ya := intAbs(y - cy)

        return h + xa + ya
}

func main() {
        line := nextLine()
        N := parseInt(line)

        q := make([][]int, N)

        for i := 0; i < N; i++ {
                q[i] = intSprit(nextLine())
        }

        for i := 0; i <= 100; i++ {
                for j := 0; j <= 100; j++ {
                        H := -1
                        for _, v := range q {
                                if H == -1 {
                                        H = calcHeight(v[0], v[1], i, j, v[2])
                                        continue
                                }
                                th := calcHeight(v[0], v[1], i, j, v[2])
                                if H != th {
                                        H = -1
                                        break
                                }
                        }
                        if H > 0 {
                                fmt.Println(i, j, H)
                                return
                        }
                }
        }
}