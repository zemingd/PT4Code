package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
	}

	cnt := 0
	for i := 1; i < n-1; i++ {
		if (xs[i-1] < xs[i] && xs[i] < xs[i+1]) || (xs[i+1] < xs[i] && xs[i] < xs[i-1]) {
			cnt++
		}
	}
	fmt.Println(cnt)
}
