package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	ans := 0
	for i := 1; i <= k; i++ {
		for j := 1; j <= k; j++ {
			for l := 1; l <= k; l++ {
				ans += gcd(i, gcd(j, l))
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