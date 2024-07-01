package main

import (
	"fmt"
)

var X int

func main() {
	fmt.Scanf("%d", &X)

	ans := 1
	for i := 2; i < X; i++ {
		f := i
		n := i
		for n*f <= X {
			n *= f
			ans = Max(ans, n)
		}
	}
	fmt.Println(ans)
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
