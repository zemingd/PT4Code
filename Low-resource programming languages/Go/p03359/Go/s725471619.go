package main

import "fmt"

func main() {
    var m, d int
    fmt.Scan(&m, &d)
    if m > d  {
        m--
    } 
   fmt.Println(m)
}