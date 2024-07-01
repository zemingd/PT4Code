// 全探索 しにくくない？ 約数の組を作っていく
// 1からインクリメントで割るのは間に合わないがa*b=N(a<b)なら√Nでいい
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	divs := enumDiv(N)
	sort.Ints(divs)
	ans := 10000000000000
	for _, d := range divs {
		tmp := max(d, N/d)
		keta := 0
		for ; tmp > 0; tmp /= 10 {
			keta++
		}
		ans = min(ans, keta)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func enumDiv(x int) (ret []int) {
	ret = []int{}
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			ret = append(ret, i)
			if i != 1 && i*i != x {
				ret = append(ret, x/i)
			}
		}
	}
	if len(ret) == 1 {
		ret = append(ret, x)
	}
	return
}
