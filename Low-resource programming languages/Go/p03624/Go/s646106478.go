package main

import (
        "fmt"
)

func main() {
        var s []byte
        fmt.Scan(&s)
        exists := make([]byte, 'z'-'a'+1)
        for _, v := range s {
                exists[v-'a']++
        }
        for k, v := range exists {
                if v == 0 {
                        fmt.Printf("%c\n", k+'a')
                        return
                }
        }
        fmt.Println("None")
}