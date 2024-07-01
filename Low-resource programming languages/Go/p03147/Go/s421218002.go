package main

import (
    "bufio"
    "os"
    "strings"
    "strconv"
    "fmt"
)


var sc = bufio.NewScanner(os.Stdin)

func readLineToInt() []int {
    sc.Scan()
    line := strings.Split(sc.Text(), " ")
    var intLine []int
    length := len(line)
    for i := 0;i < length; i++ {
        n, _ := strconv.Atoi(line[i])
        intLine = append(intLine, n)
    }
    return intLine
}

func readInt() int {
    sc.Scan()
    str := sc.Text()
    n, _ := strconv.Atoi(str)
    return n
}

func main() {
    readInt()
    hList := readLineToInt()
    cnt := 0
    preValue := 0
    for _, value := range hList {
        if preValue < value {
            cnt += value - preValue
        }
        preValue = value
    }
    fmt.Println(cnt)
}
