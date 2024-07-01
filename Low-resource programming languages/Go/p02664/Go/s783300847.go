package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(T string) string {
        out := make([]byte, len(T))
        out[0] = T[0]

        for i := 1; i < len(T); i++ {
                if T[i] == '?' {
                        if out[i-1] == 'D' {
                                out[i] = 'P'
                        } else {
                                out[i] = 'D'
                        }
                } else {
                        out[i] = T[i]
                }
        }
        return string(out)
}

func main() {
        var fp *os.File = os.Stdin
        reader := bufio.NewReaderSize(fp, 1024)
        T := readLine(reader)
        fmt.Println(solution(T))
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