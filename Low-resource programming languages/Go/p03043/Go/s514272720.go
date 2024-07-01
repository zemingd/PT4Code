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
    K, _ := strconv.Atoi(arr[1])
    var res []float64
    var n, cnt float64
    n = 1 / float64(N)

    for i:= 1; i <= N; i++ {
        cnt = 0
        j := i

        for j < K {
            j = j * 2
            cnt++
        }

        res = append(res, n * math.Pow(0.5, cnt))
    }

    var retval float64

    for _, v := range res {
        retval += v
    }

    fmt.Println(retval)
    //fmt.Printf("%.11f", retval)
    //fmt.Println()
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