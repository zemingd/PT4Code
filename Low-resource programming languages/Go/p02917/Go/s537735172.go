package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var B = make([]int, N-1)
	for i := range B {
		fmt.Scan(&B[i])
	}
	var res int
	for i := 1; i < N-1; i++ {
		if B[i] > B[i-1] {
			res += B[i-1]
		} else {
			res += B[i]
		}
	}
	res += B[0] + B[N-2]
	fmt.Println(res)
}
