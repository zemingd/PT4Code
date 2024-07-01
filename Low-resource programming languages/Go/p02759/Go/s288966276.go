package main

import "fmt"

func main() {
    var page int 
    fmt.Scan(&page)

    if page%2 == 0 { 
        fmt.Println(page / 2)
    } else {
        fmt.Println(page/2 + 1)
    }   
}