package main

import (
	"fmt"
)

func max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

func dfs(a, as, bs, cs, ds []int, ans, n, m, q int) int {
	var ans1 int
	if len(a) == n {
		for i := 0; i < q; i++ {
			if a[bs[i]]-a[as[i]] == cs[i] {
				ans1 += ds[i]
			}
		}
	}
	ans = max(ans, ans1)

	a = append(a, a[len(a)-1])
	if len(a) > n {
		return ans
	}

	for a[len(a)-1] <= m {
		ans = dfs(a, as, bs, cs, ds, ans, n, m, q)
		a[len(a)-1]++
	}
	return ans
}

func main() {
	var n, m, q int
	fmt.Scanf("%d %d %d", &n, &m, &q)

	as := make([]int, q)
	bs := make([]int, q)
	cs := make([]int, q)
	ds := make([]int, q)
	for i := 0; i < q; i++ {
		var a, b, c, d int
		fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
		as[i] = a - 1
		bs[i] = b - 1
		cs[i] = c
		ds[i] = d
	}

	ans := 0
	a := []int{1}
	ans = dfs(a, as, bs, cs, ds, ans, n, m, q)
	fmt.Println(ans)
}
