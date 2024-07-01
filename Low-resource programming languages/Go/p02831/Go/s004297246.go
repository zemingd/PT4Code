package main

import (
	"fmt"
)

func gcd(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}
func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println((a * b) / gcd(a, b))

}
