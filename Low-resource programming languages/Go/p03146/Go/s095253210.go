package main

import (
    "fmt"
)

func main() {
    var s int 
    fmt.Scan(&s)

    mem := map[int]bool{}
    mem[s] = true
    i := 1
    for {
        //fmt.Println(i, s)
        i++ 
        if s%2 == 0 { 
            s = s / 2 
        } else {
            s = 3*s + 1 
        }   
        if mem[s] == true {
            fmt.Println(i)
            break
        }   
        mem[s] = true
    }   
}
