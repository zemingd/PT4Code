package main

import (
    "fmt"
    "os"
    "bufio"
)

func ScanStringLines(size int) []string {
    scanner := bufio.NewScanner(os.Stdin)
    lines := make([]string, 0, size)
    for i := 0; i < size; i++ {
        scanner.Scan()
        lines = append(lines, scanner.Text())
    }
    return lines
}

func main() {
    ST := ScanStringLines(2) 
    acc := 0
    for i := 0; i < 3; i ++ {
        if ST[0][i] == ST[1][i] {
            acc += 1
        }
    }
    fmt.Println(acc)
}