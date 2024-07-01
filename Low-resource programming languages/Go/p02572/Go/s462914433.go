package main

import (
	"fmt"
)

func main() {
	mod := 1000000007
	var n int
	fmt.Scanf("%d", &n)
	arr := make([]int, n, n)
	b := make([]int, n+1, n+1)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &arr[i])
		b[i+1] = b[i] + arr[i]
	}

	var ans int
	for i := 0; i < n-1; i++ {
		sum := (b[n] - b[i+1]) % mod
		ans += arr[i] * sum
		ans %= mod
	}
	fmt.Println(ans)
}
