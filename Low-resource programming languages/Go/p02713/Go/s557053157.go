package main

import "fmt"

func main() {
	var K int
	fmt.Scan(&K)

	ans := 0
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				ans += gcd(a, gcd(b, c))
			}
		}
	}
	fmt.Println(ans)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}