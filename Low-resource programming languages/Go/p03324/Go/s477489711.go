package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)
	for i := 0; i < d; i++ {
		n *= 100
	}
	fmt.Println(n)
}
