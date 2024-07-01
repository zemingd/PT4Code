package main

import "fmt"

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)
	as := make([]int, q)
	bs := make([]int, q)
	cs := make([]int, q)
	ds := make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scan(&as[i], &bs[i], &cs[i], &ds[i])
	}

	var dfs func(i int, nums []int) int
	dfs = func(i int, nums []int) int {
		if len(nums) == n {
			ss := 0
			for k := 0; k < q; k++ {
				s := score(
					nums[as[k]-1],
					nums[bs[k]-1],
					cs[k],
					ds[k],
				)
				ss += s
			}
			return ss
		}

		res := 0
		for j := i; j <= m; j++ {
			res = max(res, dfs(j, append(nums, j)))
		}
		return res
	}

	ans := 0
	for i := 1; i <= m; i++ {
		ans = max(ans, dfs(i, []int{}))
	}
	fmt.Println(ans)
}

func score(a, b, c, d int) int {
	if b-a == c {
		return d
	}
	return 0
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
