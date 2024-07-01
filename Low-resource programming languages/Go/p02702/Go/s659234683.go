package main

import (
    "fmt"
    "strconv"
)

func main() {
    var s string
    fmt.Scanf("%s", &s)

    var c int
    for i := 0; i < len(s); i++ {
        for j := i + 1; j < len(s); j++ {
            t, _ := strconv.Atoi(s[i:j])
            if t%2019 == 0 {
                c += 1
            }
        }
    }

    fmt.Printf("%d\n", c)
}
