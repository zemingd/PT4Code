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

	left, right := 0, 1000000000
	for left <= right {
		mid := left + (right-left)/2
		suc, cx, cy := check(mid)
		if suc == 0 {
			fmt.Println(cx, cy, mid)
			return
		} else if suc < 0 {
			right = mid - 1
		} else if suc > 0 {
			left = mid + 1
		}
	}
	fmt.Println("err")
}

func check(H int) (int, int, int) {
	// checking if some center exists
	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			isAns := true
			for i := 0; i < N; i++ {
				h := height(H, cx, cy, xs[i], ys[i])
				if hs[i] != h {
					isAns = false
					break
				}
			}
			if isAns {
				return 0, cx, cy
			}
		}
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			isAbove := true
			for i := 0; i < N; i++ {
				h := height(H, cx, cy, xs[i], ys[i])
				if hs[i] > h {
					isAbove = false
					break
				}
			}
			if isAbove {
				return -1, -1, -1
			}
		}
	}
	return 1, -1, -1
}

func height(H, cx, cy int, x, y int) int {
	return max(H-abs(x-cx)-abs(y-cy), 0)
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
