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

func intabs(a, b int) int {
        return int(math.Abs(float64(a - b)))
}

func main() {
        line := nextLine()
        N := parseInt(line)

        a := make([]int, 100001)

        line = readBigLine()
        spl := strSprit(line)
        for i := 1; i <= N; i++ {
                a[i] = parseInt(spl[i-1])
        }

        for i := 1; i <= N; i++ {
                sum := 0
                for j := 1; j <= N; j++ {
                        switch j {
                        case i + 1:
                                sum += intabs(a[j-2], a[j])
                        case i:
                                continue
                        default:
                                sum += intabs(a[j-1], a[j])
                        }
                }
                if i == N {
                        sum += intabs(a[N-1], a[0])
                } else {
                        sum += intabs(a[N], a[0])
                }
                fmt.Println(sum)
        }

}
