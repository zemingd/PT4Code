package main

import "fmt"

var memo map[int]map[int]int

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a % b)
}
func main() {
	var n int
	fmt.Scan(&n)

	sum := 0
	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			for k := 1; k <= n; k++ {
				sum += gcd(gcd(i, j), k)
			}
		}
	}

	fmt.Println(sum)
}