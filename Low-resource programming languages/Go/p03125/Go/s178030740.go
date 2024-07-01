package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Println(pm(a, b))
}

func pm(a, b int) int {
	if b%a == 0 {
		return a + b
	}
	return b - a
}
