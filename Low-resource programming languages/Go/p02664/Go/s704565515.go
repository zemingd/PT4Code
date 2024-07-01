package main

import (
        "bufio"
        "fmt"
        "os"
)

func solution(T string) string {
        memo := make(map[int]string, 3)
        maxC := -1 << 31
        // all D
        out := make([]byte, len(T))
        for i := 0; i < len(T); i++ {
                if T[i] == '?' {
                        out[i] = 'D'
                } else {
                        out[i] = T[i]
                }
        }
        c := count(string(out))
        memo[c] = string(out)
        maxC = max(maxC, c)

        // all P
        out = make([]byte, len(T))
        for i := 0; i < len(T); i++ {
                if T[i] == '?' {
                        out[i] = 'P'
                } else {
                        out[i] = T[i]
                }
        }
        c = count(string(out))
        memo[c] = string(out)
        maxC = max(maxC, c)
        // P or D
        out = make([]byte, len(T))
        for i := len(T) - 1; i >= 0; i-- {
                if T[i] == '?' {
                        if i == len(T)-1 {
                                out[i] = 'D'
                        } else if out[i+1] == 'P' {
                                out[i] = 'D'
                        } else {
                                out[i] = 'P'
                        }
                } else {
                        out[i] = T[i]
                }
        }

        c = count(string(out))
        memo[c] = string(out)
        maxC = max(maxC, c)

        return memo[maxC]
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func count(s string) int {
        c := 0
        for i := 0; i < len(s); i++ {
                if s[i] == 'D' {
                        c++
                }
        }

        for i := 0; i < len(s)-1; i++ {
                if s[i:i+2] == "PD" {
                        c++
                }
        }
        return c
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