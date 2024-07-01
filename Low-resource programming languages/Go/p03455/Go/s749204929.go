package main

import "fmt"

func isProductOdd(a int, b int) bool {
	return a*b%2 == 0
}

func main() {
	var a int
	var b int

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Println(isProductOdd(a, b))
}
