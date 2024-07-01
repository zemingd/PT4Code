package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	max := -9999999999999999
	p := a + b
	if p > max {
		max = p
	}

	m := a - b
	if m > max {
		max = m
	}

	ml := a * b
	if ml > max {
		max = ml
	}

	fmt.Println(max)
}
