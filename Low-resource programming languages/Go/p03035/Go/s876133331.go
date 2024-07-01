package main

import (
    "fmt"
)

func main() {
    var A, B int 
    fmt.Scanln(&A, &B) 

    var ans int 
    if 6 <= A && A <= 12 {
        ans = B / 2 
    } else if 12 < A { 
        ans = B 
    }   
    fmt.Println(ans)
}