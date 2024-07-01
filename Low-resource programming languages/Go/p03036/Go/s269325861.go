package main

import (
	"fmt"
)

func main() {
	var r, D, x2000 int
	fmt.Scanln(&r, &D, &x2000)

	x := make([]int, 11)
	x[0] = x2000

	for i := 1; i <= 10; i++ {
		x[i] = r*x[i-1] - D
		fmt.Println(x[i])
	}
}
