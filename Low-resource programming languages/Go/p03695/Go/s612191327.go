package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

func main() {
    var fp *os.File = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)

    N, _ := strconv.Atoi(readLine(reader))
    line := readLine(reader)
    arr := strings.Split(line, " ")

    var rate [8]int
    cnt_min := 0
    cnt_max := 0
    cnt_over := 0

    for k, v := range arr {
        num, _ := strconv.Atoi(v)

        if num >= 1 && num <= 399 {
            rate[0]++
        } else if num >= 400 && num <= 799 {
            rate[1]++
        } else if num >= 800 && num <= 1199 {
            rate[2]++
        } else if num >= 1200 && num <= 1599 {
            rate[3]++
        } else if num >= 1600 && num <= 1999 {
            rate[4]++
        } else if num >= 2000 && num <= 2399 {
            rate[5]++
        } else if num >= 2400 && num <= 2799 {
            rate[6]++
        } else if num >= 2800 && num <= 3199 {
            rate[7]++
        } else {
            cnt_over++
        }

        if k + 1 == N {
            for _, vv := range rate {
                if vv > 0 {
                    cnt_min++
                }
            }

            cnt_max = cnt_min + cnt_over

            if cnt_max > 8 {
                cnt_max = 8
            }

            fmt.Printf("%d", cnt_min)
            fmt.Printf("%s", " ")
            fmt.Printf("%d", cnt_max)
            fmt.Println()
        }
    }
}

func readLine(reader *bufio.Reader) string {
    buf := make([]byte, 0, 1024)

    for {
        l, p, _ := reader.ReadLine()

        buf = append(buf, l...)

        if !p {
            break
        }
    }

    return string(buf)
}
