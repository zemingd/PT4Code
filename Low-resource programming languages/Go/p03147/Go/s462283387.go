package main

import "fmt"

var N int
var h []int

func main() {
	fmt.Scanf("%d", &N)

	h = make([]int, N)
	for i := range h {
		fmt.Scanf("%d", &h[i])
	}

	fmt.Println(cnt(0, N-1))
}

func cnt(i, j int) int {
	// fmt.Printf("i,j=%d,%d %v\n", i, j, h)
	if i > j {
		return 0
	}
	if i == j {
		v := h[i]
		// h[i] = 0
		return v
	}

	p := i
	total := 0
	for k := i; k <= j; k++ {
		if h[k] == 0 {
			total += cnt(p, k-1)
			p = k + 1
		}
	}

	if p != i {
		return total + cnt(p, j)
	}

	for k := i; k <= j; k++ {
		h[k] -= 1
	}

	return cnt(i, j) + 1
}
