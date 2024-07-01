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
func readString() string        { return readStringArray()[0] }
func readStringArray() []string { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        n := big.NewInt(int64(0))
        n.SetString(readString(), 10)

        if n.Cmp(big.NewInt(int64(10))) == -1 {
                fmt.Println(0)
                return
        }

        m := big.NewInt(int64(0))
        if m.Mod(n, big.NewInt(int64(2))).Cmp(big.NewInt(int64(0))) != 0 {
                fmt.Println(0)
                return
        }

        base := big.NewInt(int64(10))
        count := big.NewInt(int64(0))
        for i := 0; i < 10000000; i++ {
                tmp := new(big.Int)
                tmp.Div(n, base)
                if tmp.Cmp(big.NewInt(int64(0))) == 0 {
                        break
                }
                count.Add(count, tmp)
                base.Mul(base, big.NewInt(int64(5)))
        }

        fmt.Println(count)

}

