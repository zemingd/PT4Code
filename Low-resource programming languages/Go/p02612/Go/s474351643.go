package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := n % 1000
	if a == 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(1000-a)
}