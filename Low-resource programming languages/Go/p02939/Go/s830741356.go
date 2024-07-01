package main

import (
    "fmt"
    "os"
    "bufio"
)

func ScanLongStringLine() string {
    maxSize := 1000000
    reader := bufio.NewReaderSize(os.Stdin, maxSize)
    buffer := make([]byte, 0)
    for {
        line, isPrefix, err := reader.ReadLine()
        if err != nil {
            fmt.Println(err)
        }
        buffer = append(buffer, line...)
        if !isPrefix {
            break
        }
    }
    return string(buffer)
}

func main() {
    S := ScanLongStringLine()

    i := 0
    count := 0
    temp := ""
    pre := ""
    for (i < len(S)) {
        temp += string(S[i])
        i += 1
        if (temp != pre) {
            pre = temp
            temp = ""
            count += 1
        }
    }
    fmt.Println(count)
}