package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := prime(n)
	var cnt int
	for _, v := range m {
		var s int
		for k := v; k > s; k -= s {
			cnt++
			s += 1
		}
	}
	fmt.Println(cnt)
}

func prime(a int) map[int]int {
	m := make(map[int]int)
	ok := true
	for ok {
		ok = false
		for i := 2; i <= sqrt(a); i++ {
			if a%i == 0 {
				a /= i
				m[i]++
				ok = true
				break
			}
		}
	}
	if a > 1 {
		m[a]++
	}
	return m
}

func sqrt(a int) int {
	return int(math.Sqrt(float64(a)))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
