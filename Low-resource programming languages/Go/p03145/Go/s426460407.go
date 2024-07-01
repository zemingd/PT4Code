package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	fmt.Println(tri(a, b, c))
}

func tri(a, b, c int) int {
	return a * b / 2
}
