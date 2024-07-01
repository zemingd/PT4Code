package main

import "fmt"

const MOD = 1e9 + 7

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]uint64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	var sum uint64
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			sum = (sum + (a[i]^a[j])%MOD) % MOD
		}
	}
	fmt.Println(sum % MOD)
}
