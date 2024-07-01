package main

import (
    "fmt"
    "os"
    "bufio"
)

func main() {
    var fp *os.File = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)
    line := readLine(reader)
    arr := make([]int, 26)

    for _, v := range line {
        arr[v-97]++
    }

    for k, v := range arr {
        if v == 0 {
            fmt.Println(string(k + 97))
            return
        }
    }

    fmt.Println("None")
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