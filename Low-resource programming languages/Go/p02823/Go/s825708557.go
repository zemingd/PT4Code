package main

import (
        "bufio"
        "fmt"
        "math/big"
        "os"
        "strconv"
        "strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
        // TODO: メモリの使用量がやばいので Token ごとに読む
        // Reference: https://atcoder.jp/contests/abc148/submissions/9067537
        bufsize := 100 * 1024 * 1024
        sc.Buffer(make([]byte, bufio.MaxScanTokenSize), bufsize)
}
func readInt() int              { return readIntArray()[0] }
func readInt2() (int, int)      { a := readIntArray(); return a[0], a[1] }
func readInt3() (int, int, int) { a := readIntArray(); return a[0], a[1], a[2] }
func readIntArray() []int {
        a := make([]int, 0, 1000)
        sc.Scan()
        for _, v := range strings.Split(sc.Text(), " ") {
                vv, _ := strconv.Atoi(v)
                a = append(a, vv)
        }
        return a
}
func readString() string                    { return readStringArray()[0] }
func readString2() (string, string)         { a := readStringArray(); return a[0], a[1] }
func readString3() (string, string, string) { a := readStringArray(); return a[0], a[1], a[2] }
func readStringArray() []string             { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        sn, sa, sb := readString3()
        n, _ := new(big.Int).SetString(sn, 10)
        a, _ := new(big.Int).SetString(sa, 10)
        b, _ := new(big.Int).SetString(sb, 10)

        m := new(big.Int)
        m.Mod(m.Sub(b, a), big.NewInt(int64(2)))
        cent, _ := new(big.Int).SetString(sn, 10)
        if m.Cmp(new(big.Int)) == 0 {
                // even
                cent.Div(cent.Sub(b, a), big.NewInt(int64(2)))
        }

        up := new(big.Int)
        up.Sub(b, big.NewInt(int64(1)))
        down := new(big.Int)
        down.Sub(n, a)

        var simple *big.Int
        if up.Cmp(down) == 1 {
                // up > down
                if down.Cmp(cent) == 1 {
                        // down > cent
                        simple = cent
                } else {
                        simple = down
                }
        } else {
                // up <= down
                if up.Cmp(cent) == 1 {
                        // up > cent
                        simple = cent
                } else {
                        simple = up
                }
        }

        var result *big.Int
        upcent, _ := new(big.Int).SetString(sn, 10)
        downcent, _ := new(big.Int).SetString(sn, 10)
        if m.Cmp(new(big.Int)) == 1 {
                // odd
                // ex. [100 4 31]
                // (b-a-1)/2 + a = (b+a-1)/2
                upcent.Div(upcent.Sub(upcent.Add(b, a), big.NewInt(int64(1))), big.NewInt(int64(2)))
                //upcent.Sub(upcent.Add(b, a), big.NewInt(int64(1)))

                // ex. [100 71 98]
                // (n-(a+(n+1)-b))/2 + (n+1-b) = (2n-a-b+1)/2
                downcent.Div(downcent.Add(downcent.Sub(downcent.Sub(downcent.Mul(n, big.NewInt(int64(2))), a), b), big.NewInt(int64(1))), big.NewInt(int64(2)))
                if upcent.Cmp(downcent) == 1 {
                        // upcent > downcent
                        if downcent.Cmp(simple) == 1 {
                                // downcent > simple
                                result = simple
                        } else {
                                result = downcent
                        }
                } else {
                        // upcent <= downcent
                        if upcent.Cmp(simple) == 1 {
                                // up > cent
                                result = simple
                        } else {
                                result = upcent
                        }
                }
        } else {
                result = simple
        }

        fmt.Println(result)
        //fmt.Printf("up: %v, cent: %v, down: %v, upcent: %v, downcent: %v\n", up, cent, down, upcent, downcent)
}