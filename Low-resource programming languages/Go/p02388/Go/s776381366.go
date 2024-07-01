package main

import (
	"fmt"
)

func main() {
	f := func(x int) {
		fmt.Println(x * x * x)
	}
	
	var x int
	fmt.Scan(&x)
	f(x)
}
