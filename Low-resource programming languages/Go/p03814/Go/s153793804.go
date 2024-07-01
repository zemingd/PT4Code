package main

import "fmt"

func main() {
        var s string
        fmt.Scan(&s)
        var findA bool
        var indexA, indexZ int
        for i := 0; i < len(s); i++ {
                if !findA && s[i] == 'A' {
                        indexA = i
                        findA = true
                }
                if findA && s[i] == 'Z' {
                        indexZ = i
                }
        }
        fmt.Printf("%d\n", indexZ-indexA+1)
}