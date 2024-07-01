package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
    "math"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)
    _ = readLine(reader)
    line2 := readLine(reader)
    arr := strings.Split(line2, " ")

    sum := 0
    var num int

    for _, v := range arr {
        num, _ = strconv.Atoi(v)
        sum += num
    }

    inc := 0
    var calc int
    var retnum = sum

    for _, v := range arr {
        num, _ = strconv.Atoi(v)
        inc += num
        calc = sum - inc

        tmp := int(math.Abs(float64(sum - calc - calc)))

        if tmp < retnum {
            retnum = tmp
        } else {
            break
        }
    }

    fmt.Println(retnum)
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