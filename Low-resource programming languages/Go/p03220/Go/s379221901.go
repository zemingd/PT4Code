package main

import "fmt"

func main() {
	var n int
	var t, a int
	fmt.Scan(&n, &t, &a)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	x := a - t
	diff := 1000000000
	var ans int
	for i, v := range h {
		if y := abs(x*500 + v*3); y < diff {
			diff = y
			ans = i
		}
	}
	fmt.Println(ans + 1)
}

func abs(x int) int {
	if x < 0 {
		return -x
	} else {
		return x
	}
}
