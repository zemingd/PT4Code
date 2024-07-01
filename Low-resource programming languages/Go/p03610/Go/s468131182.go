package main

import "fmt"

func main() {
        var s string
        fmt.Scan(&s)

        i := 0
        answer := ""
        for i = 0; i < len(s); i = i + 2 {
                answer = answer + s[i:i+1]
        }

        fmt.Printf("%s\n", answer)
}