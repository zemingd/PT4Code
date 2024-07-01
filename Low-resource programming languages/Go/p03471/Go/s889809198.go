package main

import "fmt"

func main() {
	var N, sum int
	fmt.Scan(&N, &sum)
	result := [3]int{-1, -1, -1}

BREAK_LABEL:
	for i := 0; i < N; i++ {
		for j := 0; j < N-i; j++ {
			if sum == 10000*i+5000*j+1000*(N-i-j) {
				result[0] = i
				result[1] = j
				result[2] = N - i - j
				break BREAK_LABEL
			}
		}
	}
	fmt.Printf("%d %d %d", result[0], result[1], result[2])
}
