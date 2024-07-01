package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	hasSnack := make(map[int]bool, n)
	for i := 0; i < n; i++ {
		hasSnack[i] = false
	}
	for i := 0; i < k; i++ {
		var d int
		fmt.Scanf("%d", &d)
		for j := 0; j < d; j++ {
			var a int
			fmt.Scanf("%d", &a)
			hasSnack[a-1] = true
		}
	}
	answer := 0
	for i := 0; i < n; i++ {
		if !hasSnack[i] {
			answer++
		}
	}
	fmt.Println(answer)
}
