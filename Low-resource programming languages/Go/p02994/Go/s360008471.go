package main

import "fmt"

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	sum := 0
	for i := 0; i < n; i++ {
		sum += l + i
	}

	min := diff(sum-l, sum)
	ans := sum - l
	for i := 0; i < n; i++ {
		if v := diff(sum-(l+i), sum); v < min {
			min = v
			ans = sum - (l + i)
		}
	}
	fmt.Println(ans)
}
