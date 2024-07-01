package main

import "fmt"

func main() {
    var a string

    fmt.Scan(&a)

    fmt.Println("2017"+ a[4:])

}