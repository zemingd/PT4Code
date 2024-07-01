package main

import (
	"fmt"
)

func main() {
	var r int
	var d int
	var x2000 int

	fmt.Scan(&r)
	fmt.Scan(&d)
	fmt.Scan(&x2000)

	x := x2000
	for i := 0; i < 10; i++ {
		x = r*x - d
		fmt.Println(x)
	}
}
