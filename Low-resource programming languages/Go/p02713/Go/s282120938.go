package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var K int
	fmt.Scan(&K)
	sum := 0
	for i := 1; i <= K; i++ {
		for j := 1; j <= K; j++ {
			for l := 1; l <= K; l++ {
				sum += gcd(gcd(i, j), l)
			}
		}
	}
	fmt.Println(sum)
}