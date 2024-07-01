package main

import (
	"fmt"
)

func main() {
	var a,b int
	fmt.Scan(&a,&b)
	x := a * b
	
	if a < b {
		tmp := a
		a = b
		b = tmp
	}
	
	r := a % b
	for r != 0 {
		a = b
		b = r
		r = a % b
	}
	
	fmt.Println(x / b)
}