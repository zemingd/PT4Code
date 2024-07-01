package main

import (
        "fmt"
        "strings"
)

func main() {
        var s string
        fmt.Scan(&s)

        answer := "None"
        for _, c := range "abcdefghijklmnopqrstuvwxyz" {
                sc := string(c)
                if strings.Index(s, sc) < 0 {
                        answer = sc
                        break
                }
        }

        fmt.Println(answer)
}
