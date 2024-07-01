package main

import (
	"fmt"
)

func main() {
	mod := 1000000007
	var n int
	fmt.Scanf("%d", &n)
	arr := make([]int, n, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &arr[i])
	}
	var sum int
	var tmp int
	for i := 0; i < n; i++ {
		tmp += arr[i]
	}
	for i := 0; i < n-1; i++ {
		tmp -= arr[i]
		sum += arr[i] * tmp % mod
	}

	fmt.Println(sum % mod)
}
