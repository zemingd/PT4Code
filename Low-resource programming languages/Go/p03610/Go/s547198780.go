package main

import "fmt"

func main() {
    var s string
    fmt.Scanf("%s", &s)
    l := len(s)
    for i := 0; i < l; i += 2 {
        fmt.Printf("%c", s[i])
    }

}
