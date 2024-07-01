package main

import (
    "fmt"
    "strings"
)

func main() {
    a := ""
    fmt.Scan(&a)

    if strings.Compare(a, "111") == 0 {
        fmt.Println("3")
    } else if strings.Compare(a, "011") == 0 || strings.Compare(a, "101") == 0 || strings.Compare(a, "110") == 0 {
        fmt.Println("2")
    } else if strings.Compare(a, "001") == 0 || strings.Compare(a, "010") == 0 || strings.Compare(a, "001") == 0 {
        fmt.Println("1")
    } else if strings.Compare(a, "000") == 0 {
        fmt.Println("0")
    }

}