package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	good := make([]bool, n)
	for i := range good {
		good[i] = true
	}

	var a, b int
	for i := 0; i < m; i++ {
		fmt.Scan(&a, &b)
		if h[a-1] < h[b-1] {
			good[a-1] = false
		} else if h[a-1] > h[b-1] {
			good[b-1] = false
		} else {
			good[a-1] = false
			good[b-1] = false
		}
	}

	count := 0
	for _, v := range good {
		if v {
			count++
		}
	}
	fmt.Println(count)
}
