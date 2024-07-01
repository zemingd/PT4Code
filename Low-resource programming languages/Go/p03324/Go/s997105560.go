package main 

import (
        "fmt"
)

func main () {
        var d, n int
        fmt.Scan(&d, &n)
        if d == 0 {
                fmt.Println(n)
        }  else if  d == 1 {
                fmt.Println(100*n)
        }  else if  d == 2 {
                fmt.Println(10000*n)
        }
}

