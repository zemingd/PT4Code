package main

import (
	"fmt"
)

func main() {
	var k int
	fmt.Scan(&k)
	var ans int
	for i := 1; i <= k; i++ {
		for j := 1; j <= k; j++ {
			for p := 1; p <= k; p++ {
				 gcdij := gcd(i, j)
				 gcdijk := gcd(gcdij, k)
				ans += gcdijk
			}
		}
	}
	fmt.Println(ans)
}

func gcd(a, b int) int{
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
