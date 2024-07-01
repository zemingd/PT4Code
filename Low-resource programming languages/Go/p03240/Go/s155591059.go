package main

import (
	"bufio"
	"fmt"
	"os"
)

var N int
var xs, ys []int
var hs []int

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d", &N)

	xs = make([]int, N)
	ys = make([]int, N)
	hs = make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d %d", &xs[i], &ys[i], &hs[i])
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			isConsistent := true
			shouldH := -1
			for i := 0; i < N; i++ {
				if hs[i] > 0 {
					H := hs[i] + abs(xs[i]-cx) + abs(ys[i]-cy)
					if shouldH < 0 {
						shouldH = H
					} else if H != shouldH {
						isConsistent = false
						break
					}
				}
			}

			if isConsistent {
				isAns := true
				for i := 0; i < N; i++ {
					if hs[i] != max(shouldH-abs(xs[i]-cx)-abs(ys[i]-cy), 0) {
						isAns = false
					}
				}
				if isAns {
					fmt.Println(cx, cy, shouldH)
					return
				}
			}
		}
	}
}

func abs(n int) int {
	if n >= 0 {
		return n
	}
	return -n
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
