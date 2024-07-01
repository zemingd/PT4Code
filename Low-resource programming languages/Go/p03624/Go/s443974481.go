package main

import (
        "bufio"
        "fmt"
        "os"
        "strings"
)

func solution(s string) string {
        var memo [26]int

        for _, r := range s {
                memo[r-'a']++
        }
        for i := range memo {
                if memo[i] == 0 {
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