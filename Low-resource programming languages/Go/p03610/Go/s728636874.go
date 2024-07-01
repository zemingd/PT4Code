package main

import (
        "bytes"
        "fmt"
)

func main() {
        var s string
        fmt.Scan(&s)
        buf := bytes.NewBuffer([]byte{})
        for i := 0; i < len(s); i++ {
                if i%2 == 0 {
                        buf.Write([]byte{s[i]})
                }
        }
        fmt.Println(buf.String())
}