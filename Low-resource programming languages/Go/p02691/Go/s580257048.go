package main

import (
	"fmt"
)

func main() {
	var n, h, count int
	fmt.Scan(&n)
	hs := []int{}
	for i := 0; i < n; i++ {
		fmt.Scan(&h)
		hs = append(hs, h)
	}
	for idx, val := range hs {
		if idx == n-1 {
			fmt.Println(count)
			return
		}
		for j := idx + 1; j < n; j++ {
			if j-idx == val+hs[j] {
				count++
			}
		}
	}
}
