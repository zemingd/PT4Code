package main

import (
	"fmt"
)


func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	var a, b int
	var array [100001]int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &a, &b)
		array[a] += b
	}

	cur := 0
	for i, v := range array {
		cur += v
		if cur >= K {
			fmt.Println(i)
			return
		}
	}
}
