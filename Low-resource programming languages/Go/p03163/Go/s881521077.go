package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	// inf := math.MaxInt64
	n, w := scInt2()
	wlist, vlist := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		wlist[i], vlist[i] = scInt2()
	}
	dp := make([][]int, n+1)
	for i := 0; i < n+1; i++ {
		dp[i] = make([]int, w+1)
	}

	for i := 0; i < n; i++ {
		for sumW := 0; sumW <= w; sumW++ {
			if sumW-wlist[i] >= 0 {
				nv := dp[i][sumW-wlist[i]] + vlist[i]
				dp[i+1][sumW] = max(dp[i+1][sumW], nv)
			}
			dp[i+1][sumW] = max(dp[i+1][sumW], dp[i][sumW])
		}
	}
	fmt.Println(dp[n][w])
}

func scStr() string {
	var s string
	fmt.Scan(&s)
	return s
}

func scInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func scInt2() (int, int) {
	var x, y int
	fmt.Scan(&x, &y)
	return x, y
}

func scInt3() (int, int, int) {
	var x, y, z int
	fmt.Scan(&x, &y, &z)
	return x, y, z
}

func scInts(n int) (slice []int) {
	slice = make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func hw(h int, w int, init int) [][]int {
	hw := make([][]int, h)
	for i := 0; i < h; i++ {
		hw[i] = make([]int, w)
		for j := 0; j < w; j++ {
			hw[i][j] = init
		}
	}
	return hw
}

func sum(slice []int) (sum int) {
	sum = 0
	for i := range slice {
		sum += slice[i]
	}
	return
}

func uniqueInts(ints []int) (unique []int) {
	m := map[int]bool{}
	for _, v := range ints {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}
	return unique
}

func uniqueStrs(strs []string) (unique []string) {
	m := map[string]bool{}
	for _, v := range strs {
		if !m[v] {
			m[v] = true
			unique = append(unique, v)
		}
	}
	return unique
}

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func minInts(ints []int) int {
	sort.Ints(ints)
	return ints[0]
}

func maxInts(ints []int) int {
	sort.Ints(ints)
	n := len(ints)
	return ints[n-1]
}

func powi(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}
