package main

import (
    "fmt"
    "strings"
)

func main() {
    var str string
    fmt.Scan(&str)
    str = strings.Replace(str, "dream", "A", -1)
    str = strings.Replace(str, "erase", "B", -1)
    str = strings.Replace(str, "Aer", "", -1)
    str = strings.Replace(str, "Br", "", -1)
    str = strings.Replace(str, "A", "", -1)
    str = strings.Replace(str, "B", "", -1)
    if str == "" {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}