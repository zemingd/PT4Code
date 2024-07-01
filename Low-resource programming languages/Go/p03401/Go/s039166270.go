package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n+2)
	for i := range as {
		switch i {
		case 0, n + 1:
			as[i] = 0
		default:
			fmt.Scan(&as[i])
		}
	}

	diffs := make([]int, n+1)
	sum := 0
	for i := range diffs {
		diffs[i] = abs(as[i] - as[i+1])
		sum += diffs[i]
	}

	for i := 0; i < n; i++ {
		ans := sum - diffs[i] - diffs[i+1] + abs(as[i]-as[i+2])
		fmt.Println(ans)
	}
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
