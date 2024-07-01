package main

import (
	"fmt"
)

func main() {
	var n, x, t int
	fmt.Scanf("%d %d %d", &n, &x, &t)
	times := n / x
	if n%x != 0 {
		times += 1
	}
	fmt.Println(times * t)
}