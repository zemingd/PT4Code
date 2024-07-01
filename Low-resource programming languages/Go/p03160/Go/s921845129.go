package main

import (
	"fmt"
)

// A - Frog 1
// https://atcoder.jp/contests/dp/tasks/dp_a

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n int
	var cost int
	var tmp1 int
	var tmp2 int
	var tmp3 int
	var currentPos int
	fmt.Scanf("%d", &n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &h[i])
	}
	for i := 1; i < n; {
		tmp1 = Abs(h[i] - h[currentPos])
		fmt.Println(currentPos)
		if currentPos >= n-2 {
			cost += tmp1
			currentPos = i
			i = i + 1
			continue
		}
		tmp2 = Abs(h[i+1] - h[i])
		tmp3 = Abs(h[i+1] - h[currentPos])
		if tmp1+tmp2 < tmp3 {
			cost += tmp1
			currentPos = i
			i = i + 1
			continue
		}
		if tmp1+tmp2 == tmp3 {
			if Abs(h[i]-h[i+2]) < Abs(h[i+1]-h[i+2]) {
				cost += tmp1
				currentPos = i
				i = i + 1
				continue
			}
			cost += tmp3
			currentPos = i + 1
			i = i + 2
			continue
		}
		cost += tmp3
		currentPos = i + 1
		i = i + 2
	}
	fmt.Printf("%d\n", cost)
}
