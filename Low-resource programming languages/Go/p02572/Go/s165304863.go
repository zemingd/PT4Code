package main

import (
	"fmt"
)

func main() {
	mod := 1000000007
	var n int
	fmt.Scanf("%d", &n)
	arr := make([]int, n, n)
	var sum int
	for i := 0; i < n-1; i++ {
		if arr[i] == 0 {
			fmt.Scanf("%d", &arr[i])
		}
		for j := i + 1; j < n; j++ {
			if arr[j] == 0 {
				fmt.Scanf("%d", &arr[j])
			}
			sum += arr[i] * arr[j] % mod
		}
	}
	fmt.Println(sum % mod)
}
