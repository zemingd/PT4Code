package main

import (
	"fmt"
)

func main() {

	var n int
	fmt.Scanf("%d \n", n)
	r := n / 2
	if n % 2 != 0 {
		r += 1
	}
	fmt.Println(r)
}