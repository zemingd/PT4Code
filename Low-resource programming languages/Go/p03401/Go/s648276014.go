package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n+2)
	ar[0] = 0
	for i := 1; i <= n; i++ {
		fmt.Scan(&ar[i])
	}
	ar[n+1] = 0

	sr := make([]int, n+2)
	sr[0] = 0
	for i := 1; i < n+2; i++ {
		sr[i] = sr[i-1] + abs(ar[i-1]-ar[i])
	}
	sr[len(sr)-1] = sr[len(sr)-2] + abs(ar[len(ar)-2])

	for i := 1; i <= n; i++ {
		v := sr[i-1] + (sr[n+1] - sr[i+1]) + (abs(ar[i-1] - ar[i+1]))
		fmt.Println(v)
	}
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}
