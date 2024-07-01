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
    arr := strings.Split(line, " ")
    N, _ := strconv.Atoi(arr[0])
    L, _ := strconv.Atoi(arr[1])
    var sum int = 0

    if L > 0 {
        cnt := N + 1

        for i := L + 1; i <= cnt; i++ {
            sum += i
        }
    } else if L == 0 {
        cnt := N

        for i := L; i <= cnt; i++ {
            sum += i
        }
    // minus
    } else {
        // 0またぎ
        if L + N - 1 >= 0 {
            for i := 1; i <= N; i++ {
                sum += L + i - 1
            }
        } else {
            for i := 1; i < N; i++ {
                sum += L + i - 1
            }
        }
    }

    fmt.Println(sum)
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