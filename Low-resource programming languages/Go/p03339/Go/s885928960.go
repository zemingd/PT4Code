package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var line string
	fmt.Scan(&n, &line)
	cnt1, cnt2 := 0, 0
	es, ws := make([]int, n), make([]int, n)
	for i, s := range line {
		if string(s) == "E" {
			cnt1++
		}
		if string(s) == "W" {
			cnt2++
		}
		es[i] = cnt1
		ws[i] = cnt2
	}
	min := math.MaxInt32
	for i := 0; i < n; i++ {
		var wc, ec int
		if i - 1 > -1 {
			wc = ws[i - 1]
		}
		if i + 1 < n {
			ec = es[n - 1] - es[i + 1]
		}
		if wc + ec < min {
			min = wc + ec
		}
	}
	fmt.Println(min)
}