package main

import (
	"fmt"
)

func isPrimeNumber(n int) bool {
	if n == 2 {
		return true
	}
	for i := 2; i < n; i++ {
		if n % i == 0 {
			return false
		}
	}
	return true
}
func main() {
	var x int
	fmt.Scanf("%d", &x)
	for i := x + 1 ; ; i++ {
		if isPrimeNumber(i) {
			fmt.Printf("%d", i)
			break
		}
	}
}