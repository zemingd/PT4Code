package main

import (
    "fmt"
    "os"
    "bufio"
    "math"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)
    line := []byte(readLine(reader))
    length := len(line)
    var res0 float64 = 0
    var res1 float64 = 0

    // 10101
    //  or
    // 01010
    for i := 0; i < length; i++ {
        if i % 2 == 0 {
            if string(line[i]) != "1" {
                 res1++
            } else {
                 res0++
            }
        } else {
            if string(line[i]) != "0" {
                 res1++
            } else {
                 res0++
            }
        }
    }

    fmt.Println(math.Min(res0, res1))
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