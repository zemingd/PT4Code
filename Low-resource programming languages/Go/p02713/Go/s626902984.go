package main

import (
	"fmt"
)

func gcd(a int, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var sum int = 0
	for a := 1; a <= K; a++ {
		for b := 1; b <= K; b++ {
			for c := 1; c <= K; c++ {
				sum = sum + gcd(gcd(a, b), c)
			}
		}
	}

	fmt.Println(sum)

}
