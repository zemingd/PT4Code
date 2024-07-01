package main

import (
        "fmt"
)

func main() {
        var lc, rc int
        var s string
        fmt.Scanf("%s", &s)
        for i := 0; i < len(s); i++ {
                if i % 2 == 0 {
                        if int(s[i]) - int('0') != 0 {
                                lc++
                        } else {
                                rc++
                        }
                } else {
                        if int(s[i]) - int('0') != 0 {
                                rc++
                        } else {
                                lc++
                        }
                }
        }
        if lc > rc {
                fmt.Println(rc)
        } else {
                fmt.Println(lc)
        }
}
