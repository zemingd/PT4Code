package main

import (
	"fmt"
)

func main() {
	var r, d, x2000 int
	fmt.Scan(&r)
	fmt.Scan(&d)
	fmt.Scan(&x2000)

	x := make([]int, 11)
	x[0] = x2000

	for i := 1; i <= 10; i++ {
		x[i] = r*x[i-1] - d
		fmt.Println(x[i])
	}
}
