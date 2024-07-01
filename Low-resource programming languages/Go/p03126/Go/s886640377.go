package main

import (
	"fmt"
)

func main() {
	var n, m, k, like int
	fmt.Scan(&n, &m)

	list := make(map[int]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			fmt.Scan(&like)
			list[like] += 1
		}
	}

	count := 0
	for _, sumLike := range list {
		if sumLike == n {
			count++
		}
	}
	fmt.Println(count)
}
