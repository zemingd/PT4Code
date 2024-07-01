package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)

    line := readLine(reader)
    n, _ := strconv.Atoi(line)

    line2 := readLine(reader)
    arr := strings.Split(line2, " ")

    var cnt int = 0

    for i := 0; i < n - 2; i++ {
        a, _ := strconv.Atoi(arr[i])
        b, _ := strconv.Atoi(arr[i+1])
        c, _ := strconv.Atoi(arr[i+2])

        if (a < b && b < c) || (c < b && b < a) {
            cnt++
        }
    }

    fmt.Println(cnt)
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
