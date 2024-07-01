package main

import "fmt"

func main() {
    var a, b, x int
    fmt.Scan(&a, &b, &x)
                                           
    min := 0
    max := 0
    for i := a; i <= b; i++ {
        if i%x == 0 {
            min = i 
            break 
        }   
    }   
    for i := b; i >= a; i-- {
        if i%x == 0 {
            max = i 
            break 
        }   
    }   
    if max == 0 {
        fmt.Println(0)
        return
    }   
    fmt.Println((max-min)/x + 1)
}   
                                           
