package main

import "fmt"

func abs(num int) int {
	if num >= 0 {
		return num
	} else {
		return -num
	}
}

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	var ans1, ans2 int
	ans1 = N - K*(N/K)
	ans2 = abs(N - K*((N/K)+1))
	if ans1 < ans2 {
		fmt.Println(ans1)
	} else {
		fmt.Println(ans2)
	}
}