package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	heights := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&heights[i])
	}

	ret := 0
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			diff := j - i
			if diff == heights[i]+heights[j] {
				ret++
			}
		}
	}
	fmt.Println(ret)
}
