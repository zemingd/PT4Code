package main

import (
	"fmt"
	"math"
)

func main() {
	n := scInt()
	k := 2
	hlist := ints(n)
	dp := make([]int, n)
	inf := 100000
	for i := 0; i < n; i++ {
		dp[i] = inf
	}
	dp[0] = 0
	for i := 0; i < n; i++ {
		for j := 1; j <= k; j++ {
			if i+j < n {
				diff := abs(hlist[i+j]-hlist[i]) + dp[i]
				dp[i+j] = min(diff, dp[i+j])
			}
		}
	}
	fmt.Println(dp[n-1])
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

func ints(n int) (slice []int) {
	slice = make([]int, n)
	for i := range slice {
		fmt.Scan(&slice[i])
	}
	return slice
}

func sum(slice []int) (sum int) {
	sum = 0
	for i := range slice {
		sum += slice[i]
	}
	return
}

func unique(strs []string) (unique []string) {
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

func powi(x, pow int) int {
	return int(math.Pow(float64(x), float64(pow)))
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
