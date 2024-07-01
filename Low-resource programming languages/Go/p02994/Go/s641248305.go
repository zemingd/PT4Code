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
    line := readLine(reader)
    arr := strings.Split(line, " ")
    N, _ := strconv.Atoi(arr[0])
    L, _ := strconv.Atoi(arr[1])
    var sum int = 0

    if L >= 0 {
        cnt := N + 1

        for i := L + 1; i <= cnt; i++ {
            sum += i
        }
    } else {
        abs_start := math.Abs(float64(L))
        abs_end   := math.Abs(float64(L + N - 1))

        // 30 -50
        if abs_start > abs_end {
            cnt := N - 1
            i := L

            for j := 0; j < cnt; j++ {
                sum += i
                i++
            }
        } else if abs_end > abs_start {
            cnt := N - 1

            for i := L; i < cnt; i++ {
                sum += i
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