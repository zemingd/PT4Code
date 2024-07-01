package main

import (
        "fmt"
)

func hasStr(S string, str string) bool {
        if len(str) <= len(S) {
                if S[len(S)-len(str):len(S)] == str {
                        return true
                }
        }
        return false
}

func main() {
        var S string
        fmt.Scan(&S)

        list := []string{"dream", "dreamer", "erase", "eraser"}
        for i := 0; i < len(list); i++ {
                for _, v := range list {
                        if hasStr(S, v) {
                                S = S[:len(S)-len(v)]
                        }
                }
        }
        if len(S) == 0 {
                fmt.Println("YES")
                return
        }
        fmt.Println("NO")
}
