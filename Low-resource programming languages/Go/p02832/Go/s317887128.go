package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
        "strings"
)

var sc = scanner()

func scanner() *bufio.Scanner {
        scanner := bufio.NewScanner(os.Stdin)
        bufsize := 1 * 1024 * 1024
        scanner.Buffer(make([]byte, bufsize), bufsize)
        return scanner
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
func readString() string        { return readStringArray()[0] }
func readStringArray() []string { sc.Scan(); return strings.Split(sc.Text(), " ") }

func main() {
        n := readInt()
        as := readIntArray()

        var count int
        target := 1
        for i := 0; i < n; i++ {
                if as[i] == target {
                        target++
                } else {
                        count++
                }
        }

        if n == count {
                fmt.Println(-1)
        } else {
                fmt.Println(count)
        }
}