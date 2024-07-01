package main

import (
    "fmt"
)

func main() {
    var b []byte
    fmt.Scan(&b)
    switch b[0] {
    case 'A':
        fmt.Println("T")
    case 'T':
        fmt.Println("A")
    case 'C':
        fmt.Println("G")
    case 'G':
        fmt.Println("C")
    }   
}
