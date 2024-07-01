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
		//tmp %= mod
	}
	for i := 0; i < n-1; i++ {
		tmp -= arr[i]
		//if tmp < 0 {
		//	tmp += mod
		//}
		sum += arr[i] * tmp
		sum %= mod
	}

	fmt.Println(sum)
}
