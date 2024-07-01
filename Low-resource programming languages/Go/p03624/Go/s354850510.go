package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(s string) string {
        var memo [26]int

        for _, r := range s {
                memo[r-'a']++
        }
        for i := range memo {
                if memo[i] == 0 {
                        return string(rune(i + 'a'))
                }
        }
        return "None"
}

func main() {
        var fp *os.File = os.Stdin
        reader := bufio.NewReaderSize(fp, 1024)
        s := readLine(reader)
        fmt.Println(solution(s))
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