package main

import "fmt"

func main() {
    var a int
    var b int
 //   var ans="No" 

    fmt.Scan(&a, &b)

   // ans := ""
    if (a*b%2 ==0) {
        fmt.Println("Even")
    } else {
        fmt.Println("Odd")
    }

    
}