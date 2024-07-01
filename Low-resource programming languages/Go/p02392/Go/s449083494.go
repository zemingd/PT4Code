package main

import (
	"fmt"
)

func main(){
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if a < b{
		if b < c{
			fmt.Printf("Yes\n")
		}
	} else {
		fmt.Printf("No\n")
	}
}
