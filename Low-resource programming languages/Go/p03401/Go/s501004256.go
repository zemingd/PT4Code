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

        a := make([]int, 110000)

        line = readBigLine()
        spl := strSprit(line)
        for i := 1; i <= N; i++ {
                a[i] = parseInt(spl[i-1])
        }

        summer := make([]int, 110000)

        allsum := 0

        for i := 0; i < N; i++ {
                summer[i] = intabs(a[i], a[i+1])
                allsum += summer[i]
        }
        summer[N] = intabs(a[N], a[0])
        allsum += summer[N]

        for i := 1; i <= N; i++ {
                printsum := allsum - summer[i-1] - summer[i]

                if i == N {
                        printsum += intabs(a[i-1], a[0])
                } else {
                        printsum += intabs(a[i-1], a[i+1])
                }

                fmt.Println(printsum)

        }

}
