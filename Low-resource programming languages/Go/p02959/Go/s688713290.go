package main

import (
        "fmt"
        "bufio"
        "os"
        "strconv"
        "strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 10000000)

func main() {
        var n, count int
        var a, b []int

        fmt.Scan(&n)
        a = SplitInt(readLine())
        b = SplitInt(readLine())

        for i := range b {
                var x = a[i] - b[i]
                if x >= 0 {
                        count += b[i]
                } else {
                        var y = a[i + 1] + x
                        if y >= 0 {
                                count += b[i]
                                a[i + 1] = y
                        } else {
                                count += a[i] + a[i + 1]
                                a[i + 1] = 0
                        }
                }
        }

        fmt.Println(count)

}

func readLine() string {
        buf := make([]byte, 0, 10000000)
        for {
                l, p, e:= rdr.ReadLine()
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

func SplitInt(str string) []int {
        stringSplited := strings.Split(str, " ")
        var array []int
        for i:= range stringSplited {
                var a int
                var err error
                a, err = strconv.Atoi(stringSplited[i])
                if err != nil {
                        return array
                }
                array = append(array, a)
        }
        return array
}