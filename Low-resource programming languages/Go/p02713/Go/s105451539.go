package main

import "fmt"

func main() {
	var K int
	fmt.Scan(&K)

	ans := 0
	for i := 1; i <= K; i++ {
		for j := 1; j <= K; j++ {
			for k := 1; k <= K; k++ {
				ans += GCD(i, GCD(j, k))
			}
		}
	}

	fmt.Println(ans)
}

func GCD(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}
