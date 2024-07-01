package main

import "fmt"

func main() {
	var n, t, a int
	fmt.Scan(&n, &t, &a)

	var hs []int
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		hs = append(hs, v)
	}

	min_i := 0
	min := diff(a, t, hs[min_i])
	for i, h := range hs {
		if d := diff(a, t, h); min > d {
			min = d
			min_i = i
		}
	}

	fmt.Println(min_i + 1)
}

func diff(a, t, h int) int {
	return abs(t*1000 - h*6 - a*1000)
}

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}
