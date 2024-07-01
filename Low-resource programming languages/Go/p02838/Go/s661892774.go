package main

import "fmt"

const mod int = 1e9 + 7

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	ans := 0
	for i := uint(0); i <= 60; i++ {
		k := 0
		for j := 0; j < n; j++ {
			if (a[j]>>i)&1 == 0 {
				k++
			}
		}

		x := k * (n - k) * (1 << i) % mod
		ans = (ans + x) % mod
	}

	fmt.Println(ans)
}
