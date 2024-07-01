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
func readString() string            { return readStringArray()[0] }
func readString2() (string, string) { a := readStringArray(); return a[0], a[1] }
func readStringArray() []string     { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        n := readInt()
        s, t := readString2()

        for i := 0; i < n; i++ {
                fmt.Print(string(s[i]))
                fmt.Print(string(t[i]))
        }
}