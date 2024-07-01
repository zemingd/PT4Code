package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	max := a + b
	if a-b > max {
		max = a - b
	}
	if a*b > max {
		max = a * b
	}

	fmt.Println(max)
}