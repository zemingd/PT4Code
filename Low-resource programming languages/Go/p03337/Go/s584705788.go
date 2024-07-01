package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	add := a + b
	sub := a - b
	mul := a * b

	fmt.Println(max(add, sub, mul))
}

func max(args ...int) int {
	max := -100000000
	for _, v := range args {
		if max < v {
			max = v
		}
	}
	return max
}
