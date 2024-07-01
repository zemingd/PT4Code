package main

import "fmt"

func main(){

    var a, b, c int
    fmt.Scanln(&a, &b, &c)

    var s string

    s = "No"
    if a < b {
        if b < c {
            s = "Yes"
        }
    }

    fmt.Println(s)
}
