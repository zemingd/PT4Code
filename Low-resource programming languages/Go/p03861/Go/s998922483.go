package main

import "fmt"

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	fmt.Println(between(a, b, x))
}

func between(a, b, x int) int {
	return b/x - (a-1)/x
}
