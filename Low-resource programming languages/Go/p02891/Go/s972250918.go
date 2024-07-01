package main

import (
        "bufio"
        "fmt"
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

func count(s string) (int, bool) {
        prev := s[0]
        var c int
        for i := 1; i < len(s); i++ {
                if prev == s[i] {
                        c++
                        prev = 0
                } else {
                        prev = s[i]
                }
        }

        return c, len(strings.Trim(s, string(s[0]))) == 0
}

func main() {
        s := readString()
        k := readInt()

        c, eq := count(s)
        //fmt.Println(c, eq)

        // a -> 0
        // aa -> 1
        // aaa -> 1
        // aaaa -> 2
        // aaaaa -> 2
        if eq {
                fmt.Println(len(s) * k / 2)
                return
        }

        if s[0] != s[len(s)-1] {
                fmt.Println(c * k)
                return
        }

        // aaabaaa -> 2
        // aaabaaa|aaabaaa|aaabaaa -> 8
        //    |   3   |   3   |
        topcount := len(s) - len(strings.TrimLeft(s, string(s[0])))
        bottomcount := len(s) - len(strings.TrimRight(s, string(s[len(s)-1])))
        in := topcount + bottomcount

        front, _ := count(s[:len(s)-bottomcount])
        back, _ := count(s[topcount:])
        //fmt.Printf("[%s] [%d] [%s]\n", s[:len(s)-bottomcount], in, s[topcount:])
        //fmt.Printf("[%d] [%d] [%d]\n", front, in, back)

        fmt.Println(front + (in/2)*(k-1) + back)
}