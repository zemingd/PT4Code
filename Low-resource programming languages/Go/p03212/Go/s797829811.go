package main

import (
        "bufio"
        "fmt"
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
var m map[string]bool

func init() {
        m = map[string]bool{}
}

func doComb(n int) []string {
        ret := []string{"3", "5", "7"}
        for i := 2; i <= n; i++ {
                ret = append(ret, addCombination(ret)...)
        }
        return ret
}
func addCombination(l []string) []string {
        ret := []string{}
        pref := "357"
        for _, v := range l {
                for _, p := range pref {
                        s := string(p) + v
                        if ok, _ := m[s]; !ok {
                                ret = append(ret, s)
                                m[s] = true
                        }
                }
        }
        return ret
}

func has753(s string) bool {
        return (strings.Index(s, "3") >= 0) && (strings.Index(s, "5") >= 0) && (strings.Index(s, "7") >= 0)
}

func main() {
        line := nextLine()

        N := parseInt(line)

        comb := doComb(len(line))

        sum := 0
        for _, v := range comb {
                n := parseInt(v)
                if has753(v) && n < N {
                        sum++
                }
        }
        fmt.Println(sum)
}
