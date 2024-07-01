package main

import (
	"fmt"
)

func main() {

	var r, D, x int
	fmt.Scanf("%d %d %d", &r, &D, &x)

	for i := 2000; i < 2010; i++ {
		x = r*x - D
		fmt.Println(x)
	}
}
