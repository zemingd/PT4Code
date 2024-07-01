package main

import (
	"fmt"
)

func main() {
	var x, step int
	fmt.Scan(&x)
	for p := 100; p < x; step++ {
		p += p / 100
	}
	fmt.Println(step)
}
