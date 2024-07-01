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

    line := readLine(reader)
    N, _ := strconv.Atoi(line)
    line = readLine(reader)
    arr := strings.Split(line, " ")
    var num int
    var blocks []int
    var length int

    for i := 0; i < N; i++ {
        num, _ = strconv.Atoi(arr[i])
        length = len(blocks)

        if num == 1 {
            if length == 0 {
                blocks = append(blocks, num)
            }
        } else {
            if length > 0 {
                if num == blocks[length-1] + 1 {
                    blocks = append(blocks, num)
                }
            }
        }
    }

    if len(blocks) == 0 {
        fmt.Println(-1)
    } else {
        fmt.Println(len(arr) - len(blocks))
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