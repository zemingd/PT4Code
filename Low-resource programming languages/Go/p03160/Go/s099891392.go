package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}
	c := make([]int, N)
	c[0] = 0
	c[1] = abs(h[1] - h[0])
	for i := 0; i < N-2; i++ {
		c[i+2] = c[i] + abs(h[i+2]-h[i])
		chmin(&c[i+2], c[i+1]+abs(h[i+2]-h[i+1]))
	}
	fmt.Println(c[N-1])
}

func abs(v int) int {
	if v < 0 {
		return -v
	}
	return v
}

func chmin(v1 *int, v2 int) {
	if *v1 > v2 {
		*v1 = v2
	}
}
