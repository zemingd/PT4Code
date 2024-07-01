package main

import (
	"fmt"
)

func main() {
	var r, d, x0 int
	fmt.Scan(&r, &d, &x0)
	//
	x := x0
	for i := 0; i < 10; i++ {
		x = r*x - d
		fmt.Println(x)
	}
}
