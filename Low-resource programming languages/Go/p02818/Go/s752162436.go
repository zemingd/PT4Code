package main

import (
        "bufio"
        "fmt"
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
func readString() string            { return readStringArray()[0] }
func readString2() (string, string) { a := readStringArray(); return a[0], a[1] }
func readStringArray() []string     { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        a, b, k := readInt3()

        if a > k {
                a -= k
        } else {
                k -= a
                a = 0
        }

        if b > k {
                b -= k
        } else {
                b = 0
        }
        fmt.Printf("%d %d\n", a, b)
}