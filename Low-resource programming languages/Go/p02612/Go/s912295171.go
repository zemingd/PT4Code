package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)
        if n%1000 != 0{
	        fmt.Println(1000-n%1000)
        } else {
                fmt.Println(0)
        }
}
