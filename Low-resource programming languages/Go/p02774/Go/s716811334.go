package main

import (
	"fmt"
	"sort"
)

// 4 3
// 3 2 1 4
func main() {
	var N, K int
	fmt.Scanf("%d %d\n", &N, &K)

	A := make([]int, N)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scanf("%d", &a)
		A[i] = a
	}
	sort.Ints(A)
	ld, rd := 0 /*int(-1e18)*/, int(1e18)
	for rd-ld > 1 {
		mid := (ld + rd) / 2
		//fmt.Println(ld, rd, mid)
		cnt := 0
		for i := 0; i < N; i++ {
			l, r := -1, N
			for r-l > 1 {
				m := (l + r) / 2
				//fmt.Println(l, r, m)
				if A[i]*A[m] >= mid {
					r = m
				} else {
					l = m
				}
				//time.Sleep(time.Second * 2)
			}
			cnt += l + 1
			if i <= l {
				cnt -= 1
			}
		}
		cnt = cnt / 2
		//fmt.Println(cnt, ld, rd, mid)

		if cnt >= K {
			rd = mid
		} else {
			ld = mid
		}
		//time.Sleep(time.Second * 2)
	}
	fmt.Println(ld)
}
