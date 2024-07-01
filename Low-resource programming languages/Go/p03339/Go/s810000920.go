package main

import (
	"fmt"
	"math"
	"strings"
)

func main() {
	var N int
	fmt.Scan(&N)

	var str string
	fmt.Scan(&str)
	chars := strings.Split(str, "")

	ws := make([]int, N)
	es := make([]int, N)

	wcnt := 0
	for i := 1; i < N; i++ {
		if chars[i-1] == "W" {
			wcnt++
		}
		ws[i] = wcnt
	}

	ecnt := 0
	for i := N - 2; i >= 0; i-- {
		if chars[i+1] == "E" {
			ecnt++
		}
		es[i] = ecnt
	}

	//	fmt.Println(ws)
	//  fmt.Println(es)

	ans := math.MaxInt64
	for i := 0; i < N; i++ {
		ans = min(ans, es[i]+ws[i])
	}
	fmt.Println(ans)
}

func min(ns ...int) int {
	ret := math.MaxInt64
	for _, n := range ns {
		if n < ret {
			ret = n
		}
	}
	return ret
}