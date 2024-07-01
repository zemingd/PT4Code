package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	attackMonstor(n)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func attackMonstor(n int) {
	monstors := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&monstors[i])
	}
	ans := gcd(monstors[1], monstors[0])
	for i := 0; i < n-1; i++ {
		m := gcd(monstors[i+1], monstors[i])
		ans = min(ans, m)
	}
	fmt.Println(ans)
}
