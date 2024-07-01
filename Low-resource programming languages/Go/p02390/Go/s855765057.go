package main

import "fmt"

func main() {
    var x, h, m int
    fmt.Scanln(&x)
    if x > 3600 {
    	h = x / 3600
    	x = x % 3600
    }
    if x > 60 {
    	m = x / 60
    	x = x % 60
    }
    fmt.Printf("%d:%d:%d",h,m,x)
}
