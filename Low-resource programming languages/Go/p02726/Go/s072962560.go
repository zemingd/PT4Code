package main

import "fmt"

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)
	x--
	y--

	ds := make(map[int]int)
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			d := min(j-i, abs(x-i)+1+abs(j-y))
			ds[d]++
		}
	}

	for i := 1; i < n; i++ {
		fmt.Println(ds[i])
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
