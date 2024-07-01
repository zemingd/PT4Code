package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	p := make([]int, n)
	for i, _ := range p {
		fmt.Scan(&p[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		if p[i] <= MinSlice(p[:i]) {
			ans++
		}
	}
	fmt.Println(ans)
}

func MinSlice(n []int) int {
	min := 1001001001
	for _, v := range n {
		min = Min(min, v)
	}
	return min
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}