package main

import "fmt"

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var K, sum int
	fmt.Scan(&K)
	for i := 1; i <= K; i++ {
		for j := 1; j <= K; j++ {
			for k := 1; k <= K; k++ {
				sum += gcd(gcd(i, j), k)
			}
		}
	}
	fmt.Println(sum)
}
