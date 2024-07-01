package main

import (
    "fmt"
    "os"
    "bufio"
    "sort"
    "strconv"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)
    N, _ := strconv.Atoi(readLine(reader))
    var nums []int
    var num int

    for i := 0; i < N; i++ {
        num, _ = strconv.Atoi(readLine(reader))
        nums = append(nums, num)
    }

    sort.Sort(sort.IntSlice(nums))

    var arr []int
    var tmp int = 0
    for _, v := range nums {
        if tmp != v {
            arr = append(arr, v)
            tmp = v
        }
    }
    fmt.Println(len(arr))
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