package main

import (
	"fmt"
)

func main() {
	var r, D, x int
	fmt.Scan(&r, &D, &x)

	var nx int
	for i := 0; i < 10; i++ {
		nx = r*x - D
		fmt.Println(nx)
		x = nx
	}

}
