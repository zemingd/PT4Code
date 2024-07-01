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

type SortSlice []int

func (s SortSlice) Len() int {
        return len(s)
}

func (s SortSlice) Swap(i, j int) {
        s[i], s[j] = s[j], s[i]
}

func (s SortSlice) Less(i, j int) bool {
        return s[i] < s[j]
}

func reverseString(str string) string {
        buf := []rune(str)
        for i, j := 0, len(buf)-1; i < j; i, j = i+1, j-1 {
                buf[i], buf[j] = buf[j], buf[i]
        }
        return string(buf)
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////

func main() {
        line := nextLine()

        spl := strSprit(line)

        A := parseInt(spl[0])
        B := parseInt(spl[1])

        add := A + B
        sub := A - B
        mul := A * B

        if add > sub {
                if add > mul {
                        fmt.Println(add)
                } else {
                        fmt.Println(mul)
                }
        } else {
                if sub > mul {
                        fmt.Println(sub)
                } else {
                        fmt.Println(mul)
                }
        }
}

