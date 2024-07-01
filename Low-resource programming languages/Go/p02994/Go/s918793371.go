package main

import "fmt"

const inf = 1 << 60

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	sumTaste := 0
	for i := 0; i < n; i++ {
		taste := i + l
		sumTaste += taste
	}

	minDiff := inf
	var ans int
	for i := 0; i < n; i++ {
		taste := i + l
		tmp := sumTaste - taste
		if abs(sumTaste-tmp) < minDiff {
			minDiff = abs(sumTaste - tmp)
			ans = tmp
		}
	}
	fmt.Println(ans)
}
