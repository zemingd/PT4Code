package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
    "sort"
)

func main() {
    var fp *os.File = os.Stdin
    reader := bufio.NewReaderSize(fp, 1024)

    N, _ := strconv.Atoi(readLine(reader))
    line := readLine(reader)
    arr := strings.Split(line, " ")
    var nums []int

    for _, v := range arr {
        num, _ := strconv.Atoi(v)
        nums = append(nums, num)
    }

    sort.Sort(sort.IntSlice(nums))
    before_num := 0.0

    for i := 0; i < N; i++ {
        if (before_num > 0) {
            before_num = (before_num + float64(nums[i])) / 2
        } else {
            before_num = float64(nums[i])
        }
    }

    fmt.Println(before_num)
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