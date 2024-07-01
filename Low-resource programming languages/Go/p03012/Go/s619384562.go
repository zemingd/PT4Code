package main

import (
	"fmt"
	"math"
)

func main() {
	var n, s1, s2 int
	var diff, ans float64
	fmt.Scan(&n)
	weight := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&weight[i])
	}
	for i := 0; i < n; i++ {
		s1 = 0
		s2 = 0
		for j := 0; j < n; j++ {
			if j <= i {
				s1 += weight[j]
			} else {
				s2 += weight[j]
			}
		}
		diff = math.Abs(float64(s1 - s2))
		if i == 0 {
			ans = diff
			continue
		}
		ans = math.Min(ans, diff)
	}
	fmt.Println(ans)
}
