package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	sum := a + b
	if a-b > sum {
		sum = a - b
	}
	if a*b > sum {
		sum = a * b
	}
	fmt.Println(sum)
}
