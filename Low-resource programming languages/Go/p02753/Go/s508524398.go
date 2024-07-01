package main

import "fmt"

func main() {
    var company string
    var countA, countB int
    
    fmt.Scan(&company)
    
    for _, c := range company {
        if c == 'A' {
            countA++
        } else if c == 'B' {
            countB++
        } else {
            fmt.Println("algorithm Error")
        }
    }
    
    if countA < 3 && countB < 3 {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}