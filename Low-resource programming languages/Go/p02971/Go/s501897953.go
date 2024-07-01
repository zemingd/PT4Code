package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)

func main() {
    var fp *os.File = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)
    N, _ := strconv.Atoi(readLine(reader))
    var arr []int = make([]int, N)
    var arr2 []int = make([]int, N)

    for i := 0; i < N; i++ {
        num, _ := strconv.Atoi(readLine(reader))
        arr[i] = num
        arr2[i] = num
    }

    sort.Sort(sort.Reverse(sort.IntSlice(arr2)))

    max := 0

    for i := 0; i < N; i++ {
        for k, v := range arr2 {
            if arr[i] != v || (k != N - 1 && arr[i] == arr2[k+1]) {
                max = v
                break
            }
        }

        fmt.Println(max)
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