package main

import (
    "fmt"
)

func main() {
    var a int
    fmt.Scan(&a)
    if a % 2 == 1 {
		fmt.Println(a / 2 + 1)     
    }else{
    	fmt.Println(a / 2)
    }
}