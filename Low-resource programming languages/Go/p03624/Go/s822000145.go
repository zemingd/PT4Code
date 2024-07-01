package main

import (
        "bufio"
        "fmt"
        "os"
        "strings"
)

func solution(s string) string {
        var memo [26]bool

        for _, r := range s {
                memo[r-'a'] = true
        }
        for i := range memo {
                if !memo[i] {
                        return string(i + 'a')
                }
        }
        return "None"
}

func main() {
        reader := bufio.NewReaderSize(os.Stdin, 10240*10240)
        str, _, _ := reader.ReadLine()
        fmt.Println(solution(strings.TrimRight(string(str), "\r\n")))
}