package main

import "fmt"

func main() {
	var n int
	var h []int

	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var tmp int
		fmt.Scan(&tmp)
		h = append(h, tmp)
	}

	sum := h[0]
	max := h[0]
	for i := 0; i < n-1; i++ {
		if h[i+1] > max {
			sum += h[i+1] - max
			max = h[i+1]
		} else {
			max = h[i+1]
		}
	}
	fmt.Println(sum)
}
