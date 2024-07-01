package main

import "fmt"

func main() {
	var K, sum int
	fmt.Scan(&K)
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				sum += gcd(gcd(a, b), c)
			}
		}
	}
	fmt.Println(sum)
}
func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
