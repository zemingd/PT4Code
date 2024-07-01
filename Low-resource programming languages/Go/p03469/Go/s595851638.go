package main

import "fmt"

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println("2018" + s[len("2017"):len(s)])
}