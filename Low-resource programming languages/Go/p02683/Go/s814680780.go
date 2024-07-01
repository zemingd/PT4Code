package main

import (
	"fmt"
	"math"
)
// bit全探索

func main() {
	var n, m, x int
	fmt.Scan(&n, &m, &x)

	as := make([][]int, n)
	cs := make([]int, n)
	for i := range cs {
		fmt.Scan(&cs[i])
		as[i] = make([]int, m)
		for j := range as[i] {
			fmt.Scan(&as[i][j])
		}
	}

	inf := int(1e9)
	ans := inf
	for i  :=0; i < 1<<n; i++ {
		cost := 0
		d := make([]int, m)
		for j :=0; j < n; j++ {
			if i>>uint(j)&1 > 0 { // jビット目が立ってる?
				cost += cs[j]
				for k := 0; k < m; k++ {
					d[k] += as[j][k]

				}
			}
		}
		ok := true
		for j :=0; j< m; j++ {
			if d[j] < x {
				ok = false
			}
		}
		if ok {
			ans = min(ans, cost)
		}
	}
	if ans == inf {
		fmt.Println(-1)
		return
	}
	fmt.Println(ans)

}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
