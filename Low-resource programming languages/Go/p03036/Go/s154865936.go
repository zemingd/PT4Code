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
    reader := bufio.NewReaderSize(fp, 4096)
    line := readLine(reader)
    arr := strings.Split(line, " ")
    r, _ := strconv.Atoi(arr[0])
    D, _ := strconv.Atoi(arr[1])
    x, _ := strconv.Atoi(arr[2])
    var retval int

    for i := 0; i< 10; i++ {
        retval = r * x - D
        fmt.Println(retval)
        x = retval
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