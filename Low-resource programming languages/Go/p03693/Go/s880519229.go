package main

import "fmt"

func main() {
    var a,b,c int

    fmt.Scan(&a, &b, &c)

    abc := a*100 + b*10 + c
    if (abc%4 == 0) {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }

    
}