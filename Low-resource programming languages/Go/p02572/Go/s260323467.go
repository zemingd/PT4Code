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
		var num int
		fmt.Scanf("%d", &num)
		arr[i] = num % mod
	}

	var sum int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			sum += arr[i] * arr[j] % mod
		}
	}
	fmt.Println(sum % mod)
}
