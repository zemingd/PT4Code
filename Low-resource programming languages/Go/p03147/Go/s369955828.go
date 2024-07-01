package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	res := 0
	for i := 0; i < n; i++ {
		if h[i] == 0 {
			continue
		}
		res += h[i]
		min := h[i]
		for j := i + 1; j < n; j++ {
			if min > h[j] {
				min = h[j]
			}
			h[j] -= min
		}
	}
	fmt.Println(res)
}
