package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
    "strconv"
    "strings"
)

func aButtons(a, b int32) int32 {

    sum := int32(0)
    if a > b {
        sum += a
        a--
    } else {
        sum += b
        b--
    }

    if a > b {
        sum += a
        a--
    } else {
        sum += b
        b--
    }
    return sum
}

func main() {
    reader := bufio.NewReaderSize(os.Stdin, 1024 * 1024)

    arTemp := strings.Split(readLine(reader), " ")

    a, err := strconv.ParseInt(arTemp[0], 10, 64)
    checkError(err)

    b, err := strconv.ParseInt(arTemp[1], 10, 64)
    checkError(err)

    res := aButtons(int32(a), int32(b))
    fmt.Println(res)
}

func readLine(reader *bufio.Reader) string {
    str, _, err := reader.ReadLine()
    if err == io.EOF {
        return ""
    }

    return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
    if err != nil {
        panic(err)
    }
}