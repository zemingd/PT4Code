package main

import (
    "bufio"
    "fmt"
    "io"
    "math"
    "os"
    "sort"
    "strconv"
    "strings"
)

func stringToint(s string) int {
    i, _ := strconv.ParseInt(s, 10, 64)
    return int(i)
}

func noResult() {
    fmt.Println(0)
}

func main() {
    scanner := bufio.NewScanner(os.Stdin)
    line := make([]string, 0, 0)
    data := make([]int, 0, 0)

    for scanner.Scan() && scanner.Text() != "" {
        if scanner.Err() != nil && scanner.Err() == io.EOF {
            break
        }
        line = append(line, scanner.Text())
    }
    input := strings.Split(line[1], " ")
    for _, s := range input {
        data = append(data, stringToint(s))
    }
    //  sort.Slice(data, func(i, j int) bool { return data[i] < data[j] })
    sort.Ints(data)
    totalNum := 0

    if len(data)%2 != 0 {
        if data[0] != 0 {
            noResult()
            return
        } else {
            for i := 0; i < (len(data)-1)/2; i++ {
                if !(data[i*2+1] == int((i+1)*2) && data[i*2+2] == int((i+1)*2)) {
                    noResult()
                    return
                }
            }
            totalNum = (len(data) - 1) / 2
        }
    } else {
        for i := 0; i < len(data)/2; i++ {
            if !(data[i*2] == int((i+1)*2)-1 && data[i*2+1] == int((i+1)*2)-1) {
                noResult()
                return
            }
        }
        totalNum = len(data) / 2

    }
    fmt.Println(int(math.Pow(2, float64(totalNum))) % int(math.Pow(10, 9)+7))

}