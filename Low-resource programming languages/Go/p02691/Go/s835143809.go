package main

import "fmt"

var N int
var a []int
var maxs []int

func main() {
	fmt.Scan(&N)
	a = make([]int, N)
	maxs = make([]int, N)

	for i := range a {
		fmt.Scan(&a[i])
	}
	maxs[N-1] = a[N-1]
	for i := len(a) - 2; i >= 0; i-- {
		maxs[i] = max(maxs[i+1], a[i])
	}

	cnt := 0
	for i := range a {
		Ai := a[i]
		if i+Ai >= N {
			break
		}
		for j := i + Ai; j <= i+Ai+maxs[i+Ai] && j < N; j++ {
			if a[i]+a[j] == j-i {
				cnt++
			}

		}
	}

	fmt.Println(cnt)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
