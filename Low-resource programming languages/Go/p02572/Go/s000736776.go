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
	for i := 0; i < n-1; i++ {
		ai := arr[i]
		for j := i + 1; j < n; j++ {
			sum += ai * arr[j] % mod
		}
	}
	fmt.Println(sum % mod)
}
