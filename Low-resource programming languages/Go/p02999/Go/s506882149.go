package main

import (
	"fmt"
)

func comp(x,a int)int {
	if (x < a) {
		return 0
	} 
	return 10
}

func main() {
	var x,a int
	fmt.Scan(&x,&a)
	
	fmt.Println(comp(x,a))
}