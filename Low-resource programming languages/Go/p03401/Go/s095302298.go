package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	sr := make([]int, n)
	sum := 0
	for i := range ar {
		fmt.Scan(&ar[i])
		if i == 0 {
			sum += abs(ar[i])
		} else {
			sum += abs(ar[i-1] - ar[i])
		}
		sr[i] = sum
	}
	ans := 0
	if n == 2 {
		ans = abs(ar[1]) * 2
	} else {
		ans = abs(ar[1]) + (sr[n-1] - sr[1]) + abs(ar[n-1])
	}
	fmt.Println(ans)
	for i := 1; i < n-1; i++ {
		v := sr[i-1] + abs(ar[i-1]-ar[i+1])
		if i == n-2 {
			v += abs(ar[n-1])
		} else {
			v += (sr[n-1] - sr[i+1]) + abs(ar[n-1])
		}
		fmt.Println(v)
	}
	if n == 2 {
		fmt.Println(abs(ar[0]) * 2)
	} else {
		fmt.Println(sr[n-2] + abs(ar[n-2]))
	}
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
