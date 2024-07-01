package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n int
	fmt.Scan(&n)
	xs, ys, hs := make([]int, n), make([]int, n), make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i], &ys[i], &hs[i])
	}

	isFound := false
	for i := 0; i <= 100; i++ {
		if isFound {
			break
		}
		for j := 0; j <= 100; j++ {
			if isFound {
				break
			}
			H := hs[0] + abs(i-xs[0]) + abs(j-ys[0])
			for k := range xs {
				if newH := hs[k] + abs(i-xs[k]) + abs(j-ys[k]); H != newH || newH < 1 {
					break
				} else if k == len(xs)-1 {
					fmt.Println(i, j, H)
					isFound = true
					break
				}
			}
		}
	}
}
